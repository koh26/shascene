class Comment < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :city
  belongs_to :user
  belongs_to :post

  validates :text, presence: true
end
