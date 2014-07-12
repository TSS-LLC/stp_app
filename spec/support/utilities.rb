# utilities.rb
# functions from Application_Helper.rb for testing purposes

# Returns the full title on a per-page basis
	def full_title(page_title)
		base_title = "Sigma Theta Psi"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end