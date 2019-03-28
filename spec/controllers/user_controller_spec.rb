require 'rails_helper'
RSpec.configure do |config| 
    config.render_views = true 
end 
RSpec.describe UserController, type: :controller do
    context "gettting content" do
        it "get library" do
            get 'library',:format=> :json
            expect(response.status).to eq(200)
            expect((JSON.parse(response.body).keys & ["success","library"]).present?).to eq(true)
        end
    end
end
