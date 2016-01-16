class UserPolicy < ApplicationPolicy
	def index?
		user.super_admin?
	end

	def show?
		user.register_user? || user.staff_user? || user.admin? || user.super_admin?
	end


	def edit?
		user.register_user? || user.staff_user? || user.admin? || user.super_admin?
	end

	def update?
		user.register_user? || user.staff_user? || user.admin? || user.super_admin?
	end
end