class User < ActiveRecord::Base
    validates :username, presence: true, 
               uniqueness: {case_sensitive: false},
               length: 3..25
    validates :email, presence: true, 
               uniqueness: {case_sensitive: false},
               format: /@/
end