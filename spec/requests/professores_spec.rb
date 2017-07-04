require 'rails_helper'

RSpec.describe "Professores", type: :request do
  describe "GET /professores" do
    it "works! (now write some real specs)" do
      get professores_path
      expect(response).to have_http_status(200)
    end
  end
end
