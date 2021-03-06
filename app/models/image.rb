class Image < ActiveRecord::Base
  belongs_to :post, dependent: :destroy, counter_cache: true
  validates :url, presence: true
end