class TeachersController < ApplicationController

  def index
    @teachers = Teacher.all
  end

  def show
    # binding.pry
    @teacher = Teacher.find(params[:id])
  end

  # def new
  #   @teacher = Teacher.new
  # end

  # def create
  #   @teacher = Teacher.new(teacher_params)

  #   if @teacher.save
  #     redirect_to @teacher
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  # def edit
  #   @teacher = Teacher.find(params[:id])
  # end

  # def update
  #   @teacher = Teacher.find(params[:id])

  #   if @teacher.update(teacher_params)
  #     redirect_to @teacher
  #   else
  #     render :edit, status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   @teacher = Teacher.find(params[:id])
  #   @teacher.destroy

  #   redirect_to root_path, status: :see_other
  # end

  # private
  #   def teacher_params
  #     params.require(:teacher).permit(:name, :email, :phone, :password, :password_confirmation)
  #   end
    
end
