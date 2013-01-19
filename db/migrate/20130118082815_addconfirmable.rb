class Addconfirmable < ActiveRecord::Migration

  
  def self.up 
    change_table(:users) do |t| 
      t.confirmable 
    end 
  end
  
end
