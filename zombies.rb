class Zombie

# ======== Class =========

  @@horde = []
  @@plague_level = 10
  @@max_speed = 5
  @@max_strength = 8
  @@default_speed = 1
  @@default_strength = 3

  def self.all
    return @@horde
  end

  def self.new_day
    some_die_off
    spawn
    increase_plague_level
  end

  def self.some_die_off
    remove_from_horde = rand(10)
    remove_from_horde.times do
      dead_zombie = @@horde.sample
      @@horde.delete(dead_zombie)
    end
  end

  def self.spawn
    speed = rand(@@max_speed)
    strength = rand(@@max_strength)
    more_zombies = rand(@@plague_level)
    more_zombies.times do
      @@horde << Zombie.new(speed, strength)
      return @@horde.last
    end
  end

  def self.increase_plague_level
    @@plague_level += rand(2)
    return @@plague_level
  end

# ======== Instance =========

  def initialize(speed, strength)
    if speed > @@max_speed
      @speed = @@default_speed
    else
      @speed = speed
    end
    if strength > @@max_strength
      @strength = @@default_strength
    else
      @strength = strength
    end
  end

  def get_speed
    return @speed
  end

  def get_strength
    return @strength
  end

  def encounter
    if outrun_zombie == true && survive_attack == true
      # you survive
      puts "You lived!"
    elsif outrun_zombie == false && survive_attack == true
      # you become a zombie
      puts "You became a zombie!"
      Zombie.spawn
      # return @@horde.last
    else
      # you die
      puts "You died!"
    end
  end

  def outrun_zombie
    speed = rand(@@max_speed)
    zombie = @@horde.sample
    if speed > zombie.get_speed
      return true
    else
      return false
    end
  end

  def survive_attack
    strength = rand(@@max_strength)
    zombie = @@horde.sample
    if strength > zombie.get_strength
      return true
    else
      return false
    end
  end

end

# ======== Testing =========
zombie1 = Zombie.new(2, 3)
