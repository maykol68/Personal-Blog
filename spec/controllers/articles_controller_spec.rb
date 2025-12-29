require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  context 'CRUD' do
        it 'devolver todos los articulos' do 
            FactoryBot.create(:article)
            FactoryBot.create(:article_2)

            get :index
                
            expect(response).to have_http_status(:ok)
        end

        it 'devolver un articulo en especifico' do 
            article = FactoryBot.create(:article)

            get :show, params: {id: article.id}

            expect(response).to have_http_status(:ok)
        end
        it 'crear un articulo' do
            article = FactoryBot.attributes_for(:article)

            expect { post :create, params: { article: article } }.to change(Article, :count).by(1) 
            
            expect(response).to have_http_status(:found)
            expect(response).to redirect_to(articles_path)
            expect(flash[:notice]).to eq("article created")
        end

        it 'actualizar un articulo' do
              article = FactoryBot.create(:article)
              updated_attributes = { title: "Nuevo título", description: "Nueva descripción" }

                patch :update, params: { id: article, article: updated_attributes }

                article.reload

                expect(article.title).to eq("Nuevo título")
                expect(article.description).to eq("Nueva descripción")
                expect(response).to redirect_to(articles_path)
        end
        it 'eliminar un articulo' do 
            article = FactoryBot.create(:article)

            expect { delete :destroy, params: { id: article.id } }.to change(Article, :count).by(-1)

            expect(response).to have_http_status(:found)
            expect(response).to redirect_to(articles_path)
            expect(flash[:notice]).to eq("article deleted")
        end
    end
end
