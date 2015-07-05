package com.yelp.android.ui.widgets;

import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.yelp.android.ui.util.cr;

class v
  implements View.OnTouchListener
{
  v(RecipientBoxView paramRecipientBoxView) {}
  
  @SuppressLint({"ClickableViewAccessibility"})
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (RecipientBoxView.a(a))
    {
      RecipientBoxView.b(a).b();
      cr.a(RecipientBoxView.c(a));
      return true;
    }
    RecipientBoxView.a(a, true);
    RecipientBoxView.a(a, null);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */