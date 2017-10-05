class NycArtGalleries::NeighborhoodInfo

	def self.all #should return a list of all galleries 
		puts "VIEW ALL - Top 10 Galleries by area:"
		puts <<-DOC.gsub /^\s+/, ""
			---------------------------------------------
			1. The best Chelsea art galleries
			---------------------------------------------
			With all of the art galleries that have sprung up in recent years in Brooklyn and on the Lower East Side, the Chelsea art gallery scene isn’t quite the center of attention it used to be. Even so, it still has the largest number of galleries crammed into a single neighborhood, and it’s still home to the flagship spaces of art world’s biggest dealers—among them, Larry Gagosian, David Zwirner and Hauser & Wirth. As large as they are, however, they’re still just a few of the many Chelsea art galleries that keep gallery-goers hopping on Saturday afternoons.
			=============================================
		    DOC

		puts <<-DOC.gsub /^\s+/, ""
			---------------------------------------------
			2. The best Brooklyn art galleries
			---------------------------------------------
			When it comes to galleries showing contemporary art, no city can compete with New York for the number and variety of places—from the expansive white cubes of Chelsea and funky storefronts of the Lower East Side, to the soigné spaces of the Upper East Side and Midtown. But if seeing the very latest art is your thing, there’s no better place than the gallery scene in Brooklyn. It’s were most artists live and work after all, so the chances are good that a show there will feature works fresh from a nearby studio. Talk about locavore! Admittedly, galleries Brooklyn aren’t packed together like they are in Chelsea; instead, they’re spread out across the Borough of Kings’ hippest neighborhoods. To help you navigate the terrain, Time Out New York offers this guide to Brooklyn galleries from Bushwick and Bed-Stuy to Greenpoint and Red Hook.
			=============================================
		    DOC

		puts <<-DOC.gsub /^\s+/, ""
			---------------------------------------------
			3. The best Lower East Side art galleries
			---------------------------------------------
		  	Back in the day, Downtown was synonymous with artistic experimentation of all stripes, but while that may not be necessarily the case today, the spirit of those times can still be found in the art galleries of the Lower East Side. Situated in former mom-and-pop stores and upstairs lofts, these venues project a funky vibe that suits the work of emerging artists who are often being given their first shows. And the area has attracted the attention of Chelsea art galleries, who have either moved to the LES or opened branches there. If your looking for the latest in art, you can’t go wrong with a day of gallery hopping in the nabe. And to get you on your way, take a look at our guide of best art galleries on the Lower East Side.
		  	=============================================
		    DOC
		    
		puts "4. Chinatown"
		puts "5. Midtown"
		puts "6. Soho, Tribeca, and the West Village"
		puts "7. Uptown"
	end
end