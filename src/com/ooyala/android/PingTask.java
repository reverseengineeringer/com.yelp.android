package com.ooyala.android;

import android.os.AsyncTask;
import android.util.Log;
import java.net.HttpURLConnection;
import java.net.URL;

class PingTask
  extends AsyncTask<URL, Void, Void>
{
  protected Void doInBackground(URL... paramVarArgs)
  {
    int j = paramVarArgs.length;
    int i = 0;
    for (;;)
    {
      if (i < j)
      {
        Object localObject = paramVarArgs[i];
        try
        {
          localObject = (HttpURLConnection)((URL)localObject).openConnection();
          ((HttpURLConnection)localObject).connect();
          ((HttpURLConnection)localObject).getInputStream();
          i += 1;
        }
        catch (Exception localException)
        {
          for (;;)
          {
            Log.e(NetUtils.class.getName(), "Ping failed!!!");
          }
        }
      }
    }
    return null;
  }
  
  protected void onPostExecute() {}
}

/* Location:
 * Qualified Name:     com.ooyala.android.PingTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */