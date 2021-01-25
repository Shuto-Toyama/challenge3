require "./character"

class Brave < Character
  def attack(monster)
    puts "#{@name}の攻撃！"
    damage = @offense - (monster.defense * 0.5)
    monster.hp -= damage
    monster.hp = 0 if monster.hp < 0
    puts "#{monster.name}に#{damage.floor}のダメージを与えた！"
  end
end
