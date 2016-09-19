class Admin::SubjectsController < ApplicationController
  
  def index
    @admin_subject = AdminSubject.all
  end

  def new
    @admin_subject = AdminSubject.new
  end

  def create 
    @admin_subject = AdminSubject.create(subject_params)
    @admin_subject.save
    redirect_to how_to_index_path
  end

  def destroy
    @admin_subject = AdminSubject.find(params[:id])
    @admin_subject.destroy
    redirect_to home_index_path
  end

  def show
    @admin_subject = AdminSubject.find(params[:id])
    @admin_page = AdminPage.all
  end


  private
  def subject_params
    params.require(:admin_subject).permit!
  end

end