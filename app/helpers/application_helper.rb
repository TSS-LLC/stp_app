module ApplicationHelper

	# Returns full title of page
	def full_title(page_title)
		base_title = "Sigma Theta Psi"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
	
end
