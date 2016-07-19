package android.support.v7.internal.widget;

import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.drawable.Drawable;

class m$a
  extends i
{
  private final o a;
  
  public m$a(Resources paramResources, o paramo)
  {
    super(paramResources);
    a = paramo;
  }
  
  public Drawable getDrawable(int paramInt)
    throws Resources.NotFoundException
  {
    Drawable localDrawable = super.getDrawable(paramInt);
    if (localDrawable != null) {
      a.a(paramInt, localDrawable);
    }
    return localDrawable;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.m.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */