package com.ooyala.android;

import android.os.AsyncTask;
import java.util.List;

class PlayerAPIClient$ContentTreeTask
  extends AsyncTask<PlayerAPIClient.ContentTreeTaskParam, Integer, ContentItem>
{
  protected ContentTreeCallback _callback = null;
  protected OoyalaException _error = null;
  
  public PlayerAPIClient$ContentTreeTask(PlayerAPIClient paramPlayerAPIClient, ContentTreeCallback paramContentTreeCallback)
  {
    _callback = paramContentTreeCallback;
  }
  
  protected ContentItem doInBackground(PlayerAPIClient.ContentTreeTaskParam... paramVarArgs)
  {
    if ((paramVarArgs.length == 0) || (paramVarArgs[0] == null) || (0idList == null) || (0idList.isEmpty())) {
      return null;
    }
    try
    {
      paramVarArgs = this$0.contentTreeWithAdSet(0idList, 0adSetCode);
      return paramVarArgs;
    }
    catch (OoyalaException paramVarArgs)
    {
      _error = paramVarArgs;
    }
    return null;
  }
  
  protected void onPostExecute(ContentItem paramContentItem)
  {
    _callback.callback(paramContentItem, _error);
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.PlayerAPIClient.ContentTreeTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */