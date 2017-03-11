functor
import
  Application
  System
define

  fun {MyAppend L1 L2}
    case L1
      of nil then L2
      [] H1|T1 then {FoldR H1|T1 MyAppend L2}
      else L1|L2 
    end
  end

  fun {MyReverse L}
    case L
      of nil then nil
      [] H|T then {MyAppend {MyReverse T} [H]}
    end
  end

  {System.show {MyReverse [1 2 3 4 5 6]}}
  {Application.exit 0}
end