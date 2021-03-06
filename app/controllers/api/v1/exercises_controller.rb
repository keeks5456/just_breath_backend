class Api::V1::ExercisesController < ApplicationController

    skip_before_action :authorized, only: [:create, :delete]
    skip_before_action :authorized, only: %i[show index]

    def index 
        exercises = Exercise.all 
        render json: exercises
    end

    def show 
        exercise = find_exercise
        render json: exercise
    end

    private

    def find_exercise
        Exercise.find_by(id: params[:id])
    end

    def exercise_params
        params.require(:exercise).permit(:img_url, :description, :title, :user_favorite_exercises)
    end
end
