#CLI Controller
class NycArtGalleries::CLI

	def call
		puts "- - - - - - - - - - - - - "
		puts "Best Art Galleries in NYC:"
		puts "- - - - - - - - - - - - - "
		list_neighborhood
		gallery_info
	end
	
	def list_neighborhood
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
		end
	end

	def gallery_info
		puts "Enter the number of the neighborhood you'd like to view galleries for."
		# puts " type 'list' to see all neighborhoods again"
		puts " type 'info' for more information on neighborhoods"
		# puts " type 'exit' to leave"
		input = gets.strip.downcase
		if input == "info"
			neighborhood_info
		elsif input == 1-9
			print_galleries(input)
		else
			puts "Invalid entry, please try again."
		end

		# input = gets.strip.to_i

		puts "What gallery would you like more information on?"

		gallery = @gallery = NycArtGalleries::Gallery.find(input.to_i)

		print_galleries(gallery)

		puts "Would you like to see another gallery? Enter Y or N"

		input = gets.strip.downcase
		if input == "y"
			gallery_info
		else 
			puts "Thanks! Enjoy your gallery visit!"
			exit
		end
	end

	def print_gallery(neighborhood)
		puts""
		puts"- - - - - - Galleries in #{gallery.neighborhood}- - - - - - - "
		puts""
		NycArtGalleries::Gallery.all[neighborhood].each do |gallery, index|
			puts "#{index}. #{gallery.name} - #{gallery.area}"
		end
	end


	def print_gallery(gallery)
		puts "- - - - - - #{gallery.name} - #{gallery.area}- - - - - - - "
		puts ""
		puts "		Type of Art: 					#{gallery.type_of_art}"
		puts "		Address:  						#{gallery.address}"
		puts "		Website: 							#{gallery.website_url}"
		puts "		Contact: 							#{gallery.contact}"
		puts "		Opening Hours: 				#{gallery.hours}"
		puts "- - - - - - - - About the Gallery - - - - - - - -"
		puts ""
		puts "#{gallery.about}"
		puts ""
	end





	# 		if input.to_i > 0
	# 			puts @gallery[input.to_i-1]
	# 		elsif input == "list"
	# 			list_neighborhood
	# 		elsif input == "info"
	# 			neighborhood_info
	# 		elsif input == "exit"
	# 			puts "Thanks! Enjoy your gallery visit!"
	# 		else
	# 			puts "Invalid entry, please try again."
	# 		end
	# 	end
	# end
					

	# 		case input 
	# 		when "1"
	# 			puts "Galleries in Chelsea"
	# 		when "2"
	# 			puts "Galleries in Brooklyn"
	# 		when "3"
	# 			puts "Galleries in Lower East Side"	
	# 		when "4"
	# 			puts "Galleries in Chinatown"
	# 		when "5"
	# 			puts "Galleries in Midtown"
	# 		when "6"
	# 			puts "Galleries in Soho, Tribeca, and the West Village"	
	# 		when "7"
	# 			puts "Galleries in Uptown"	
	# 		when "list"
	# 			list_neighborhood
	# 		when "info"
	# 			neighborhood_info
	# 		when "exit"
	# 			puts "Thanks! Enjoy your gallery visit!"
	# 		else
	# 			puts "Invalid entry, please try again."
	# 		end				
	# 	end
	# end

	def neighborhood_info 
		@info = NycArtGalleries::NeighborhoodInfo.all
	end
	
# end <why does program not run with this?

