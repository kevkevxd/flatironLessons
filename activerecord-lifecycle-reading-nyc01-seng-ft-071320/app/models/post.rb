class Post < ActiveRecord::Base
<<<<<<< HEAD:activerecord-lifecycle-reading-nyc01-seng-ft-071320/app/models/post.rb

  belongs_to :author
  validate :is_title_case 

 before_validation :make_title_case
 before_save :email_author_about_post

  private

  def is_title_case
    if title.split.any?{|w|w[0].upcase != w[0]}
      errors.add(:title, "Title must be in title case")
    end
  end

  def email_author_about_post
  end


  def make_title_case
    self.title = self.title.titlecase
  end
=======
    belongs_to :category
>>>>>>> 25dfd77b0797546d93fcf897c98464a481f16423:app/models/post.rb
end
