functor
import
  Application
  System
define
  L = [a b c d 1 2 3 4]
  
  fun {LinReverse L1 L2}
    case L2
      of nil then L1
      [] L2h|L2t then {LinReverse L2h|L1 L2t}
    end  
  end

  fun {Reverse L}
    {LinReverse nil L}
  end

  {System.show L}
  {System.show {Reverse L}}
  {Application.exit 0}
end