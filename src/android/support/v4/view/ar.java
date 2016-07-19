package android.support.v4.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.view.View;
import android.view.View.OnApplyWindowInsetsListener;
import android.view.WindowInsets;

class ar
{
  public static bg a(View paramView, bg parambg)
  {
    Object localObject = parambg;
    if ((parambg instanceof bh))
    {
      WindowInsets localWindowInsets = ((bh)parambg).g();
      paramView = paramView.onApplyWindowInsets(localWindowInsets);
      localObject = parambg;
      if (paramView != localWindowInsets) {
        localObject = new bh(paramView);
      }
    }
    return (bg)localObject;
  }
  
  public static void a(View paramView)
  {
    paramView.requestApplyInsets();
  }
  
  public static void a(View paramView, float paramFloat)
  {
    paramView.setElevation(paramFloat);
  }
  
  static void a(View paramView, ColorStateList paramColorStateList)
  {
    paramView.setBackgroundTintList(paramColorStateList);
  }
  
  static void a(View paramView, PorterDuff.Mode paramMode)
  {
    paramView.setBackgroundTintMode(paramMode);
  }
  
  public static void a(View paramView, ab paramab)
  {
    paramView.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener()
    {
      public WindowInsets onApplyWindowInsets(View paramAnonymousView, WindowInsets paramAnonymousWindowInsets)
      {
        paramAnonymousWindowInsets = new bh(paramAnonymousWindowInsets);
        return ((bh)a.a(paramAnonymousView, paramAnonymousWindowInsets)).g();
      }
    });
  }
  
  public static float b(View paramView)
  {
    return paramView.getElevation();
  }
  
  public static bg b(View paramView, bg parambg)
  {
    Object localObject = parambg;
    if ((parambg instanceof bh))
    {
      WindowInsets localWindowInsets = ((bh)parambg).g();
      paramView = paramView.dispatchApplyWindowInsets(localWindowInsets);
      localObject = parambg;
      if (paramView != localWindowInsets) {
        localObject = new bh(paramView);
      }
    }
    return (bg)localObject;
  }
  
  public static float c(View paramView)
  {
    return paramView.getTranslationZ();
  }
  
  public static boolean d(View paramView)
  {
    return paramView.isNestedScrollingEnabled();
  }
  
  public static void e(View paramView)
  {
    paramView.stopNestedScroll();
  }
  
  public static float f(View paramView)
  {
    return paramView.getZ();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */