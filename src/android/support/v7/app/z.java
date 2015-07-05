package android.support.v7.app;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.Toolbar;

class z
  implements r
{
  final Toolbar a;
  final Drawable b;
  final CharSequence c;
  
  z(Toolbar paramToolbar)
  {
    a = paramToolbar;
    b = paramToolbar.getNavigationIcon();
    c = paramToolbar.getNavigationContentDescription();
  }
  
  public Context a()
  {
    return a.getContext();
  }
  
  public Drawable getThemeUpIndicator()
  {
    return b;
  }
  
  public void setActionBarDescription(int paramInt)
  {
    if (paramInt == 0)
    {
      a.setNavigationContentDescription(c);
      return;
    }
    a.setNavigationContentDescription(paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */