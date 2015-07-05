package com.ooyala.android;

import android.os.AsyncTask;

class PlayerAPIClient$ContentTreeNextTask
  extends AsyncTask<Object, Integer, PaginatedItemResponse>
{
  protected ContentTreeNextCallback _callback = null;
  protected OoyalaException _error = null;
  
  public PlayerAPIClient$ContentTreeNextTask(PlayerAPIClient paramPlayerAPIClient, ContentTreeNextCallback paramContentTreeNextCallback)
  {
    _callback = paramContentTreeNextCallback;
  }
  
  protected PaginatedItemResponse doInBackground(Object... paramVarArgs)
  {
    if ((paramVarArgs.length < 1) || (paramVarArgs[0] == null) || (!(paramVarArgs[0] instanceof PaginatedParentItem))) {
      return null;
    }
    return this$0.contentTreeNext((PaginatedParentItem)paramVarArgs[1]);
  }
  
  protected void onPostExecute(PaginatedItemResponse paramPaginatedItemResponse)
  {
    _callback.callback(paramPaginatedItemResponse, _error);
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.PlayerAPIClient.ContentTreeNextTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */