class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :like_recipes, dependent: :destroy
  has_many :user, through: :like_recipes

  has_attached_file :image,
            :styles => { :medium => "300x300>", :thumb => "100x100>" },
            :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  # By default, every file uploaded will be named 'data'.
  # This renames the file to a timestamp, preventing name collisions.
  # This will also fix browser caching issues for updates
  def rename_image
    self.image.instance_write :file_name, "#{Time.now.to_i.to_s}.png"
  end

  before_post_process :rename_image
end
