functor
import
  Application
  System
define
  T
  fun {Rozmowca Fun Interlokutor}
    local P S in
      P = {NewPort S}
      thread {ForAll S 
        proc {$ M}
          {System.show M}
          {Delay 500}
          {Send Interlokutor {Fun M}}
        end
      } T=unit end  
      P
    end
  end

  R1 = {Rozmowca fun {$ X} X+1 end R2} 
  R2 = {Rozmowca fun {$ X} X-1 end R1}
  
  {Send R1 0}
  {Wait T}
  {Application.exit 0}
end