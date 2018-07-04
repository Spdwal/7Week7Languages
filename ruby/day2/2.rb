class Tree
  attr_accessor :children, :node_name

  def initialize(tree={})
    @children = []
    @node_name = tree.keys.first

    tree[@node_name].each do |n, c|
      @children << Tree.new(n => c)
    end
  end

  def visit_all(&block)
    visit &block
    if @children != nil
      @children.each {|c| c.visit_all &block}
    end
  end

  def visit(&block)
    block.call self
  end

  def each(&block)

  end
end


ruby_tree = Tree.new('grandpad' => {'dad' => {'child1' => {}, 'child2' => {}},'uncle' => {'child3' => {}, 'child4' => {}}})


#print ruby_tree.children

ruby_tree.visit{|node| puts node.node_name}

ruby_tree.visit_all{|node| puts node.node_name}
