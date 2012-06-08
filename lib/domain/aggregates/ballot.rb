class Ballot
  attr_accessor :options
  
  def initialize
    @options =[]
    @vote = Hash.new
  end
  
  def <<(political_party)
    @options << political_party
  end

  def voting(voter, political_party)
    @vote[:voter] = political_party
  end
  
  def vote(voter)
    @vote[:voter]
  end
end