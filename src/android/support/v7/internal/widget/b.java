package android.support.v7.internal.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;

class b
  extends Drawable
{
  final ActionBarContainer a;
  
  public b(ActionBarContainer paramActionBarContainer)
  {
    a = paramActionBarContainer;
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (a.d) {
      if (a.c != null) {
        a.c.draw(paramCanvas);
      }
    }
    do
    {
      return;
      if (a.a != null) {
        a.a.draw(paramCanvas);
      }
    } while ((a.b == null) || (!a.e));
    a.b.draw(paramCanvas);
  }
  
  public int getOpacity()
  {
    return 0;
  }
  
  public void setAlpha(int paramInt) {}
  
  public void setColorFilter(ColorFilter paramColorFilter) {}
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */