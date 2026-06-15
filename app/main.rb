module Main
  def tick args
    unless args.state.initialized
      init(args)
    end
  end

  def init args
    # initialize state variables
    args.state.initialized = true
    
    investigate_args(args)   
    create_character(args.outputs)
    
    puts("initialization message")
  end

  def investigate_args args
    # print all properties of args 
    # args.instance_variables.each do | prop |
    #   puts(prop)
    # end
       
    # - [Game] @audio
    # - [Game] @cvars
    # - [Game] @state
    # - [Game] @string
    # - [Game] @render_targets
    # - [Game] @grid
    # - [Game] @wizards
    # - [Game] @easing
    # - [Game] @events
    # - [Game] @inputs
    # - [Game] @render_targets_render_at
    # - [Game] @layout
    # - [Game] @all_tests
    # - [Game] @geometry
    # - [Game] @passes
    # - [Game] @temp_state
    # - [Game] @pixel_arrays
    # - [Game] @outputs
    # - [Game] @recording
    # - [Game] @runtime
    # - [Game] @render_target_sizes
    
    # pick a property to investigate
    prop = args.inputs.keyboard

    prop.instance_variables.each do | p |
      puts(p)
    end

  end

  def handle_input state
    
    
  end
end
