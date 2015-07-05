package android.support.v7.internal.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;

class bc
  extends ai
{
  private final ColorStateList a;
  private final PorterDuff.Mode b;
  private int c;
  
  public bc(Drawable paramDrawable, ColorStateList paramColorStateList)
  {
    this(paramDrawable, paramColorStateList, bd.a);
  }
  
  public bc(Drawable paramDrawable, ColorStateList paramColorStateList, PorterDuff.Mode paramMode)
  {
    super(paramDrawable);
    a = paramColorStateList;
    b = paramMode;
  }
  
  private boolean a(int[] paramArrayOfInt)
  {
    if (a != null)
    {
      int i = a.getColorForState(paramArrayOfInt, c);
      if (i != c)
      {
        if (i != 0) {
          setColorFilter(i, b);
        }
        for (;;)
        {
          c = i;
          return true;
          clearColorFilter();
        }
      }
    }
    return false;
  }
  
  public boolean isStateful()
  {
    return ((a != null) && (a.isStateful())) || (super.isStateful());
  }
  
  public boolean setState(int[] paramArrayOfInt)
  {
    boolean bool = super.setState(paramArrayOfInt);
    return (a(paramArrayOfInt)) || (bool);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */