Spree::UsersController.class_eval do
	prepend_before_filter :load_object, :only => [:show, :edit, :update, :forget_credit_card]

	def forget_credit_card
		credit_card = @user.credit_cards.remembered.find(params[:credit_card_id])
		if credit_card && credit_card.toggle!(:remember)
			flash[:notice] = I18n.t('memorable_payment_profile.credit_card_forgotten')
		else
			flash[:error] = I18n.t('memorable_payment_profile.failed_to_forget_credit_card')
		end
		redirect_to :back
	end
end