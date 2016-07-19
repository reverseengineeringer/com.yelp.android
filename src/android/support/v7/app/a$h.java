package android.support.v7.app;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.Toolbar;

class a$h
  implements a.a
{
  final Toolbar a;
  final Drawable b;
  final CharSequence c;
  
  a$h(Toolbar paramToolbar)
  {
    a = paramToolbar;
    b = paramToolbar.getNavigationIcon();
    c = paramToolbar.getNavigationContentDescription();
  }
  
  public Drawable a()
  {
    return b;
  }
  
  public void a(int paramInt)
  {
    if (paramInt == 0)
    {
      a.setNavigationContentDescription(c);
      return;
    }
    a.setNavigationContentDescription(paramInt);
  }
  
  public Context b()
  {
    return a.getContext();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */