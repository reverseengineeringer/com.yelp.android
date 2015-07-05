package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.LayoutInflater;

public class ac
{
  static final ad a = new ae();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
    {
      a = new ag();
      return;
    }
    if (i >= 11)
    {
      a = new af();
      return;
    }
  }
  
  public static void a(LayoutInflater paramLayoutInflater, am paramam)
  {
    a.a(paramLayoutInflater, paramam);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */