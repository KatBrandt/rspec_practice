class Student
  attr_reader :name, :cookies
  #
  def initialize(name)
    @name = check_name(name)
    @cookies = []
  end

  def add_cookie(cookie)
    @cookies << cookie
  end

  def check_name(name)
    if name.is_a?(String)
      name
    else
      "Default Name Assigned"
    end
  end
end
