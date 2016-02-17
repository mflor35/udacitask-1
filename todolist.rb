class TodoList
    # methods and stuff go here
    attr_reader :title, :items
    #initilize todo list with a title and not items
    def initialize(list_title)
      @title = list_title
      @items = Array.new # Starts empty! No items yet!
    end

    # Creates a new Item and adds it to the array of Items
    def add_item(new_item,category,date_due)
      item = Item.new(new_item,category,date_due)
      @items.push(item)
    end

    # Displays the title of the list
    def title
      @title
    end

    # Returns the array containing items in the list
    def items
      @items
    end

    # new_title is set as the title of the todolist
    def set_title(new_title)
      @title = new_title
    end

    # Displays the items in the list in a nice way
    def show
      header = "|%2s|%-30s|%20s|%20s|%15s\n"%["ID","Task","Status","Category","Date Due"]

      puts @title
      puts "-"*(header.length - 1)

      puts header
      puts "-"*(header.length - 1)
      @items.each do |item|
        printf "|%2s|%-30s|%20s|%20s|%15s|\n","#{item.get_id}","#{item.get_description}","#{item.completed? ? "Done":"Not Done"}","#{item.get_category}","#{item.due_date}"
      end
      puts "-"*(header.length - 1)
      puts
    end

    # Finds the item that matches item_description
    def find_item(item_description)
      @items.each do |item|
        if item_description == item.get_description
          return item
        end
      end
    end

    # Deletes the item that matches the item_description
    def delete_item(item_description)
      @items.delete(find_item(item_description))
    end

    def mark_complete(item_description)
      if !find_item(item_description).completed?
        find_item(item_description).done
    end
  end

  def export_to_file
    filename = @title.downcase.tr(" ","_")
    puts "Exporting \"#{@title}\" to #{filename}.txt"
    export_file = File.new("#{filename}.txt","w+")
    header = "|%2s|%-30s|%20s|%20s|%15s|\n"%["ID","Task","Status","Category","Date Due"]
    export_file.write(@title+"\n")
    export_file.write("-"*(header.length - 1)+"\n")
    export_file.write(header)
    export_file.write("-"*(header.length - 1)+"\n")
    @items.each do |item|
      export_file.write("|%2s|%-30s|%20s|%20s|%15s|\n"%["#{item.get_id}","#{item.get_description}","#{item.completed? ? "Done":"Not Done"}","#{item.get_category}","#{item.due_date}"])
    end
    export_file.write("-"*(header.length - 1)+"\n")
    export_file.close
  end
end

class Item
    # methods and stuff go heres
    attr_reader :description,:id,:category
    attr_writer :completed_status,:due

    # Initilize item with a description
    def initialize(item_description,item_category,date_due)
      @description = item_description
      @completed_status = false
      @category = item_category
      @id = rand(100)
      @due = date_due
    end

    # resturns the completed_status
    def completed?
      @completed_status
    end

    # marks the items as completed
    def done
      @completed_status = true
    end

    def not_done
      @completed_status = false
    end

    def get_description
      @description
    end

    def get_category
      @category
    end

    def chage_category(new_category)
      @category = new_category
    end
    def due_date
      @due
    end

    def get_id
      @id
    end

end
