-module(app1_tests).
-include_lib("eunit/include/eunit.hrl").
-include_lib("test_lib/include/test_lib.hrl").

all_test_() ->
    {foreach, fun setup/0, fun cleanup/1,
     [
      ?test(simple_test)
     ]}.

setup() ->
    ok.

cleanup(_) ->
    ok.

simple_test() ->
    ?assertEqual(3, app1:test([a, b, c])).

