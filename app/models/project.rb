class Project < ActiveRecord::Base
  attr_accessible :desc, :name, :state
end
