functor
import
  Application
  System
define
L1 = [1 4 7]
L2 = [2 5 8]
L3 = [3 6]

  fun {MergeTwoLists L1 L2}
    case L1
      of nil then L2
      [] L1h|L1t then
        case L2
          of nil then L1
          [] L2h|L2t then
            if L1h >= L2h then
              L2h|{MergeTwoLists L1 L2t}
            else
              L1h|{MergeTwoLists L2 L1t}
            end
        end
      end
  end

  fun {Merge L1 L2 L3}
    {MergeTwoLists L1 {MergeTwoLists L2 L3}}
  end

  {System.show {Merge L1 L2 L3}}
  {Application.exit 0}
end