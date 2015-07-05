package com.ooyala.android;

import android.os.AsyncTask;

class OoyalaAdSpot$FetchPlaybackInfoTask
  extends AsyncTask<Void, Integer, Boolean>
{
  protected FetchPlaybackInfoCallback _callback = null;
  
  public OoyalaAdSpot$FetchPlaybackInfoTask(OoyalaAdSpot paramOoyalaAdSpot, FetchPlaybackInfoCallback paramFetchPlaybackInfoCallback)
  {
    _callback = paramFetchPlaybackInfoCallback;
  }
  
  protected Boolean doInBackground(Void... paramVarArgs)
  {
    return Boolean.valueOf(this$0.fetchPlaybackInfo());
  }
  
  protected void onPostExecute(Boolean paramBoolean)
  {
    _callback.callback(paramBoolean.booleanValue());
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.OoyalaAdSpot.FetchPlaybackInfoTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */