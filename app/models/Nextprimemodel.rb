class Nextprimemodel

def initialize(n)
@result = nextp(n)
end

def nextp(k)
  if isprime(k)
k = k + 1
end
  while true
if isprime(k)
  break
else
  k = k + 1
    end
  end
return k
end



def isprime(n)
 2.upto(n) do |i|
  if n%i == 0
 return false
  else
  return true
end
end
end
end
