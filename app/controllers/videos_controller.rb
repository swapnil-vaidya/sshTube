class VideosController < ApplicationController
    skip_before_action :verify_authenticity_token
    def showAll
        render json: Video.all
    end

    def showVid
        render json: Video.find(params[:id])
    end

    def addInfo
        render json: Video.create({"url":params[:url], "likeCount":params[:likeCount], "dislikeCount":params[:dislikeCount], "comments":params[:comments], "user_id":params[:user_id],"title" = params[:title], "description" =params [:description]})
    end

    def update
        v = Video.find(params[:id])
        v.url = params[:url]
        v.likeCount = params[:likeCount]
        v.dislikeCount = params[:dislikeCount]
        v.comments = params[:comments]
        v.user_id = params[:user_id]
        v.title = params[:title]
        v.description =params [:description]

        v.save
        render json: {"message":"updated"}
    end

    def destroy
        v = Video.find(params[:id])
        v.destroy
        render json: {"message":"destroyed"}
    end
end
