module CurrentUserConcern
  extend ActiveSupport::Concern

  require 'ostruct'  # This line is necessary to use OpenStruct
def current_user
     super || guest_user
  end

def guest_user
    OpenStruct.new(name: "Guest User" , first_name: "Guest" , last_name: "User" , email: "guest@gmail.com")
end

end