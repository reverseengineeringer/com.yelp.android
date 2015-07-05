package com.ooyala.android;

import android.os.AsyncTask;

class PlayerAPIClient$AuthorizeHeartbeatTask
  extends AsyncTask<Void, Void, Boolean>
{
  protected PlayerAPIClient.AuthorizeHeartbeatCallback _callback = null;
  protected OoyalaException _error = null;
  
  public PlayerAPIClient$AuthorizeHeartbeatTask(PlayerAPIClient paramPlayerAPIClient, PlayerAPIClient.AuthorizeHeartbeatCallback paramAuthorizeHeartbeatCallback)
  {
    _callback = paramAuthorizeHeartbeatCallback;
  }
  
  protected Boolean doInBackground(Void... paramVarArgs)
  {
    try
    {
      boolean bool = this$0.authorizeHeartbeat();
      return Boolean.valueOf(bool);
    }
    catch (OoyalaException paramVarArgs)
    {
      _error = paramVarArgs;
    }
    return Boolean.FALSE;
  }
  
  protected void onPostExecute(Boolean paramBoolean)
  {
    _callback.callback(paramBoolean.booleanValue(), _error);
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.PlayerAPIClient.AuthorizeHeartbeatTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */