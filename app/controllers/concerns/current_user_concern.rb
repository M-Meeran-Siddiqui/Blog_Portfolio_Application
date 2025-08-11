module CurrentUserConcern
  extend ActiveSupport::Concern

  require 'ostruct'  # This line is necessary to use OpenStruct
def current_user
     super || guest_user
  end

def guest_user
    # OpenStruct.new(name: "Guest User" , first_name: "Guest" , last_name: "User" , email: "guest@gmail.com")
    guest = GuestUser.new 
    guest.name = "Guest User"
    guest.first_name = "Guest"
    guest.last_name = "User"
    guest.email = "guest@example.com"
    guest
end

end