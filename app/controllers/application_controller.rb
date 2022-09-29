class ApplicationController < ActionController::Base
    before_action :my_debug

    def my_debug
        pp "------------------------------------"
        pp session.to_h
    end
end
