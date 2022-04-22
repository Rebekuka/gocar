class Car < ApplicationRecord
  has_many :booking, dependent: :destroy
end
