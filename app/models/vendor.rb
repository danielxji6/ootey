class Vendor < ActiveRecord::Base
  has_secure_password

  validates :full_name, :email, :password, presence: true, length: {maximum: 255}
	validates :username, length: {in: 6..50, message: "must be between 6 and 50 characters"}
	validates :password, length: { minimum: 3, message: "must be at least 3 characters" }
	validates :email, uniqueness: true

	validates :email, format: { with: /@/ }, length: { minimum: 6 }

end
