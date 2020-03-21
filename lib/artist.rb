class Artist

    attr_accessor :name, :songs
   
    def initialize(name)
        @name = name
        @songs = []
       
    end


    def add_song(song)
        
            @songs << song
            song.artist = self
         
    end

    def add_song_by_name(song_name)
        singer = Song.new(song_name)
        add_song(singer)
      end

    def self.song_count
    Song.all.count
    end
      

    def songs
        Song.all.select{|songs|songs.artist == self}
            end
  
    # def song_count
        
    # end

end