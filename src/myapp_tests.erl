-module(myapp_tests).
-compile([export_all]).

-author("me@danielparnell.com").
-include_lib("eunit/include/eunit.hrl").

basic_test_() -> 
    [
      ?_assertEqual(1, 1)
    ].

