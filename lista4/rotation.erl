% Autor: Krzysztof Osada, 2017

-module(rotation).
-export([left_rotation/1]).
-record(node, {key, value, left = nil, right = nil}).

left_rotation(#node{right = nil}) ->
  error;

left_rotation(#node{key = Key, value = Value, left = Left, right = #node{key = KeyOfRight, value = ValueOfRight, left = LeftOfRight, right = RightOfRight}}) ->
  #node{key = KeyOfRight, value = ValueOfRight, left = #node{key = Key, value = Value, left = Left, right = LeftOfRight}, right = RightOfRight}.