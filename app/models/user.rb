class User < ActiveRecord::Base
  ROLES = %w[admin moderator author banned]
  has_and_belongs_to_many :roles
  attr_accessible :role_ids
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  #devise :database_authenticatable, :registerable,
  #       :recoverable, :rememberable, :trackable, :validatable
  devise :database_authenticatable, :confirmable, :recoverable, :rememberable, :trackable, :validatable, :registerable
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  attr_accessible :role_ids, :as => :admin
  
  def role?(role)
    return !!self.roles.find_by_name(role.to_s.camelize)
  end
end
