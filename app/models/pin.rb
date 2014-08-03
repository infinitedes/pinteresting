class Pin < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
:storage => :s3,
            :bucket => '******',
            :s3_credentials => {:access_key_id => ENV['S3_KEY'], :secret_access_key => ENV['S3_SECRET']}


end

