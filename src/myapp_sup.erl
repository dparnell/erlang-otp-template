-module(myapp_sup).
-behaviour(supervisor).

%% API
-export([start_link/0]).

%% Supervisor callbacks
-export([init/1]).

-define(SERVER, ?MODULE).

start_link() ->
    supervisor:start_link({local, ?SERVER}, ?MODULE, []).

init([]) ->
    Server = {myapp_server, {myapp_server, start_link, []},
	      permanent, 2000, worker, [myapp_server]},
    Children = [Server],
    RestartStrategy = {one_for_one, 3, 1},
    {ok, {RestartStrategy, Children}}.
