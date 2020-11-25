class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :my_providers, dependent: :destroy
  has_many :moves, dependent: :destroy
  has_many :addresses, dependent: :destroy

end
