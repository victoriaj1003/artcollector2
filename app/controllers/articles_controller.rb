class ArticlesController < ApplicationController

	def index
		@articles = current_user.articles
	end

	def show
		@art = RijksmuseumClient.art
		@article = Article.find(params[:id])
		@nav_subtitle = Article.find(params[:id]).title
	end

	def new
		@article = Article.new
		@art = RijksmuseumClient.art
	end

	def edit
		@article = Article.find(params[:id])
		@nav_subtitle = Article.find(params[:id]).title
	end

	def create
		@article = Article.new(article_params)
		@art = RijksmuseumClient.art
		if @article.save
			redirect_to @article
		else
			render 'new'
		end
	end

	def update
		@article = Article.find(params[:id])

		if @article.update(article_params)
			redirect_to @article
		else
			render 'edit'
		end
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		redirect_to articles_path, alert: "story deleted"
	end


	private

	def article_params
		params.require(:article).permit(:title, :body).merge(user: current_user)
	end


end
