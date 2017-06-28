class BoardDb < ActiveRecord::Base
    mount_uploader :avatar, AvatarUploader
    
    has_many :replies
end
