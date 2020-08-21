class StaticPagesController < ApplicationController
    # skip_before_action :authenticate_user, only: %i[home]x
    before_action :authenticate_user!

    def home

    end
end
