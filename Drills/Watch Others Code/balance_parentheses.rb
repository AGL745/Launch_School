def balancer(string)
  return false unless string.count('(') == string.count(')')
  paren_count = 0
  failure = false

  string.split('').each do |char|
    paren_count += 1 if char == '('
    paren_count -= 1 if char == ')'

    if paren_count < 0
      failure = true
      break
    end
  end
  !failure
end

p balancer('hi')
p balancer('(hi')
p balancer('(hi)')
p balancer('(()))(')
