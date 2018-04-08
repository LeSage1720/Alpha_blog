class PagesController < ApplicationController
    def home
        @a = Article.all
    end
    
    def about
    end
end