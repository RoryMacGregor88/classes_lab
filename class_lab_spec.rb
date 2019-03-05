require('minitest/autorun')
require('minitest/rg')
require_relative('../class_lab')

class TestCodeclanStudent < Minitest::Test
  student = Student.new("Stephen", "E28")
  student = student
  def test_student_name
    student = Student.new("Stephen", "E28")
    assert_equal("Stephen", student.name)
  end
  def test_change_student_name
    student = Student.new("Stephen", "E28")
    student.name = "Rory"
    assert_equal("Rory", student.name)
  end
  def test_student_talk
    student = Student.new("Stephen", "E28")
    assert_equal("I can talk!", student.talk)
  end
  def test_student_favourite_language
    student = Student.new("Stephen", "E28")
    assert_equal("I love Ruby", student.say_favourite_language("Ruby"))
  end
end

class TestSportsTeam < Minitest::Test
  def test_get_team_name
    sports_team = Team.new("Wildcats", ["Bob", "Fred"], "Davey")
    assert_equal("Wildcats", sports_team.team_name)
  end

  def test_coach_new_name
    sports_team = Team.new("Wildcats", ["Bob", "Fred"], "Davey")
    sports_team.coach = "Jimmy"
    assert_equal("Jimmy", sports_team.coach)
  end

  def test_add_new_player
    sports_team = Team.new("Wildcats", ["Bob", "Fred"], "Davey")
    sports_team.add_new_player("Harold")
    assert_equal(3, sports_team.players.length)
  end
  def test_does_player_exist
    sports_team = Team.new("Wildcats", ["Bob", "Fred"], "Davey")
    assert_equal(false, sports_team.check_player("barbie"))
  end
  def test_won_or_lost
    sports_team = Team.new("Wildcats", ["Bob", "Fred"], "Davey")
    sports_team.outcome("win")
    assert_equal(3, sports_team.points)
  end
end

class TestLibrary < Minitest::Test
  def test_check_book
    library = Library.new(   {
        title: "Tropic of Cancer",
        rental_details: {
         student_name: "Jeff",
         date: "01/12/16"
        }
      })
    assert_equal({
        title: "Tropic of Cancer",
        rental_details: {
         student_name: "Jeff",
         date: "01/12/16"
        }
      }, library.details("Tropic of Cancer"))
  end
  def test_rental_details
    library = Library.new(   {
        title: "Tropic of Cancer",
        rental_details: {
         student_name: "Jeff",
         date: "01/12/16"
        }
      })
    assert_equal({
     student_name: "Jeff",
     date: "01/12/16"
    }, library.rental_details("Tropic of Cancer"))
  end

  def test_add_book
      library = Library.new( [ {
          title: "Tropic of Cancer",
          rental_details: {
           student_name: "Jeff",
           date: "01/12/16"
          }
        } ] )
      library.add_book("Pride and Prejudice")
      assert_equal(2,library.books.index)
  end

  def test_update_rental_details
    library = Library.new( [
      {title: "Tropic of Cancer",
        rental_details: {
         student_name: "Jeff",
         date: "01/12/16"
        }
       }
      ] )
      library.update_rental_details("Tropic of Cancer", "Jim", "02/04/2019")
      assert_equal({student_name: "Rimmer", date: "02/04/2019"}, rental_details("Backwards"))
  end

end
