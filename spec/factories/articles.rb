FactoryBot.define do
  factory :article do
    title { "Mi primera tarea" }
    description { "Descripción de prueba" }

    factory :aritcle_without_title do
      title { nil }
    end

    factory :article_without_description do
      description { nil }
    end

    factory :article_with_long_description do
      description { "a" * 100 }
    end

    factory :article_with_long_title do
      title { "a" * 50 }
    end
  end

  factory :article_2, class: 'Article' do
    title { "Mi segunda tarea" }
    description { "Descripción de prueba" }
  end
end

