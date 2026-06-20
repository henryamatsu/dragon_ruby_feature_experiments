require "app/modules/state/game_objects/game_object"

class GameSession
  def initialize args
    self.add_PC(args.state)
  end

  def add_PC state
    pc = GameObjects::BaseGameObject.new
    puts("PC Initialized!")
  end
end
