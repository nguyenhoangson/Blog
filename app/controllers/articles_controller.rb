class ArticlesController < ApplicationController
  include ArticlesHelper

  # TODO: create a new article
  # POST /articles
  def create
    puts 'hello'
  end

  # TODO: get all the articles
  # GET /articles
  def index
    @articles = Article.all
    puts 'Hello'
  end

  # TODO: get article with specified id
  # GET /articles/:id
  def show
    # find article with specified id
    @article = Article.find_by(id: params[:id])

    if @article.nil? == false

      # generate partial _article.html.slim for article's body
      generate_article_layout(@article)

      # render show.html.slim
      render 'show'

    else
      render 'article_not_found'
    end

  end

  # TODO: view to create a new article
  # TODO: make text editor in the client view
  # GET /articles/new
  def new
    puts 'Hello'
  end

  # TODO: update article
  # PUT /articles/:id
 def update

  end

  # TODO: delete an article
  # DELETE /articles/:id
  def destroy

  end

end
