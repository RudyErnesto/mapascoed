class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable

  has_many :locations
  has_many :hojaderecursos
  has_many :institucions
  has_many :funcionarios
  has_many :recursos
end
