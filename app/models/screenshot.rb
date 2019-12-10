# frozen_string_literal: true

# The Screenshot class represents the screenshot model
class Screenshot < ApplicationRecord
  # Screenshot reference locale and version
  belongs_to :locale
  belongs_to :version
  has_one_attached :image

  validates :image, {
    presence: true
  }
end
