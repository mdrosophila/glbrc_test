class Relationship < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :application, class_name: "Application"
  validates_uniqueness_of :user_id, :scope => :application_id
end
