class User < ApplicationRecord
    has_many :job_applications 
    has_many :network_connections 
    has_secure_password
end
