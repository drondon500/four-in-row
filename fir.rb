require "colorize"
def start_game(a)
for i in 0..5
	b = []
	for j in 0..5
		b[j] = " "
	end
	a[i] = b
end
end
def paint_board(a)
  puts ""
  for i in 0..a.length-1
    if (i!=0)
      puts "----------"
    end
    for j in 0..a.length-1
      if (j!=0)
 print "|"
    end
      print a[i][j]
    end
    puts ""
  end
  puts ""
 end

def play(a,t)
 valid = false
valid2= false
i=5

while (!valid2)
	puts "choose your column"
	column=gets.chomp.to_i-1
	if (column>=0 && column <=5)
		valid2=true
	else
		puts "wrong position"
	end
end
while (!valid)
	if a[i][column]== " "
		a[i][column]= t
valid=true
else
	i=i-1
end
end
return a
end

def check_hori_victory(a,t)
for i in 0..a.length-1
  c = 0
  j = 0
  while (j < a.length)
if a[i][j] == t
  c= c + 1
  j= j + 1
  else
  j= a.length
  end
end
if c==4
  return true
    end
  end
return false
end

def check_vertical_victory(a,t)
  for i in 0..a.length-1
    c= 0
    j= 0
    while (j < a.length)
      if (a[j][i]==t)
        c=c+1
        j=j+1
      else
        j= a.length
      end
    end
    if c==4
      return true
    end
  end
  return false
end


def start(a,p1,p2)
  start_game(a)
  c=0
  l=p1
  paint_board(a)
  while (c<a.length**2)
    a=play(a,l)
    c=c+1
    paint_board(a)
    if (check_hori_victory(a,l) || check_vertical_victory(a,l))
      puts "the player #{l} won"
      c=a.length**2+1
    end
    if (l == p1)
      l=p2
    else
      l=p1
      end
    end
    if c==a.length**2
    puts "full board, the game have won"
  end
end
m=[]
  token1= "*"
  token2= "x"
  start(m,token1,token2)
