functor
import
  Application
  System
define
  Stream = {NewCell nil}
  Msg1 = 'ping' Msg2 = 'pong'
  T1 T2

  fun {AppendMsg L1 L2}
    case L1
      of nil then
        case L2
          of nil then nil
          else L2|nil
        end
      [] H|T then H|{AppendMsg T L2}
    end
  end

  fun {LastMsg L}
    case L
      of nil then nil
      [] H|T then
        if T == nil then H
        else {LastMsg T} end
    end
  end

  proc {Pong Id}
    if {LastMsg @Stream} == Msg1 then
      Stream := {AppendMsg @Stream Msg2}
      {System.show Id#Msg2}
    else skip end
    {Delay 1000}
    {Pong Id}
  end

  proc {Ping Id}
    if {LastMsg @Stream} == Msg2 then
      Stream := {AppendMsg @Stream Msg1}
      {System.show Id#Msg1}
    else skip end
    {Delay 1000}
    {Ping Id}
  end

  proc {Game Id1 Id2}
    Stream := Msg1|nil
    {System.show Id1#Msg1}
    thread {Pong Id2} T1=unit end
    thread {Ping Id1} T2=T1 end
  end

  {Game 'p1' 'p2'}
  {Wait T2}
  {Application.exit 0}
end