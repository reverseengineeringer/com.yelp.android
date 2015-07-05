package com.ooyala.android;

import java.util.List;

class PlayerAPIClient$ContentTreeByExternalIdsTask
  extends PlayerAPIClient.ContentTreeTask
{
  public PlayerAPIClient$ContentTreeByExternalIdsTask(PlayerAPIClient paramPlayerAPIClient, ContentTreeCallback paramContentTreeCallback)
  {
    super(paramPlayerAPIClient, paramContentTreeCallback);
  }
  
  protected ContentItem doInBackground(PlayerAPIClient.ContentTreeTaskParam... paramVarArgs)
  {
    if ((paramVarArgs.length == 0) || (paramVarArgs[0] == null) || (0idList == null) || (0idList.isEmpty())) {
      return null;
    }
    try
    {
      paramVarArgs = this$0.contentTreeByExternalIds(0idList);
      return paramVarArgs;
    }
    catch (OoyalaException paramVarArgs)
    {
      _error = paramVarArgs;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.PlayerAPIClient.ContentTreeByExternalIdsTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */