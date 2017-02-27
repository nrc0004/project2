class ProgramsController < ApplicationController

  def index
    @programs = Programs.all
  end

  def show
    @program = Program.find(params[:id])
  end

  def create
    @program = Program.create!(program_params)

  end
  def new
    @program = Program.new
  end

  def edit
    @program = Program.find(params[:id])
  end

  def update
    @program = Program.find(params[:id])
    @program.update(program_params)
  end

  def destroy
    @program = Program.find(params[:id])
    @program.destroy

    redirect_to programs_path
  end

  private
  def program_params
    params.require(:program).permit(:name, :details)
  end
end
