class Rating < ActiveRecord::Base
  belongs_to :user 
  belongs_to :list #recipe list
end