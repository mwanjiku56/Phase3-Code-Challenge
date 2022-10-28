class Author
  attr_reader :name


  def initialize(name)
    @name = name
  
  end
  def articles
    Article.all.filter{|article|article.author == @name}
  end
  def magazines
    articles.map{|article|article.magazine}.uniq
  end

end
