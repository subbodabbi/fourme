class Website < ActiveRecord::Base

mount_uploader :avatar, AvatarUploader 

end
