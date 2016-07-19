package android.support.v7.app;

import android.content.Context;
import android.os.Build.VERSION;
import android.support.v4.app.x.d;
import android.support.v4.app.x.e;

public class m$a
  extends x.d
{
  public m$a(Context paramContext)
  {
    super(paramContext);
  }
  
  protected x.e b()
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return new m.d(null);
    }
    if (Build.VERSION.SDK_INT >= 16) {
      return new m.c(null);
    }
    if (Build.VERSION.SDK_INT >= 14) {
      return new m.b(null);
    }
    return super.b();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.m.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */