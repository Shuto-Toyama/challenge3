require "./brave"
require "./monster"
require "./battle_controller"

brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)
monster = Monster.new(name: "アークデーモン", hp: 210, offense: 140, defense: 80)
#monster = Monster.new(name: "シドー", hp: 250, offense: 255, defense: 255)
battle_controller = BattleController.new

battle_controller.battle(brave, monster)
