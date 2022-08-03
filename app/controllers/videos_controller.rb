class VideosController < ApplicationController
    skip_before_action :verify_authenticity_token
    def showAll
        render json: Video.find(params[:id])
    end

    def addInfo
        render json: Video.create({"url":params[:url], "likeCount":params[:likeCount], "dislikeCount":params[:dislikeCount], "comments":params[:comments], "user_id":params[:user_id]})
    end

    def update
        u = Video.find(params[:id])
        u.url = params[:url]
        u.likeCount = params[:likeCount]
        u.dislikeCount = params[:dislikeCount]
        u.comments = params[:comments]
        u.user_id = params[:user_id]
        u.save
        render json: {"message":"updated"}
    end

    def destroy
        u = Video.find(params[:id])
        u.destroy
        render json: {"message":"destroyed"}
    end
end
