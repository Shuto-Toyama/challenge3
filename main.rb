require "./brave"
require "./monster"
require "./battle_controller"

brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)
monster = Monster.new(name: "アークデーモン", hp: 210, offense: 140, defense: 80)
#monster = Monster.new(name: "シドー", hp: 250, offense: 255, defense: 255)
battle_controller = Battle_Controller.new

battle_controller.start_message(monster)
while brave.hp > 0 && monster.hp > 0
  brave.attack(monster)
  monster.attack(brave) if monster.hp > 0
  battle_controller.battle_log(brave, monster)
end
battle_controller.end_message(brave, monster)
