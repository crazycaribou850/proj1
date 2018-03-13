# Q0: Why is this error being thrown?
There is no Pokemon model. Hence when the index method of Home_controller tries to access the Pokemon.where call, it errors.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The Pokemon show up as they have been put into the database by the seeds.rb file. All these pokemon do not have a trainer.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
The line creates a button titled 'Throw a Pokeball', which sends a patch request to the page it is currently on, routed to the path in routes.rb with URI pattern 'capture'. It passes to the capture method of the PokemonController the parameter :id, which is the id of the random pokemon generated.

# Question 3: What would you name your own Pokemon?
Pokemonny the Pokemon. Um. 

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
