class User < ActiveRecord::Base
  has_secure_password 
  before_save :social_login?
  has_many :ingredients
  has_many :lists, :through => :ingredients
  has_many :comments
  
  validates_presence_of :name, :email
  validates :email, uniqueness: true

  def social_login?
    
    if uid
      password = "f@c3b00k"
    end
  end
end