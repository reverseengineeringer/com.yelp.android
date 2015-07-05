package com.google.android.gms.internal;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.ViewSwitcher;

@ey
final class u$a
  extends ViewSwitcher
{
  private final gl lJ;
  
  public u$a(Context paramContext)
  {
    super(paramContext);
    lJ = new gl(paramContext);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    lJ.c(paramMotionEvent);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.u.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */