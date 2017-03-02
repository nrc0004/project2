class Program < ApplicationRecord
  has_many :exercises, dependent: :destroy
  belongs_to :user
end
