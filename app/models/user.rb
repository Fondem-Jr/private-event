class User < ApplicationRecord
  has_many :events, foreign_key: :user_id
  has_and_belongs_to_many :attendances, join_table: 'events', class_name: 'Event'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
