class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  # allow_browser versions: :modern

  require 'ostruct'  # This line is necessary to use OpenStruct

  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern

end
