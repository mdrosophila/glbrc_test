class Application < ApplicationRecord
  has_many :application_relationships, class_name: "Relationship",
                                foreign_key: "application_id",
                                dependent: :destroy
  has_many :users, through: :application_relationships, source: :application_id
end
