class ExercisesController < ApplicationController

  def index
    @exercises= Exercises.all
  end

  def show
    @exercise = Exercise.find(params[:program_id])
  end

  def create
    @exercise = Exercise.create!(house_params)
  end

  def new
    @exercise = Exercise.new
  end

  def update
    @exercise = Exercise.find(params[:id])
    @exercise.update(exercise_params)
  end

  def destroy
    @exercise = Exercise.find(params[:id])
    @exercise.destroy
  end

  def edit
    @exercise = Exercise.find(params[:id])
  end


  private
  def exercise_params
    params.require(:exercise).permit(:name, :weight, :reps, :sets, :photo_url, :photo_url, :photo_url)
  end
end
