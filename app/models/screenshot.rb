# frozen_string_literal: true

# The Screenshot class represents the screenshot model
class Screenshot < ApplicationRecord
  belongs_to :locales
  belongs_to :versions
end
