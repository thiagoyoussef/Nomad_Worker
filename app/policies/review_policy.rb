class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    record.user == current_user
  end

  def destroy?
    record.user == current_user
  end

  def update?
    record.user == current_user
  end
end
