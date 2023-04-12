require_relative 'lib/LinkedList'
require_relative 'lib/Node'


list = LinkedList.new
list.append(1)
list.append(2)
list.append(3)
list.prepend(0)

list.display
=begin
p list.head.value
p list.tail.value

p list.size

p list.at(2).value
=end
list.pop
list.display