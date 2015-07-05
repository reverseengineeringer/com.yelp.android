package com.ooyala.android;

import android.os.AsyncTask;

class PlayerAPIClient$MetadataFetchTask
  extends AsyncTask<PlayerAPIClient.MetadataFetchTaskParam, Integer, Boolean>
{
  protected MetadataFetchedCallback _callback = null;
  protected OoyalaException _error = null;
  
  public PlayerAPIClient$MetadataFetchTask(PlayerAPIClient paramPlayerAPIClient, MetadataFetchedCallback paramMetadataFetchedCallback)
  {
    _callback = paramMetadataFetchedCallback;
  }
  
  protected Boolean doInBackground(PlayerAPIClient.MetadataFetchTaskParam... paramVarArgs)
  {
    if ((paramVarArgs.length == 0) || (paramVarArgs[0] == null) || (0item == null)) {
      return Boolean.valueOf(false);
    }
    try
    {
      boolean bool = this$0.fetchMetadata(0item);
      return Boolean.valueOf(bool);
    }
    catch (OoyalaException paramVarArgs)
    {
      _error = paramVarArgs;
    }
    return null;
  }
  
  protected void onPostExecute(Boolean paramBoolean)
  {
    _callback.callback(paramBoolean.booleanValue(), _error);
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.PlayerAPIClient.MetadataFetchTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */