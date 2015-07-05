package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.ViewGroup;

public class df
{
  static final di a = new dl();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
    {
      a = new dk();
      return;
    }
    if (i >= 18)
    {
      a = new dj();
      return;
    }
    if (i >= 14)
    {
      a = new dh();
      return;
    }
    if (i >= 11)
    {
      a = new dg();
      return;
    }
  }
  
  public static void a(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    a.a(paramViewGroup, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.df
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */