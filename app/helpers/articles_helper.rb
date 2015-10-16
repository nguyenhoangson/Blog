require 'pathname'

module ArticlesHelper

  def generate_article_layout(article)

    # get the path of _article.html.slim file
    _file_path = File.expand_path("../../views/articles/_article.html.slim", __FILE__)

    _file = File.open(_file_path, 'r+')

    # delete all the old content
    _file.truncate(0)

    # write the new content which is article's body
    _file.write(article.body)

    _file.close
  end
end
