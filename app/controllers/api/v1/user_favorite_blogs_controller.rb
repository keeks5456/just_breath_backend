class Api::V1::UserFavoriteBlogsController < ApplicationController

    skip_before_action :authorized, only: [:create, :delete]
    skip_before_action :authorized, only: %i[show index]

    def index 
        user_favorite_blogs = UserFavoriteBlog.all
        render json: user_favorite_blogs
    end

    def update
        user_favorite_blogs = user_favorite_blogs
        if user_favorite_blogs.update(user_favorite_blogs_params)
          render json: user_favorite_blogs
        else
          render json: { error: 'Could not update likes' }
        end
    end

      private

    def find_user_favorites
        UserFavoriteBlogs.find_by(id: params[:id])
    end

    def user_favorite_blogs_params 
        params.require(:user_favorite_blogs).permit(:favorite, :user_id, :blog_id, )
    end
end