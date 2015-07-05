package android.support.v7.app;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;

class x
  implements r
{
  final Activity a;
  
  private x(Activity paramActivity)
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
    TypedArray localTypedArray = a().obtainStyledAttributes(null, new int[] { 16843531 }, 16843470, 0);
    Drawable localDrawable = localTypedArray.getDrawable(0);
    localTypedArray.recycle();
    return localDrawable;
  }
  
  public void setActionBarDescription(int paramInt)
  {
    ActionBar localActionBar = a.getActionBar();
    if (localActionBar != null) {
      localActionBar.setHomeActionContentDescription(paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */