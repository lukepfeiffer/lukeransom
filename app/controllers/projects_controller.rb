class ProjectsController < ApplicationController
  def index
    @projects = Project.all
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

  def destroy
    Project.find_by(params[:id]).destroy
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
