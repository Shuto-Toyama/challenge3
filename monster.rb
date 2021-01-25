require "./character"

class Monster < Character
  def attack(brave)
    puts "#{@name}の攻撃！"
    damage = @offense - (brave.defense * 0.5)
    brave.hp -= damage
    brave.hp = 0 if brave.hp < 0
    puts "#{brave.name}に#{damage.floor}のダメージを与えた！"
  end
end
