package android.support.v7.app;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;

class a$f
  implements a.a
{
  final Activity a;
  b.a b;
  
  private a$f(Activity paramActivity)
  {
    a = paramActivity;
  }
  
  public Drawable a()
  {
    return b.a(a);
  }
  
  public void a(int paramInt)
  {
    b = b.a(b, a, paramInt);
  }
  
  public Context b()
  {
    ActionBar localActionBar = a.getActionBar();
    if (localActionBar != null) {
      return localActionBar.getThemedContext();
    }
    return a;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */