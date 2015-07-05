package android.support.v4.widget;

import android.os.Build.VERSION;
import android.view.View;
import android.widget.PopupWindow;

public class ar
{
  static final au a = new as();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      a = new at();
      return;
    }
  }
  
  public static void a(PopupWindow paramPopupWindow, View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    a.a(paramPopupWindow, paramView, paramInt1, paramInt2, paramInt3);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */