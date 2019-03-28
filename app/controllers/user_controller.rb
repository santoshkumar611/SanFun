class UserController < ApplicationController
    def library
        user = User.first
        @library = Purchase.where("user_id=? AND TIMEDIFF(NOW(),created_at) < ?",user.id,"48:00:00").order("TIMEDIFF(NOW(),created_at) DESC").includes(movies_season: :episodes)
    end
end
