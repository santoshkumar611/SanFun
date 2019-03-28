require 'rails_helper'
RSpec.configure do |config| 
    config.render_views = true 
end
RSpec.describe PurchaseController, type: :controller do
    context "purchasing content" do
        it "success" do
            post 'purchase_content',params: {purchase_details: {movie:8,user:1,price:1,payment_option: "CREDIT",video_quality: "HD"}}
            expect(response.status).to eq(200)
            expect(JSON.parse(response.body)["message"]).to eq("added to your library")
            expect((JSON.parse(response.body).keys & ["success","message"]).present?).to eq(true)
        end

        it "failed already purchased" do
            post 'purchase_content',params: {purchase_details: {movie:1,user:1,price:1,payment_option: "CREDIT",video_quality: "HD"}}
            expect(response.status).to eq(422)
            expect(JSON.parse(response.body)["message"]).to eq("already purchased")
            expect((JSON.parse(response.body).keys & ["success","message"]).present?).to eq(true)
        end

        it "failed user or movie missing" do
            post 'purchase_content',params: {purchase_details: {user:1,price:1,payment_option: "CREDIT",video_quality: "HD"}}
            expect(response.status).to eq(422)
            expect(JSON.parse(response.body)["message"]).to eq("user or movie missing")
            expect((JSON.parse(response.body).keys & ["success","message"]).present?).to eq(true)
        end

        it "failed price not given" do
            post 'purchase_content',params: {purchase_details: {movie:5,user:1,payment_option: "CREDIT",video_quality: "HD"}}
            expect(response.status).to eq(422)
            expect((JSON.parse(response.body).keys & ["success","message"]).present?).to eq(true)
        end
    end
end
