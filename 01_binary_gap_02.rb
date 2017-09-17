# this one is slower
def solution(n)
  binaries = n.to_s(2).chars
  cycle = false
  counter = 0
  max = 0

  binaries.each do |i|
    if i == '0' && cycle
      counter += 1
    elsif i == '1'
      max = [counter, max].max
      cycle = true
      counter = 0
    end
  end

  max
end

n = 15
p '%04b' % n
p n.to_s(2)
p solution n