require "./message"
require "./monster"
require "./brave"

class BattleController
  include Message

  def battle(brave, monster)
    start_message(monster)
    while brave.hp > 0 && monster.hp > 0
      brave.attack(monster)
      monster.attack(brave) if monster.hp > 0
      battle_log(brave, monster)
    end
    end_message(brave, monster)
  end
end
