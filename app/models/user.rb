class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :programs
  has_one :profile

  # after_initialize :create_profile
  #   def create_profile
  #     self.profile.create(username: "new user", age: "0", location: "somehwere", gender:"female", interests: "stuff")
  #   end

end
