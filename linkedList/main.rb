require_relative 'lib/LinkedList'
require_relative 'lib/Node'


list = LinkedList.new
list.append(1)
list.append(2)
list.append(3)
list.prepend(0)

list.display

#p list.head
#p list.tail

p list.at(2)