package android.support.v7.widget;

import android.widget.PopupWindow;

class ax
  implements Runnable
{
  private ax(ListPopupWindow paramListPopupWindow) {}
  
  public void run()
  {
    if ((ListPopupWindow.a(a) != null) && (ListPopupWindow.a(a).getCount() > ListPopupWindow.a(a).getChildCount()) && (ListPopupWindow.a(a).getChildCount() <= a.b))
    {
      ListPopupWindow.b(a).setInputMethodMode(2);
      a.c();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */