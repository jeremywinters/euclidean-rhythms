require 'pp'

# implements a euclidean 
def euclidean(first, second)
  front = []
  
  until (first.empty? or second.empty?) do
    front << [first.shift, second.shift]
  end
  
  back = first + second
  
  unless (back.length <= 1)
    front, back = euclidean(front, back)
  end
  
  return [front, back]
end

def create_euclidean_rhythm(steps, pulses, total_steps, rotation)
  e = euclidean(
    Array.new(pulses, 1),
    Array.new(steps - pulses, 0)
  ).flatten
    
  # defaults to 1 if total_steps = 0
  factor = (total_steps / e.length).to_i + 1
  
  spread = e * factor

  spread.flatten[0..(total_steps - 1)].rotate(rotation)
end

euclid = create_euclidean_rhythm(
  ARGV[0].to_i,
  ARGV[1].to_i,
  ARGV[2].to_i,
  ARGV[3].to_i
)

PP.singleline_pp(euclid)
puts