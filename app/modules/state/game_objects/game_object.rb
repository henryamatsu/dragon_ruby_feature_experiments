module GameObjects
  class BaseGameObject
    attr_reader :id

    def initialize
      puts("Game Object Initialized!")
      @id = self.get_id()
    end 

    private

    def get_id
      # we will have some sort of id generation logic in the future
      return 1
    end
  end
end
