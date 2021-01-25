class Battle_Controller < Character
  def start_message(monster)
    puts "#{monster.name}があらわれた！"
  end

  def battle_log(brave, monster)
    puts <<~TEXT
           *=*=*=*=*=*=*=*=*=*=*
           【#{brave.name}】HP: #{brave.hp.floor}
           【#{monster.name}】HP: #{monster.hp.floor}
           *=*=*=*=*=*=*=*=*=*=*
         TEXT
  end

  def end_message(brave, monster)
    if brave.hp > 0
      puts "#{monster.name}をやっつけた!"
    else
      puts "#{brave.name}はしんでしまった！"
    end
  end
end
