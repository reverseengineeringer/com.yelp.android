package android.support.v7.app;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;

class w
  implements r
{
  final Activity a;
  ab b;
  
  private w(Activity paramActivity)
  {
    a = paramActivity;
  }
  
  public Context a()
  {
    ActionBar localActionBar = a.getActionBar();
    if (localActionBar != null) {
      return localActionBar.getThemedContext();
    }
    return a;
  }
  
  public Drawable getThemeUpIndicator()
  {
    return aa.a(a);
  }
  
  public void setActionBarDescription(int paramInt)
  {
    b = aa.a(b, a, paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */