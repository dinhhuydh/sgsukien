class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :role

  has_one :profile, :dependent => :destroy
  after_save :create_profile

  ROLES = %w[admin holder collector user]

  ROLES.each do |role_name|
    define_method(role_name.to_s + '?') do
      role == role_name.to_s
    end
  end

end
