class Heart < ActiveRecord::Base
  #This allows us to use @heart.post in hearts_controller
  belongs_to :post

  #post_id is needed to create a heart record
  validates :post_id, presence: true
end
