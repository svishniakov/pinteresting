class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :pins, dependent: :destroy

  validates :name, uniqueness: true, presence: true, length: { minimum: 2, maximum: 25, too_long: "%{count} characters is the maximum allowed" }
end