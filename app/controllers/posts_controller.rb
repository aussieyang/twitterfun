require 'nokogiri'

class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  # Before running anything in this controller, check the dude is logged in
  before_filter :authorize
  # Only allow edit and destroy if owned by user
  before_filter :require_permission, only: [:edit, :destroy]

  # Index page '/'
  def home
    @users = User.all
    @posts = Post.all

    # grabbing API
    quotes = HTTParty.get('http://quotesondesign.com/wp-json/posts?filter[orderby]=rand&filter[posts_per_page]=10')
    chuck = HTTParty.get('http://api.icndb.com/jokes/random/10')
    catfacts = HTTParty.get('http://catfacts-api.appspot.com/api/facts?number=10')
    scrapyscrape = HTTParty.get('http://www.news.com.au/breaking-news.html')

    # making accessible by ERB under a variable
    @quote = quotes
    @chuck = chuck
      # eval() is bad practice
    @catfact = eval(catfacts)
    # make a variable for scraped data
    page = Nokogiri::HTML(scrapyscrape)
    # TBC scrape
    @news = page.css('#page').css('#content').css('#content-2').css('#newscorpau_query_posts-674').css('.group').css('.group-content').css('.item').css('.module').css('.module-content').css('.content-item').css('.story-block').css('.heading').css('a')
  end

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new

  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    @post.content = post_params[:content]
    @post.user_id = @current_user.id
    @post.save

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    # @post = Post.find(params[:id])
      @post.content = params[:content]
      @post.save

    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:content, :user_id)
    end

    # The method to check if user owns rights to edit/delete - redirect if no permission
    def require_permission
      if current_user != Post.find(params[:id]).user
        redirect_to '/posts'
      end
    end
end
