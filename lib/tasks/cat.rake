namespace :populate do
  desc 'populates the categories'
  task :cat => :environment do
    Article.find_each do |article|
      cat = Category.find_or_create_by_name(article.category)
      article.update_attributes(:category_id => cat.id)
    end
  end

  desc 'polulates tag table'
  task :tag => :environment do
    Article.find_each do |article|
      tag_strings = article.tags.split(", ")

      tag_strings.each do |one_tag|
        tag = Tag.find_or_create_by_name(one_tag)
        tag.articles << article
        tag.save
      end
    end
  end

end
