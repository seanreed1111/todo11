class Woodchuck
attr_accessor :chuck_count
 
@@woodchuck_count = 0
WOODCHUCKS = []
 
def initialize
@chuck_count = 0
@@woodchuck_count += 1
WOODCHUCKS << self
end
 
def chuck_wood
@chuck_count += 1
end
 
def self.woodchuck_count
@@woodchuck_count
end
 
end
 
rand(1..100).times {Woodchuck.new}
 
Woodchuck::WOODCHUCKS.each do |woodchuck|
 rand(1..100).times {woodchuck.chuck_wood}
end
 
total = Woodchuck::WOODCHUCKS.inject(0) {|sum, woodchuck| sum + woodchuck.chuck_count}

puts Woodchuck::WOODCHUCKS.inspect
puts "total wood chucked is #{total}"