package com.facebook.login.widget;

import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.widget.PopupWindow;
import java.lang.ref.WeakReference;

class ToolTipPopup$1
  implements ViewTreeObserver.OnScrollChangedListener
{
  ToolTipPopup$1(ToolTipPopup paramToolTipPopup) {}
  
  public void onScrollChanged()
  {
    if ((ToolTipPopup.a(a).get() != null) && (ToolTipPopup.b(a) != null) && (ToolTipPopup.b(a).isShowing()))
    {
      if (ToolTipPopup.b(a).isAboveAnchor()) {
        ToolTipPopup.c(a).b();
      }
    }
    else {
      return;
    }
    ToolTipPopup.c(a).a();
  }
}

/* Location:
 * Qualified Name:     com.facebook.login.widget.ToolTipPopup.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */