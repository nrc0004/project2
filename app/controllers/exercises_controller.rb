class ExercisesController < ApplicationController

  def index
    @exercises= Exercises.all   # AM: Model name needs to be singular
  end

  def show
    @exercise = Exercise.find(params[:id])
  end

  def new
    @program = Program.find(params[:program_id])
    @exercise = @program.exercises.new
  end

  def create
    @program = Program.find(params[:program_id])
    @exercise = @program.exercises.create!(exercise_params)

    redirect_to program_path(@program)
  end

  def edit
    @exercise = Exercise.find(params[:id])
    @program = Program.find(params[:program_id])

  end

  def update
    @exercise = Exercise.find(params[:id])
    @exercise.update(exercise_params)

    redirect_to program_exercise_url  # AM: Does this work? I think you need to pass in the specific exercise you want to redirect to.
  end

  def destroy
    @exercise = Exercise.find(params[:id])
    @program = @exercise.program
    @exercise.destroy

    redirect_to program_path @program
  end

  private
  def exercise_params
    params.require(:exercise).permit(:name, :weight, :reps, :sets, :photo_url, :photo_url, :photo_url)  # AM: Looks like you list `photo_url` three times here.
  end
end
