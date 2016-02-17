require_relative 'todolist.rb'
# Creates a new todo list
my_todo = TodoList.new("Get busy with it!")
# Add four new items
my_todo.add_item("Finish English essay","School")
my_todo.add_item("Take quiz for biology","School")
my_todo.add_item("Talk to my boss about raise","Work")
my_todo.add_item("Finish Nanodegree","Self-Development")
# Print the list
my_todo.show
# Delete the first item
my_todo.delete_item("Finish English essay")
# Print the list
my_todo.show()
# Delete the second item
my_todo.delete_item("Take quiz for biology")
# Print the list
my_todo.show()
# Update the completion status of the first item to complete
my_todo.mark_complete("Talk to my boss about raise")
# Print the list
my_todo.show()
# Update the title of the list
my_todo.set_title("Aint no rest for the wicked")
# Print the list
my_todo.show()
my_todo.export_to_file
