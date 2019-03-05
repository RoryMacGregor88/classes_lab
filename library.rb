class Library

  attr_accessor :books

  def initialize(books)
    @books = [] << books
  end

  def details(title)
    if @books[:title] == title
      return @books
    end
  end

  def rental_details(title)
    if @books[:title] == title
      return @books[:rental_details]
    end
  end

  def add_book(title)
    @books.push( {
      title: title,
      rental_details: {
      student_name: "",
      date: ""
      }
    } )

  end

  def update_rental_details(title, student_name, date)
    for i in @books
      if i[:title] == title
        @book[:rental_details][:student_name] = student
        @books[:rental_details][:date] = date
      end
    end
  end

end
