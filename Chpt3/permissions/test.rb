class PermTest
  private # object A can only access its own such method. <- doesn't play with anyone but himself.
    def privmeth
      1
    end

  public
    def pubmeth
      privmeth
    end

  protected  # object A of this class or subclass can access object B's method if object B is of this class. <- those in the family play with each other, with younger siblings having access to older's information, but not the other way around
    def protmeth
      2
    end
end

p = PermTest.new
#p.privmeth # this fails as it is only available locally

puts p.pubmeth # works as leveraging public method

# puts p.protmeth # see a no method error

# we can also setup these kinds of classes by the following use of symbols

class PermTest2
  def privmeth
    1
  end
  def privmeth2
    # so private dude like seriously
  end
  def pubmeth
    privmeth
  end
  def privmeth
    2
  end

  private :privmeth, :privmeth2
  public :pubmeth
  protected :protmeth
end

