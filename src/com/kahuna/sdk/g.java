package com.kahuna.sdk;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Log;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import java.util.TimerTask;

class g
  extends TimerTask
{
  private String b;
  
  public g(f paramf, String paramString)
  {
    b = paramString;
  }
  
  public void run()
  {
    if ((b == null) || ("".equals(b))) {}
    String str2;
    do
    {
      return;
      try
      {
        String str1 = GoogleCloudMessaging.getInstance(f.a(f.d())).register(new String[] { b });
        h.c(str1);
        h.f();
        Object localObject = f.d(f.a(f.d()));
        int i = f.e(f.a(f.d()));
        f.b("Saving regId on app version " + i);
        localObject = ((SharedPreferences)localObject).edit();
        ((SharedPreferences.Editor)localObject).putString("registration_id", str1);
        ((SharedPreferences.Editor)localObject).putInt("appVersion", i);
        ((SharedPreferences.Editor)localObject).commit();
        return;
      }
      catch (Exception localException)
      {
        if (h.p())
        {
          Log.e("KahunaAnalytics", "Exception registering for Push: " + localException);
          localException.printStackTrace();
        }
        str2 = localException.getMessage();
      }
    } while ((str2 == null) || (!"SERVICE_NOT_AVAILABLE".equals(str2)));
    f.c();
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */