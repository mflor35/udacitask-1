class TodoList
    # methods and stuff go here
    attr_reader :title, :items
    #initilize todo list with a title and not items
    def initialize(list_title)
      @title = list_title
      @items = Array.new # Starts empty! No items yet!
    end

    # Creates a new Item and adds it to the array of Items
    def add_item(new_item)
      item = Item.new(new_item)
      item.id += 1
      @items.push(item)
    end

    def title
      @title
    end

    def items
      @items
    end

    def set_title(new_title)
      @title = new_title
    end

    def show

      puts @title
      for i in @title.length
        print "-"
      end
      @items.each do |item|
        puts "#{item.item_id} - #{item.get_description} %-3s Completed:#{item.completed?}"

      end
    end
end

class Item
    # methods and stuff go here
    attr_reader :description,:completed_status :id

    # Initilize item with a description
    def initialize(item_description)
      @description = item_description
      @completed_status = false
      @id = 1
    end

    def completed?
      @completed_status
    end

    def get_description
      @description
    end

    def item_id
      @id
    end
end
