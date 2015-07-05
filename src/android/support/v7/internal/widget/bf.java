package android.support.v7.internal.widget;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;

class bf
  extends an
{
  private final bd a;
  
  public bf(Resources paramResources, bd parambd)
  {
    super(paramResources);
    a = parambd;
  }
  
  public Drawable getDrawable(int paramInt)
  {
    Drawable localDrawable = super.getDrawable(paramInt);
    if (localDrawable != null) {
      a.a(paramInt, localDrawable);
    }
    return localDrawable;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */