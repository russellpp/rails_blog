class ArticlesController < ApplicationController
    def index
        @articles = Article.all
        render :index
    end

    def show
        @article = Article.find(params[:id])
        render :show
    end

    def new
        @article = Article.new
        render :new
    end

    def create
        @article = Article.new(params.require(:article).permit(:name, :body))
        if @article.save
            redirect_to articles_path
        else
            render :new, status: :unprocessable_entity
        end
    end

end
