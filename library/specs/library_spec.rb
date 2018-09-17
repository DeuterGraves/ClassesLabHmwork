require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test

  def setup
    #create array here
    [
      {
        title: "I'll Never Get Out of this World Alive",
        author: "Steve Earle"
        rental_details: {
          student_name: "Maisie",
          date: "28/12/17"
        }
      },
      {
        title: "Born a Crime",
        author: "Trevor Noah"
        rental_details: {
          student_name: "Cynthia",
          date: "17/08/18"
        }
      },
      {
        title: "Car Sick: John Waters Hitchhikes Across America",
        author: "John Waters"
        rental_details: {
          student_name: "Jamie",
          date: "10/09/2018"
        }
      }
    ]
    # setup end
  end











#class end
end
