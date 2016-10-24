# Q0: Why is this error being thrown?
There is no Pokemon model.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
It's looping through [Squirtle Charmander Bulbasaur Pikachu] in seeds.rb with a random level between 1-20. Their trainer variable is also nil.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It displays a button on the home page labeled "Throw a Pokeball". The capture_path(id: @pokemon) routes to the capture method in in the Pokemon controller with @pokemon id as an argument. The class is just the style for the button.

# Question 3: What would you name your own Pokemon?
bronchitis

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in current_trainer because we're passing in the trainer's id to redirect the page to.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
We return the error messages that Ruby gets from this method.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
