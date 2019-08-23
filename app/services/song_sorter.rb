class SongSorter

  def initialize(songs, sort_param) 
    @songs = songs
    @sort = sort_param
  end

  def self.sorter
    if @sort == "random"
      @songs.to_a.suffle
    elsif sort == "reverse"
      @songs.to_a.reverse
    else
      @song
    end
  end
end