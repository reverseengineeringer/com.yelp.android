package com.facebook;

import android.content.Context;
import android.os.AsyncTask;
import com.facebook.internal.Utility;

class Session$AutoPublishAsyncTask
  extends AsyncTask<Void, Void, Void>
{
  private final Context mApplicationContext;
  private final String mApplicationId;
  
  public Session$AutoPublishAsyncTask(Session paramSession, String paramString, Context paramContext)
  {
    mApplicationId = paramString;
    mApplicationContext = paramContext.getApplicationContext();
  }
  
  protected Void doInBackground(Void... paramVarArgs)
  {
    try
    {
      Settings.publishInstallAndWaitForResponse(mApplicationContext, mApplicationId, true);
      return null;
    }
    catch (Exception paramVarArgs)
    {
      for (;;)
      {
        Utility.logd("Facebook-publish", paramVarArgs);
      }
    }
  }
  
  protected void onPostExecute(Void arg1)
  {
    synchronized (this$0)
    {
      Session.access$1802(this$0, null);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.Session.AutoPublishAsyncTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */