-module(test_suite).

-author("me@danielparnell.com").

-include_lib("eunit/include/eunit.hrl").

all_test_() ->
  [
   {module, myapp_tests}
  ].
