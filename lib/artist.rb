require 'pry'

class Artist
	attr_accessor :name

	def initialize(name)
		@name = name
		@songs = []
	end

	def add_song(song)
		@songs << song
		song.artist = self
		#binding.pry
	end

	def songs
		@songs
	end

	def genres
		self.songs.collect do |song|
			song.genre
		end
	end

end