class Student

  attr_accessor :name, :cohort
  attr_reader

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end


# I can talk
  def talks
      p "I can talk"
  end

# I like ruby
  def speaks_fav_lang(language)
    return "I love #{language}"
  end

end
