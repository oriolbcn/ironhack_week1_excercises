class Furnace
  
  def on(logger)
    # does very complex stuff
    logger.call("turned on")
  end
  
  def off(logger)
    # does very complex stuff
    logger.call("turned off")
  end
  
end

furnace = Furnace.new
logger = ->(event) { puts "The furnace was #{event}! WARNING!" }
furnace.on(logger)
furnace.off(logger)