require '../aa/pp'

class Person
  # include Me
  def aaa
    # puts sqrt(10)
  end
end

puts Math::PI
p1=Person.new
p1.extend(Me)
p1.sqrt(10)

def method(pr)
  puts pr.call(7)
end

oneproc=proc{|k|k*=3}
method(oneproc)




