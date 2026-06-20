GameSession (this would be an object at the top level that represents a single session of the game, like a server running)

Input::Keyboard/Mouse

NPCBrain::(specific mobs, maybe an inherited structure)
WorldBrain::(specific systems, forest, weather)
PlayerBrain::(much less responsibility than other brains, but for the occasional automated behavior)

Actions::(action categories, combat, resource collection, picking up items)

Simulation::Time
Simulation::Physics

State::World
State::GameObject (player/npc/fixture)

Rendering::SpriteRenderer
UI::MainMenu

