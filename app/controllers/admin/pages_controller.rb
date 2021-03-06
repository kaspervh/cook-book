class Admin::PagesController < ApplicationController

  def index
    @page = AdminPage.all
  end

  def new
    @admin_subjects = AdminSubject.all
    @page = AdminPage.new
  end

  def create
    @page = AdminPage.create(admin_page_params)
    @page.save
    redirect_to how_to_index_path
  end

  def show
    @page = AdminPage.find(params[:id])
    filler = @page
    @headder = filler.headder
    @content = filler.content
  end

  def edit
    @page = AdminPage.find(params[:id])
  end

  def update
    @page = AdminPage.find(params[:id])
    @page.update(admin_page_params)
    redirect_to admin_pages_path
  end

  def destroy
    @page = AdminPage.find(params[:id])
    @page.destroy
    redirect_to admin_pages_path
  end

  private

  def admin_page_params
    params.require(:admin_page).permit(:content,:headder,:admin_subject_id)
  end
end