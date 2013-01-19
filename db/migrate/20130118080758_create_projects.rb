class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :desc
      t.string :state

      t.timestamps
    end
  end
end
