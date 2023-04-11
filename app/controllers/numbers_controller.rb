class NumbersController < ApplicationController #how to define a new, custom class that's a child of the base ApplicationController

  def winners
    @zebra = Array.new

    5.times do
      giraffe = rand(1...100) #3 dots exclude the last digit from the range. 
      
      @zebra.push(giraffe)
    end

    render({ :template => "lottery_stuff/woohoo.html.erb"})
  end 

  def losers

    @losing_array = Array.new

    5.times do
      rand_nbrs = rand(1...100)
      @losing_array.push(rand_nbrs)
    end

    render({ :template => "lottery_stuff/boohoo.html.erb"})

  end

end
