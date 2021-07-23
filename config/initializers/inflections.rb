ActiveSupport::Inflector.inflections(:en) do |inflect|
   inflect.irregular 'book', 'books'
   inflect.irregular 'author', 'authors'
   inflect.irregular 'genre', 'genres'
   inflect.irregular 'publishing_company', 'publishing_companies'
end
