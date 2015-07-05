package android.support.v7.app;

import android.app.ActionBar;
import android.app.Activity;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.Log;
import java.lang.reflect.Method;

class aa
{
  private static final int[] a = { 16843531 };
  
  public static Drawable a(Activity paramActivity)
  {
    paramActivity = paramActivity.obtainStyledAttributes(a);
    Drawable localDrawable = paramActivity.getDrawable(0);
    paramActivity.recycle();
    return localDrawable;
  }
  
  public static ab a(ab paramab, Activity paramActivity, int paramInt)
  {
    ab localab = paramab;
    if (paramab == null) {
      localab = new ab(paramActivity);
    }
    if (a != null) {}
    try
    {
      paramab = paramActivity.getActionBar();
      b.invoke(paramab, new Object[] { Integer.valueOf(paramInt) });
      if (Build.VERSION.SDK_INT <= 19) {
        paramab.setSubtitle(paramab.getSubtitle());
      }
      return localab;
    }
    catch (Exception paramab)
    {
      Log.w("ActionBarDrawerToggleHoneycomb", "Couldn't set content description via JB-MR2 API", paramab);
    }
    return localab;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */