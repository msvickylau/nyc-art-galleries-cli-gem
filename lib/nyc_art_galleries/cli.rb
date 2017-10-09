#CLI Controller
class NycArtGalleries::CLI

	def call
		puts "- - - - - - - - - - - - - "
		puts "Best Art Galleries in NYC:"
		puts "- - - - - - - - - - - - - "
		start
	end
	
	def start
		puts "Which neighborhood would you like to visit?"

		puts <<-DOC.gsub /^\s+/, ""
				1. Chelsea
		    2. Brooklyn
		    3. Lower East Side
		    4. Chinatown
		    5. Midtown
		    6. Soho, Tribeca, and the West Village
		    7. Uptown
		    DOC

		puts "Enter the number of the neighborhood you'd like to view galleries for."
		puts "Type 'info' for more information on neighborhoods"

		input = gets.strip.downcase

		case input
		when "info"
			@info = NycArtGalleries::NeighborhoodInfo.all
			start
		when  "1", "2", "3", "4", "5", "6", "7"
			print_galleries(input) #neighborhood with list of galleries in it.
		else
			puts ""
			puts "Sorry, invalid input, please try again..."
			start
		end

		puts ""
		puts "What gallery would you like more information on?"
		input = gets.strip.downcase
		#testing if this works
		gallery = NycArtGalleries::Gallery.find(input.strip.downcase)
		
		print_gallery #(gallery card)
		

		puts ""
		puts "Would you like to see another gallery? Enter Y or N"
		input = gets.strip.downcase
		if input == "y"
			gallery_info
		else 
			puts "Thanks! Enjoy your gallery visit!"
			exit
		end
	end

	def print_gallery(gallery)
			
			puts "working??? should print selected gallery's info"
		
		# puts "- - - - - - #{gallery.name} - #{gallery.area}- - - - - - - "
		# puts ""
		# puts "		Type of Art: 					#{gallery.type_of_art}"
		# puts "		Address:  						#{gallery.address}"
		# puts "		Website: 							#{gallery.website_url}"
		# puts "		Contact: 							#{gallery.contact}"
		# puts "		Opening Hours: 				#{gallery.hours}"
		# puts "- - - - - - - - About the Gallery - - - - - - - -"
		# puts ""
		# puts "#{gallery.about}"
		# puts ""
	end

		def print_galleries(neighborhood)
			puts "working? should print list of galleries in selected neighborhood."
			
		# puts""
		# puts"- - - - - - Galleries in #{gallery.neighborhood}- - - - - - - "
		# puts""
		# NycArtGalleries::Gallery.all[neighborhood-1,10].each.with do |gallery, index|
		# 	puts "#{index}. #{gallery.name} - #{gallery.area}"
		end
	
end 
