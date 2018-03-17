class JobsController < ApplicationController


  def show
    @category = Category.find(params[:category_id])
    @job = Job.find(params[:id])
  end

  def new
    @category = Category.find(params[:category_id])
    @job = @category.jobs.new
  end

  def create
    @category = Category.find(params[:category_id])

    @job = @category.jobs.new(form_params)

    if @job.save
      redirect_to category_path(@category)
    else
      render "new"
    end

  end

  def form_params
    params.require(:job).permit(:title, :body)
  end

end
