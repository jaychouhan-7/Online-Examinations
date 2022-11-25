class ExamsController < ApplicationController
  def index
    @exams = Exam.all
  end

  def show
    @exam = Exam.find(params[:id])
    @teacher = Teacher.find_by_id params[:teacher_id]
  end

  def new
    # binding.pry
    @exam = Exam.new
    @teacher = Teacher.find_by_id params[:teacher_id]
  end

  def create
    # binding.pry
    @teacher = Teacher.find_by_id params[:teacher_id]
    @exam = @teacher.exams.create(exam_params)

    if @exam.save
      redirect_to teacher_dashboard_path(@teacher.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # binding.pry
    @teacher = Teacher.find_by_id params[:teacher_id]
    @exam = @teacher.exams.find_by_id params[:id]
  end

  def update
    @teacher = Teacher.find_by_id params[:teacher_id]
    @exam = @teacher.exams.find_by_id params[:id]

    if @exam.update(exam_params)
      redirect_to teacher_exam_path(@teacher,@exam)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @exam = Exam.find(params[:id])
    @exam.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def exam_params
      params.require(:exam).permit(:exam_name, :exam_category, :description, :exam_duration, :maximum_marks, :number_of_questions)
    end
end
