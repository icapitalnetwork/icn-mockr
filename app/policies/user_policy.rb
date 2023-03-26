class UserPolicy < ApplicationPolicy
  def update? = false
  def destroy? = false
  def edit? = false

  class Scope < Scope
    def resolve = scope.all
  end
end