require "app/game_session"

module Main
  def tick args
    unless args.state.initialized
      init(args)
    end
  end

  def init args
    # initialize state variables
    args.state.initialized = true
    
    puts("initialization message")
    create_game_session(args.state)
  end

  def create_game_session state
    state.game_session ||= GameSession.new(state)
    puts("Game session initialized!")
  end
end
