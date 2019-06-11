class SchoolsController < ApplicationController
  before_action :set_school, only: [:show, :edit, :update, :destroy]

  def index
    @schools = School.all
  end


  def show
  end

  def new
    @school = School.new
  end

  def edit
  end


  def create
    @school = School.new(school_params)

    if @school.save
      redirect_to @school, notice: 'School is created'
    else
      render :new
    end
  end
 

  def destroy
    @school.destroy
    redirect_to root_path    
  end

  private

   def set_school
    @school = School.find(params[:id])
    end

  def school_params
    params.required(:school).permit(:name, :address, :principal, :capacity, :private_school)
  end
end
