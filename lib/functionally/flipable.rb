module Functionally::Flipable
  def flip
    f = self.to_proc
    arity = (f.arity >= 0) ? f.arity : -(f.arity + 1)
    case arity
      when 0, 1 then f
      when 2    then lambda{|x,y| self[y,x] }
      when 3    then lambda{|x,y,z| self[y,x,z] }
      when 4    then lambda{|x,y,z,a| self[y,x,z,a] }
      else           lambda{|x, y, *arg| self[y, x, *arg]}
    end
  end
end
