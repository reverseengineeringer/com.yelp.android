package com.kahuna.sdk;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Log;
import com.google.android.gms.gcm.a;
import java.util.TimerTask;

class f$a
  extends TimerTask
{
  private String b;
  
  public f$a(f paramf, String paramString)
  {
    b = paramString;
  }
  
  public void run()
  {
    if ((b == null) || ("".equals(b))) {}
    do
    {
      for (;;)
      {
        return;
        String str2;
        try
        {
          String str1 = a.a(f.a(f.f())).a(new String[] { b });
          f.b(str1);
          Object localObject = f.d(f.a(f.f()));
          int i = f.e(f.a(f.f()));
          f.c("Saving regId on app version " + i);
          localObject = ((SharedPreferences)localObject).edit();
          ((SharedPreferences.Editor)localObject).putString("registration_id", str1);
          ((SharedPreferences.Editor)localObject).putInt("appVersion", i);
          ((SharedPreferences.Editor)localObject).commit();
          return;
        }
        catch (Throwable localThrowable1)
        {
          if (l.u())
          {
            Log.e("Kahuna", "Exception registering for Push: " + localThrowable1);
            localThrowable1.printStackTrace();
          }
          str2 = localThrowable1.getMessage();
        }
        if (str2 != null) {
          try
          {
            if ("SERVICE_NOT_AVAILABLE".equals(str2))
            {
              f.e();
              return;
            }
          }
          catch (Throwable localThrowable2) {}
        }
      }
    } while (!l.u());
    Log.e("Kahuna", "More exception registering for Push: " + localThrowable2);
    localThrowable2.printStackTrace();
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.f.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */