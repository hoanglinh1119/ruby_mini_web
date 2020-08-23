class StaticPagesController < ApplicationController
    Devise::RegistrationsController
    # skip_before_action :authenticate_user, only: %i[home]x
    before_action :authenticate_user!
    layout 'home'
    def home

    end
end
