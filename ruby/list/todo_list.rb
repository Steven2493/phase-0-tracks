class TodoList

    attr_reader :get_items

    def initialize(get_items)
        @get_items = get_items
    end

    def add_item(item1)
        @get_items << item1
    end

    def delete_item(item2)
        @get_items.delete(item2)
    end

    def get_item(item3)
        @get_items[item3]
    end
end