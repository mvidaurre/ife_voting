class VotesCounting
  def initialize
    @urnas = []
  end
  def <<(urna)
    @urnas << urna
  end
  def votes(political_party)
    @urnas.inject(0){|total, v| total + v.votes_counting(political_party)}
  end
end