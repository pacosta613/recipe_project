class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :list #recipe list.

  validates :content, presence: true
end