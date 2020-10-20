class Api::V1::UserFavoriteExercisesController < ApplicationController

    skip_before_action :authorized, only: [:create, :delete]
    skip_before_action :authorized, only: %i[show index]

    def index 
        user_favorite_exercises = UserFavoriteExercise.all
        render json: user_favorite_exercises
    end

    def create 
        user_favorite_exercises = UserFavoriteExercise.create(user_favorite_exercises_params)
        if user_favorite_exercises.valid?
            render json: user_favorite_exercises 
        else
            render json: {error: 'failed to create blog'} 
        end
    end

    def update
        user_favorite_exercises = user_favorite_exercises_params
        if user_favorite_exercises.update(find_user_favorites_exercises)
          render json: user_favorite_exercises
        else
          render json: { error: 'Something went wrong' }
        end
      end

      private

    def find_user_favorites_exercises
        UserFavoriteExercises.find_by(id: params[:id])
    end

    def user_favorite_exercises_params
        params.require(:user_favorite_exercises).permit( :user_id, :exercise_id)
    end
end