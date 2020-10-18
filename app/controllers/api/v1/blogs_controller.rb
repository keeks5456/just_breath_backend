class Api::V1::BlogsController < ApplicationController

    skip_before_action :authorized, only: [:create, :delete]
    skip_before_action :authorized, only: %i[show index]
    
    def index 
        blogs = Blog.all 
        render json: blogs
    end

    def show 
        # blog = Blog.find_by(id: params[:id])
        blog = find_blog
        if blog
            render json: blog 
        else
            render json: { message: 'This Blog does not exist' }
        end
    end

    def create 
        blog = Blog.create(blog_params)
        if blog.valid?
            render json: blog 
        else
            render json: {error: 'failed to create blog'} 
        end
    end

    def update
        # blog = Blog.find_by(id: params[:id])
        blog = find_blog
        if blog.update(blog_params)
          render json: blog
        else
          render json: { error: 'Something went wrong' }
        end
      end

      def destroy
        # blog = Blog.find_by(id: params[:id])
        blog = find_blog
        user.destroy
        render json: { message: 'deleted' }
      end

    private

    def find_blog
        Blog.find_by(id: params[:id])
    end

    def blog_params
        params.require(:blog).permit(:img_url, :description)
    end

end
