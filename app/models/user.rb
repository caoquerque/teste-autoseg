class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  attr_writer :login
  
  has_many :to_do_lists, dependent: :destroy
  has_many :favourite_list, through: :to_do_lists, dependent: :destroy
  has_many :tasks, through: :to_do_lists


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :authentication_keys => [:login]

end
