class Tree
  attr_accessor :children, :node_name

  def initialize(name, children=[])
    @children = children
    @node_name = name
  end

  def visit_all(&block)
    visit &block
    children.each { |c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end 
end

ruby_tree = Tree.new("root",
            [Tree.new("Alice"),
             Tree.new("Bob")])

ruby_tree.visit_all { |node| puts "node name : #{node.node_name}"}


count = 1
(1..16).to_a.each do |x|
  print(x,' ')
  puts if (count % 4) == 0
  count += 1
end

(1..16).to_a.each_slice(4) { |x| puts x.join(' ')}

def grep(filename, phrase)
  File.open(filename) do |f|
  f.each { |line| puts "#{f.lineno}: #{line}" if line[phrase] }
end
