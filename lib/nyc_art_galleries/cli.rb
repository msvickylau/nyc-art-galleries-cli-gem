#CLI Controller
class NycArtGalleries::CLI
	def call
		puts "- - - - - - - - - - - - - "
		puts "Best Art Galleries in NYC:"
		puts "- - - - - - - - - - - - - "
		list_neighborhood
		gallery_info
		# see_all_galleries
		neighborhood_info
		thanks
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
		input = nil
		while input != "exit"
			puts "Enter the number of the neighborhood you'd like to view galleries for."
			puts "OR type 'list' to see all neighborhoods again, 'info' for more infomation on neighborhoods, or type 'exit':"
			input = gets.strip.downcase
			case input 
			when "1"
				puts "Galleries in Chelsea"
			when "2"
				puts "Galleries in Brooklyn"
			when "3"
				puts "Galleries in Lower East Side"	
			when "4"
				puts "Galleries in Chinatown"
			when "5"
				puts "Galleries in Midtown"
			when "6"
				puts "Galleries in Soho, Tribeca, and the West Village"	
			when "7"
				puts "Galleries in Uptown"	
			when "list"
				list_neighborhood
			when "info"
				neighborhood_info	
			else
				puts "Invalid entry, please try again."
			end				
		end
	end

	def neighborhood_info 
		@info = NycArtGalleries::NeighborhoodInfo.all
	end
	
	def thanks
		puts "Thanks! Enjoy your gallery visit!"
	end
# end

