require 'prime'
class Nextprimemodel

def initialize(n)
@res = nextp(n)
end

def nextp(k)
  if Prime.prime?(k)
k = k + 1
end
  while true
if Prime.prime?(k)
  break
else
  k = k + 1
    end
  end
return k
end




end
