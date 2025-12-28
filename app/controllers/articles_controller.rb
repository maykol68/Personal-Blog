class ArticlesController < ApplicationController
    def index
        @Articles = Article.all
    end
end
