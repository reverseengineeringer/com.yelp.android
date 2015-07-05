package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.KeyEvent;

public class v
{
  static final z a = new w();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new y();
      return;
    }
  }
  
  public static boolean a(KeyEvent paramKeyEvent)
  {
    return a.b(paramKeyEvent.getMetaState());
  }
  
  public static boolean a(KeyEvent paramKeyEvent, int paramInt)
  {
    return a.a(paramKeyEvent.getMetaState(), paramInt);
  }
  
  public static void b(KeyEvent paramKeyEvent)
  {
    a.a(paramKeyEvent);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */