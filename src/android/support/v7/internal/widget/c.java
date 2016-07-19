package android.support.v7.internal.widget;

import android.graphics.Outline;
import android.graphics.drawable.Drawable;

class c
  extends b
{
  public c(ActionBarContainer paramActionBarContainer)
  {
    super(paramActionBarContainer);
  }
  
  public void getOutline(Outline paramOutline)
  {
    if (a.d) {
      if (a.c != null) {
        a.c.getOutline(paramOutline);
      }
    }
    while (a.a == null) {
      return;
    }
    a.a.getOutline(paramOutline);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */