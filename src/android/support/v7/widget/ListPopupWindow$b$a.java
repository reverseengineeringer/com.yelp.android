package android.support.v7.widget;

import android.view.View;
import android.view.ViewParent;

class ListPopupWindow$b$a
  implements Runnable
{
  private ListPopupWindow$b$a(ListPopupWindow.b paramb) {}
  
  public void run()
  {
    ListPopupWindow.b.a(a).getParent().requestDisallowInterceptTouchEvent(true);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ListPopupWindow.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */