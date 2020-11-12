class SantaTool

  def generate_match(users)
    #users.combination(2).to_a
    users.shuffle.combination(2).uniq.to_a
  end

end

game = SantaTool.new
p game.generate_match(['Santa', 'Sophie', 'Claire'])