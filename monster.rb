require "./character"

class Monster < Character
  def attack(brave)
    damage = @offense - (brave.defense * 0.5)
    brave.hp -= damage
    brave.hp = 0 if brave.hp < 0
    target = brave
    attack_message(name)
    damage_message(target, damage)
  end
end
