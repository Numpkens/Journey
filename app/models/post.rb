class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :thumbnail

  validates :title, presence: true, length: {maximum: 110, minimum: 10}
  validates :content, presence: true, length: {minimum: 20}

  def increment_view_count!
    increment!(:view_count)
  end
  def content
      self[:content]&.html_safe
    end
end
