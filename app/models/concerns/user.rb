class User < ActiveRecord::Base
    has_many :articles
    before_save { self.email = email.downcase }
    validates :username, presence: true, 
               uniqueness: {case_sensitive: false},
               length: 3..25
    validates :email, presence: true, 
               uniqueness: {case_sensitive: false},
               format: /@/
    has_secure_password           
end