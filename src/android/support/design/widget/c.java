package android.support.design.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;

class c
  extends b
{
  private ColorStateList e;
  private PorterDuff.Mode f = PorterDuff.Mode.SRC_IN;
  private PorterDuffColorFilter g;
  
  private PorterDuffColorFilter a(ColorStateList paramColorStateList, PorterDuff.Mode paramMode)
  {
    if ((paramColorStateList == null) || (paramMode == null)) {
      return null;
    }
    return new PorterDuffColorFilter(paramColorStateList.getColorForState(getState(), 0), paramMode);
  }
  
  public void draw(Canvas paramCanvas)
  {
    if ((g != null) && (a.getColorFilter() == null)) {
      a.setColorFilter(g);
    }
    for (int i = 1;; i = 0)
    {
      super.draw(paramCanvas);
      if (i != 0) {
        a.setColorFilter(null);
      }
      return;
    }
  }
  
  public void getOutline(Outline paramOutline)
  {
    copyBounds(b);
    paramOutline.setOval(b);
  }
  
  public void setTintList(ColorStateList paramColorStateList)
  {
    e = paramColorStateList;
    g = a(paramColorStateList, f);
    invalidateSelf();
  }
  
  public void setTintMode(PorterDuff.Mode paramMode)
  {
    f = paramMode;
    g = a(e, paramMode);
    invalidateSelf();
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */