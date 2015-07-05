package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.ViewConfiguration;

public class cx
{
  static final dc a = new cy();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new db();
      return;
    }
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new da();
      return;
    }
    if (Build.VERSION.SDK_INT >= 8)
    {
      a = new cz();
      return;
    }
  }
  
  public static int a(ViewConfiguration paramViewConfiguration)
  {
    return a.a(paramViewConfiguration);
  }
  
  public static boolean b(ViewConfiguration paramViewConfiguration)
  {
    return a.b(paramViewConfiguration);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.cx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */