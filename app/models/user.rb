class User < ActiveRecord::Base
<<<<<<< HEAD
	enum role: [:registered_user, :staff_user, :admin, :super_admin]

=======
	enum role: [:register_user, :staff_user, :admin, :super_admin]
>>>>>>> temp
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
end
