require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  context 'CRUD' do
        it 'devolver todos los articulos' do 
            FactoryBot.create(:article)
            FactoryBot.create(:article_2)

            get :index
                
            expect(response).to have_http_status(:ok)
        end
    end
end
