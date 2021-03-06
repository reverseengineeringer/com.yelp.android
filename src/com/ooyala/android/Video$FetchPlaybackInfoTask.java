package com.ooyala.android;

import android.os.AsyncTask;

class Video$FetchPlaybackInfoTask
  extends AsyncTask<Void, Integer, Boolean>
{
  protected FetchPlaybackInfoCallback _callback = null;
  
  public Video$FetchPlaybackInfoTask(Video paramVideo, FetchPlaybackInfoCallback paramFetchPlaybackInfoCallback)
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
 * Qualified Name:     com.ooyala.android.Video.FetchPlaybackInfoTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */