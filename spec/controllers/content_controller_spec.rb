require 'rails_helper'
RSpec.configure do |config| 
    config.render_views = true 
  end 
RSpec.describe ContentController, type: :controller do
    context "gettting content" do
 		it "get movies" do
 			get 'movies'
 			expect(response.status).to eq(200)
 			expect((JSON.parse(response.body).keys & ["success","movies"]).present?).to eq(true)
         end
         it "get seasons" do
            get 'seasons',:format => :json
            expect(response.status).to eq(200)
            expect((JSON.parse(response.body).keys & ["success","content"]).present?).to eq(true)
        end
        it "get seasons and movies" do
            get 'movies_seasons',:format => :json
            expect(response.status).to eq(200)
            expect((JSON.parse(response.body).keys & ["success","content"]).present?).to eq(true)
        end
 	end
end
