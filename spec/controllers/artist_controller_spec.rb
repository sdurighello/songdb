require 'rails_helper'

describe ArtistsController do
  describe 'GET #show' do
    it 'assigns @artist and renders the show page' do
      # setup
      artist = Artist.create(name: 'artist')
      Song.create(name: 'song', artist_id: artist.id)
      # exercise
      get :show, id: artist.id
      # verify
      expect(assigns(:artist)).to eq(artist)
      expect(response).to render_template('show')
    end
  end


end
