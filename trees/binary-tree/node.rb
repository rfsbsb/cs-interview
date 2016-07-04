class Node
  def initialize(data)
    @data = data
  end

  def insert(value)
    if value < @data
      insert_left(value)
    elsif value > @data
      insert_right(value)
    end
    self
  end

  def include?(value)
    if value == @data
      self
    elsif value < @data and @left != nil
      @left.include?(value)
    elsif @right != nil
      @right.include?(value)
    end
  end

  def delete(value)
    #TODO
  end

  def inspect
    "{#{@data}::#{@left.inspect}|#{@right.inspect}}"
  end

  private
    def insert_left(value)
      if @left == nil
        @left = Node.new(value)
      else
        @left.insert(value)
      end
    end

    def insert_right(value)
      if @right == nil
        @right = Node.new(value)
      else
        @right.insert(value)
      end
    end
end