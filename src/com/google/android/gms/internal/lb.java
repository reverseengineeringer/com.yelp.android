package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.util.Log;

@Deprecated
public class lb
  implements lc.a
{
  private final lc a;
  private boolean b;
  
  public lb(Context paramContext, int paramInt)
  {
    this(paramContext, paramInt, null);
  }
  
  public lb(Context paramContext, int paramInt, String paramString)
  {
    this(paramContext, paramInt, paramString, null, true);
  }
  
  public lb(Context paramContext, int paramInt, String paramString1, String paramString2, boolean paramBoolean)
  {
    if (paramContext != paramContext.getApplicationContext()) {}
    for (String str = paramContext.getClass().getName();; str = "OneTimePlayLogger")
    {
      a = new lc(paramContext, paramInt, paramString1, paramString2, this, paramBoolean, str);
      b = true;
      return;
    }
  }
  
  private void d()
  {
    if (!b) {
      throw new IllegalStateException("Cannot reuse one-time logger after sending.");
    }
  }
  
  public void a()
  {
    d();
    a.a();
    b = false;
  }
  
  public void a(PendingIntent paramPendingIntent)
  {
    Log.w("OneTimePlayLogger", "logger connection failed: " + paramPendingIntent);
  }
  
  public void a(String paramString, byte[] paramArrayOfByte, String... paramVarArgs)
  {
    d();
    a.a(paramString, paramArrayOfByte, paramVarArgs);
  }
  
  public void b()
  {
    a.b();
  }
  
  public void c()
  {
    Log.w("OneTimePlayLogger", "logger connection failed");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */