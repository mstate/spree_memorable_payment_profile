Spree::Order.class_eval do
	# set_callback :updating_from_params, :before, :add_remember_as_permitted_attribute

	# private
	# def add_remember_as_permitted_attribute
	# 	Spree::PermittedAttributes.source_attributes.push(:remember) unless Spree::PermittedAttributes.source_attributes.include?(:remember)
	# end
end