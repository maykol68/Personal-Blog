class ArticlesController < ApplicationController
    before_action :authenticate_user!
    before_action :require_admin, only: [:new, :create, :update, :edit, :destroy]

    def index
        @Articles = Article.all
    end

    def show 
      article
    end

    def new
        @article  = Article.new
    end

    def create 
        @article  = Article.new(article_params)

        if @article.save
            redirect_to articles_path, notice: "article created"
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
        article
    end

    def update
        
        if article.update(article_params)
            redirect_to articles_path, notice: "article updated"
        else
            render :edit, status: unprocessable_entity
        end
    end

    def destroy
        
        if article.delete
            redirect_to articles_path, notice: "article deleted"
        else
            render :show, alert: "no se pudo eliminar el articulo"
        end
    end

    private

    def article
        @article = Article.find(params[:id])  
    end

    def article_params
        params.require(:article).permit(:title, :description)
    end

end
