package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.Log;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.playlog.internal.LogEvent;
import com.google.android.gms.playlog.internal.PlayLoggerContext;
import com.google.android.gms.playlog.internal.d;
import com.google.android.gms.playlog.internal.f;

@Deprecated
public class lc
{
  private final f a;
  private PlayLoggerContext b;
  
  public lc(Context paramContext, int paramInt, String paramString1, String paramString2, a parama, boolean paramBoolean, String paramString3)
  {
    String str = paramContext.getPackageName();
    int i = 0;
    try
    {
      int j = getPackageManagergetPackageInfo0versionCode;
      i = j;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        Log.wtf("PlayLogger", "This can't happen.", localNameNotFoundException);
      }
    }
    b = new PlayLoggerContext(str, i, paramInt, paramString1, paramString2, paramBoolean);
    a = new f(paramContext, paramContext.getMainLooper(), new d(parama), new zzf(null, null, null, 49, null, str, paramString3, null));
  }
  
  public void a()
  {
    a.a();
  }
  
  public void a(long paramLong, String paramString, byte[] paramArrayOfByte, String... paramVarArgs)
  {
    a.a(b, new LogEvent(paramLong, 0L, paramString, paramArrayOfByte, paramVarArgs));
  }
  
  public void a(String paramString, byte[] paramArrayOfByte, String... paramVarArgs)
  {
    a(System.currentTimeMillis(), paramString, paramArrayOfByte, paramVarArgs);
  }
  
  public void b()
  {
    a.b();
  }
  
  public static abstract interface a
  {
    public abstract void a(PendingIntent paramPendingIntent);
    
    public abstract void b();
    
    public abstract void c();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */