require 'sinatra'

get('/') do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
  erb(:home)
end




get('/rock') do
  @game_shapes = ["rock", "paper", "scissors"].sample
  @prog_shoot = @game_shapes
  @print_user = "We played rock!"
  @print_prog = "They played #{@prog_shoot}!"
  
  if @prog_shoot == "rock"
    @result = "We tied!"
  elsif @prog_shoot == "paper"
    @result = "We lost!"
  else 
    #@prog_shoot == "scissors"
    @result = "We won!"
  end
  
  erb(:rock)

end


get('/paper') do
  @game_shapes = ["rock", "paper", "scissors"].sample
  @prog_shoot = @game_shapes
  @print_user = "We played paper!"
  @print_prog = "They played #{@prog_shoot}!"
  
  if @prog_shoot == "paper"
    @result = "We tied!"
  elsif @prog_shoot == "scissors"
    @result = "We lost!"
  else 
    @result = "We won!"
  end
  
  erb(:paper)


end

=begin
get('/play_scissors') do
end
=end
