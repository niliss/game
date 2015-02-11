class Player < ActiveRecord::Base
	validates :email, :email_format => { :notice => "doesn't look like an email address" }
	validates :name, presence: true
	validates :username, presence: true, uniqueness: true, length: { in: 5..20 }
	validates :points , presence: true, length: { minimum: 0}
end
