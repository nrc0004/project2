class ProgramsController < ApplicationController

  def splash
  end

  def homepage
    @user= current_user
    @profile = @user.profile
  end

  def index
    
    @programs = Program.all
  end

  def show
    @program = Program.find(params[:id])
  end

  def create
    @program = current_user.programs.create!(program_params)
    redirect_to program_path(@program)
  end

  def new
    @program = Program.new
  end

  def edit
    @program = Program.find(params[:id])
  end

  def update
    @program = Program.find(params[:id])
    if @program.user == current_user
      @program.update(program_params)
    else
      flash[:alert] = "Only the author of the post can edit the program"
    end
      redirect_to program_path

  end

  def destroy
    @program = Program.find(params[:id])
    if @program.user == current_user
      @program.destroy
    else
      flash[:alert] = "Only the author of the post can delete"
    end

    redirect_to programs_path
  end

  private
  def program_params
    params.require(:program).permit(:name, :details)
  end
end
