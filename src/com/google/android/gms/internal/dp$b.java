package com.google.android.gms.internal;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.RelativeLayout;

@ey
final class dp$b
  extends RelativeLayout
{
  private final gl lJ;
  
  public dp$b(Context paramContext, String paramString)
  {
    super(paramContext);
    lJ = new gl(paramContext, paramString);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    lJ.c(paramMotionEvent);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dp.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */