class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :username
      t.string :project_title
      t.string :description
      t.timestamp
    end
  end
end
