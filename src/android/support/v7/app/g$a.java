package android.support.v7.app;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.internal.widget.p;

class g$a
  implements a.a
{
  private g$a(g paramg) {}
  
  public Drawable a()
  {
    p localp = p.a(b(), null, new int[] { com.yelp.android.j.a.a.homeAsUpIndicator });
    Drawable localDrawable = localp.a(0);
    localp.b();
    return localDrawable;
  }
  
  public void a(int paramInt)
  {
    ActionBar localActionBar = a.a();
    if (localActionBar != null) {
      localActionBar.c(paramInt);
    }
  }
  
  public Context b()
  {
    return a.k();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.g.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */