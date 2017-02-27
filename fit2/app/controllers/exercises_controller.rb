class ExercisesController < ApplicationController

  def index
    @exercises= Exercises.all
  end

  def show
    @exercise = Exercise.find(params[:program_id])
  end

  def create
    @program = Program.find(params[:program_id])
    @exercise = @program.exercises.create!(exercise_params)
    redirect_to program_path(@program)
  end

  def new
    @program = Program.find(params[:program_id])
    @exercise = @program.exercises.new
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
