class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "Category must be either Fiction or Non-fiction" }
  validates :content, length: { minimum: 100 }
end
