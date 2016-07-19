package com.adjust.sdk;

import android.content.Context;
import android.os.AsyncTask;

final class Util$1
  extends AsyncTask<Context, Void, String>
{
  Util$1(OnDeviceIdsRead paramOnDeviceIdsRead) {}
  
  protected String doInBackground(Context... paramVarArgs)
  {
    ILogger localILogger = AdjustFactory.getLogger();
    paramVarArgs = Util.getPlayAdId(paramVarArgs[0]);
    localILogger.debug("GoogleAdId read " + paramVarArgs, new Object[0]);
    return paramVarArgs;
  }
  
  protected void onPostExecute(String paramString)
  {
    AdjustFactory.getLogger();
    val$onDeviceIdRead.onGoogleAdIdRead(paramString);
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.Util.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */