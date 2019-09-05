class TagsController < ApplicationController
    def index
        @tag = Tag.all
    end
    def show
        @tag = Tag.find(params[:id])
    end
    def destroy
        @tag = Tag.find(params[:id])
        @tag.destroy
        flash.notice = "tag '#{@tag.name}' Deleted!"

        redirect_to articles_path
    end
end
