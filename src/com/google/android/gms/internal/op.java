package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.Log;

public class op
{
  private final ox amU;
  private ov amV;
  
  public op(Context paramContext, int paramInt, String paramString1, String paramString2, op.a parama, boolean paramBoolean)
  {
    String str = paramContext.getPackageName();
    try
    {
      int j = getPackageManagergetPackageInfo0versionCode;
      i = j;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        Log.wtf("PlayLogger", "This can't happen.");
      }
    }
    amV = new ov(str, i, paramInt, paramString1, paramString2, paramBoolean);
    amU = new ox(paramContext, new ou(parama));
  }
  
  public void a(long paramLong, String paramString, byte[] paramArrayOfByte, String... paramVarArgs)
  {
    amU.b(amV, new or(paramLong, paramString, paramArrayOfByte, paramVarArgs));
  }
  
  public void b(String paramString, byte[] paramArrayOfByte, String... paramVarArgs)
  {
    a(System.currentTimeMillis(), paramString, paramArrayOfByte, paramVarArgs);
  }
  
  public void start()
  {
    amU.start();
  }
  
  public void stop()
  {
    amU.stop();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.op
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */