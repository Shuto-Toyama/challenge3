require "./character"

class Brave < Character
  def attack(monster)
    attack_message(name)
    damage = @offense - (monster.defense * 0.5)
    monster.hp -= damage
    monster.hp = 0 if monster.hp < 0
    target = monster
    damage_message(target, damage)
  end
end
