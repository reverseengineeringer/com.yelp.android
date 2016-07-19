package android.support.v4.app;

import android.app.PendingIntent;
import android.os.Bundle;

public class x$a
  extends aa.a
{
  public static final aa.a.a d = new aa.a.a() {};
  public int a;
  public CharSequence b;
  public PendingIntent c;
  private final Bundle e;
  private final ag[] f;
  
  public x$a(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent)
  {
    this(paramInt, paramCharSequence, paramPendingIntent, new Bundle(), null);
  }
  
  private x$a(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent, Bundle paramBundle, ag[] paramArrayOfag)
  {
    a = paramInt;
    b = x.d.d(paramCharSequence);
    c = paramPendingIntent;
    if (paramBundle != null) {}
    for (;;)
    {
      e = paramBundle;
      f = paramArrayOfag;
      return;
      paramBundle = new Bundle();
    }
  }
  
  public int a()
  {
    return a;
  }
  
  public CharSequence b()
  {
    return b;
  }
  
  public PendingIntent c()
  {
    return c;
  }
  
  public Bundle d()
  {
    return e;
  }
  
  public ag[] e()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.x.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */