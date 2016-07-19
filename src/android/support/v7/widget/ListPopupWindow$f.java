package android.support.v7.widget;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.PopupWindow;

class ListPopupWindow$f
  implements View.OnTouchListener
{
  private ListPopupWindow$f(ListPopupWindow paramListPopupWindow) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    int j = (int)paramMotionEvent.getX();
    int k = (int)paramMotionEvent.getY();
    if ((i == 0) && (ListPopupWindow.b(a) != null) && (ListPopupWindow.b(a).isShowing()) && (j >= 0) && (j < ListPopupWindow.b(a).getWidth()) && (k >= 0) && (k < ListPopupWindow.b(a).getHeight())) {
      ListPopupWindow.d(a).postDelayed(ListPopupWindow.c(a), 250L);
    }
    for (;;)
    {
      return false;
      if (i == 1) {
        ListPopupWindow.d(a).removeCallbacks(ListPopupWindow.c(a));
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ListPopupWindow.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */