class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  validates :email, presence: true, uniqueness: true
  validates :password, length: { in: 6..20 }
  has_many :todos, dependent: :destroy
  has_many :favourites, through: :todo, dependent: :destroy
  has_many :tasks, through: :todo


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatables

end
