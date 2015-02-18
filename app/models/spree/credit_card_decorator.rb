Spree::CreditCard.class_eval do
	scope :remembered, -> {where(remember: true)}
end