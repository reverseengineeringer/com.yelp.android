package android.support.v7.widget;

import android.os.Handler;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.PopupWindow;

class av
  implements AbsListView.OnScrollListener
{
  private av(ListPopupWindow paramListPopupWindow) {}
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if ((paramInt == 1) && (!a.f()) && (ListPopupWindow.b(a).getContentView() != null))
    {
      ListPopupWindow.d(a).removeCallbacks(ListPopupWindow.c(a));
      ListPopupWindow.c(a).run();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.av
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */