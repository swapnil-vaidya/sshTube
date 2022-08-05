class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token

    def showAll
        render json: User.all
    end

    def showUser
        render json: User.find(params[:id])
    end

    def addInfo
        render json: User.create({"profile_picture":params[:profile_picture], "username":params[:username], "liked_vid":params[:liked_vid], "watch_history":params[:watch_history], "save_vid":params[:save_vid], "upload_list":params[:upload_list],"password":params[:password]})
    end

    def update
        u = User.find(params[:id])
        u.profile_picture = params[:profile_picture]
        u.username = params[:username]
        u.liked_vid = params[:liked_vid]
        u.watch_history = params[:watch_history]
        u.save_vid = params[:save_vid]
        u.upload_list = params[:upload_list]
        u.password = params[:password]
        u.save
        render json: {"message":"updated"}
    end

    def destroy
        u = User.find(params[:id])
        u.destroy
        render json: {"message":"destroyed"}
    end
end
