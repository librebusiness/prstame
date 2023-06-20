class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable

  has_many :employees, class_name: "User", foreign_key: "admin_id"
  has_one :proof_of_address

  belongs_to :admin, class_name: "User", optional: true
  belongs_to :identification_document_type, optional: true
end
