package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.util.Log;

public class oo
  implements op.a
{
  private final op amS;
  private boolean amT;
  
  public oo(Context paramContext, int paramInt)
  {
    this(paramContext, paramInt, null);
  }
  
  public oo(Context paramContext, int paramInt, String paramString)
  {
    this(paramContext, paramInt, paramString, null, true);
  }
  
  public oo(Context paramContext, int paramInt, String paramString1, String paramString2, boolean paramBoolean)
  {
    amS = new op(paramContext, paramInt, paramString1, paramString2, this, paramBoolean);
    amT = true;
  }
  
  private void om()
  {
    if (!amT) {
      throw new IllegalStateException("Cannot reuse one-time logger after sending.");
    }
  }
  
  public void a(String paramString, byte[] paramArrayOfByte, String... paramVarArgs)
  {
    om();
    amS.b(paramString, paramArrayOfByte, paramVarArgs);
  }
  
  public void d(PendingIntent paramPendingIntent)
  {
    Log.w("OneTimePlayLogger", "logger connection failed: " + paramPendingIntent);
  }
  
  public void on()
  {
    amS.stop();
  }
  
  public void oo()
  {
    Log.w("OneTimePlayLogger", "logger connection failed");
  }
  
  public void send()
  {
    om();
    amS.start();
    amT = false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.oo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */