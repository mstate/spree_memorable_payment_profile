Spree::CheckoutController.class_eval do 
	alias_method :orginal_before_payment, :before_payment

	def before_payment
		Spree::PermittedAttributes.source_attributes.push(:remember) unless Spree::PermittedAttributes.source_attributes.include?(:remember)
		orginal_before_payment
		@payment_sources = @payment_sources.remembered if @payment_sources.present?
	end
end