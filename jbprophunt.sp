#include <sourcemod>

public Plugin myinfo =
{
	name = "JBPropHunt",
	author = "JBased Group",
	description = "JBMod PropHunt",
	version = "1.0",
	url = "https://github.com/jbased-group/"
};

public void OnPluginStart()
{
    HookEvent("player_spawn",PlayerSpawned);
}

bool abouttospawn[33];
public void OnClientConnected(int client)
{
	abouttospawn[client] = true;
}

public Action PlayerSpawned(Event event, const char[] name, bool dontbroadcast)
{
	return Plugin_Handled;
}