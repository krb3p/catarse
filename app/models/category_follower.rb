# frozen_string_literal: true

class CategoryFollower < ActiveRecord::Base
  belongs_to :category
  belongs_to :user

  validates :category, uniqueness: { scope: :user }
end
