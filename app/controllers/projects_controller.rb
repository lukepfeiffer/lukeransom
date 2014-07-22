class ProjectsController < ApplicationController
  def index
    @projects = Project.paginate(page: params[:page], per_page: 3)
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_path
    else
      redirect_to new_project_path
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update_attributes(project_params)
    redirect_to projects_path
  end

  def destroy
    Project.find(params[:id]).destroy
    redirect_to projects_path
  end

  def project_params
    params.require(:project).permit(
     :project_title,
     :description,
     :github_url,
     :project_url,
    )
  end
end
