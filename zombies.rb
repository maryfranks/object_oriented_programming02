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

  end

  def self.spawn
    speed = rand(@@max_speed)
    strength = rand(@@max_strength)
    more_zombies = rand(@@plague_level)
    more_zombies.times do |zombie|
      @@horde << Zombie.new(speed, strength)
      return @@horde.last
    end
  end

  def self.increase_plague_level

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

  def encounter

  end

  def outrun_zombie

  end

  def survive_attack

  end

end

# ======== Testing =========
zombie1 = Zombie.new(2, 3)
