-module(app1).
-export([test/1]).

test(Data) ->
    test(Data, 0).

test([], Acc) ->
    Acc;
test([_H|T], Acc) ->
    test(T, Acc + 1).

