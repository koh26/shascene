class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :city
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy

with_options presence: true do

  validates :image
  validates :title
  validates :about
  
end

def self.search(search)
  if search != ""
    Post.where('title LIKE(?)', "%#{search}%")
  else
    Post.all
  end
end

end