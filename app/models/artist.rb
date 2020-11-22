class Artist < ActiveRecord::Base
  has_many :songs

  def song_index
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
    render template: 'songs/index'
  end
  
end
