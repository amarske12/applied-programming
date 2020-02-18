require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }  

get "/" do
    @dice_one = rand(1..6)
    @dice_two = rand(1..6)
    @total = @dice_one + @dice_two
    view "dice"

end

#"<h1> Game of Craps </h1>
   # <p> Dice 1: #{dice_one} </p>
    #<p> Dice 2: #{dice_two} </p>
   # <p> The total: #{total} </p>"