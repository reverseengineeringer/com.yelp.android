package android.support.v4.view;

import android.os.Build.VERSION;

public class q
{
  static final r a = new s();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 17)
    {
      a = new t();
      return;
    }
  }
  
  public static int a(int paramInt1, int paramInt2)
  {
    return a.a(paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */