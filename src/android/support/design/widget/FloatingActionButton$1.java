package android.support.design.widget;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;

class FloatingActionButton$1
  implements m
{
  FloatingActionButton$1(FloatingActionButton paramFloatingActionButton) {}
  
  public float a()
  {
    return a.getSizeDimension() / 2.0F;
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    FloatingActionButton.a(a).set(paramInt1, paramInt2, paramInt3, paramInt4);
    a.setPadding(FloatingActionButton.b(a) + paramInt1, FloatingActionButton.b(a) + paramInt2, FloatingActionButton.b(a) + paramInt3, FloatingActionButton.b(a) + paramInt4);
  }
  
  public void a(Drawable paramDrawable)
  {
    FloatingActionButton.a(a, paramDrawable);
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.FloatingActionButton.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */