package android.support.v7.app;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.app.ActionBarDrawerToggle.Delegate;
import android.support.v7.internal.widget.bg;

class e
  implements ActionBarDrawerToggle.Delegate, r
{
  private e(c paramc) {}
  
  public Context a()
  {
    return a.m();
  }
  
  public Drawable getThemeUpIndicator()
  {
    bg localbg = bg.a(a(), null, new int[] { a.k() });
    Drawable localDrawable = localbg.a(0);
    localbg.b();
    return localDrawable;
  }
  
  public void setActionBarDescription(int paramInt)
  {
    ActionBar localActionBar = a.b();
    if (localActionBar != null) {
      localActionBar.c(paramInt);
    }
  }
  
  public void setActionBarUpIndicator(Drawable paramDrawable, int paramInt)
  {
    ActionBar localActionBar = a.b();
    if (localActionBar != null)
    {
      localActionBar.b(paramDrawable);
      localActionBar.c(paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */