package android.support.v7.app;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;

class a$g
  implements a.a
{
  final Activity a;
  
  private a$g(Activity paramActivity)
  {
    a = paramActivity;
  }
  
  public Drawable a()
  {
    TypedArray localTypedArray = b().obtainStyledAttributes(null, new int[] { 16843531 }, 16843470, 0);
    Drawable localDrawable = localTypedArray.getDrawable(0);
    localTypedArray.recycle();
    return localDrawable;
  }
  
  public void a(int paramInt)
  {
    ActionBar localActionBar = a.getActionBar();
    if (localActionBar != null) {
      localActionBar.setHomeActionContentDescription(paramInt);
    }
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
 * Qualified Name:     android.support.v7.app.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */