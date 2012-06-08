class BallotFactory
  class << Ballot
    def new_ballot_for_president(*candidates)
      ballot = new
      candidates.each { |c| ballot << c.political_party}
      ballot
    end

    def new_ballot_for_senators(political_parties, candidates)
      new(common_attributes,optional_attributes)
    end

    private :new
  end
    
end

