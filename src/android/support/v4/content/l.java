package android.support.v4.content;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Build.VERSION;

public class l
{
  private static final m a = new n();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 15)
    {
      a = new p();
      return;
    }
    if (i >= 11)
    {
      a = new o();
      return;
    }
  }
  
  public static Intent a(ComponentName paramComponentName)
  {
    return a.a(paramComponentName);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */