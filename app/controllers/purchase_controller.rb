class PurchaseController < ApplicationController
    
    def purchase_content
        purchase_details = purchase_params
        if purchase_details[:user].present? && purchase_details[:movie].present?
           purchase = Purchase.where(user_id: purchase_details[:user],movies_season_id: purchase_details[:movie])
           if !purchase.empty?
            render json: {sucess:false, message: "already purchased"},status: 422
           else
            new_purchase = Purchase.new(purchase_details.except(:user,:movie))
            new_purchase.user_id = purchase_details[:user]
            new_purchase.movies_season_id =purchase_details[:movie]
            if new_purchase.save
                render json: {success: true,message: "added to your library"}
            else
                render json: {success:false, message: new_purchase.errors},status: 422
            end
           end
        else
         render json: {success:false, message: "user or movie missing"}, status: 422
        end
    end

    private
    def purchase_params
        params.require(:purchase_details).permit(:payment_option,:price,:video_quality,:movie,:user)
    end
end
