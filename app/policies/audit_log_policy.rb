class AuditLogPolicy < ApplicationPolicy
  def index?
    admin?
  end

  def confirm?
    record.user.id == user.id
  end

  private

  def admin?
    admin_types.include?(user.type)
  end
end
