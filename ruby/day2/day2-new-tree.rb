class Tree
  attr_accessor :children, :node_name
  def initialize(hash)
    @node_name = hash.keys.first
    @children = []
    hash[@node_name].each { |n, c| @children << Tree.new(n => c) }
  end

  def visit_all(&blcok)
    visit &blcok
    children.each { |c| c.visit_all(&blcok)}
  end

  def visit(&block)
    block.call self
  end
end


tree = Tree.new(:granpa => {:father => {:child1 => {}, :child2 => {}}, :uncle => {:child3 => {}}})

tree.visit_all { |n| puts n.node_name }
