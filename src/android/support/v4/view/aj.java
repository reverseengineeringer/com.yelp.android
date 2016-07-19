package android.support.v4.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.view.View;
import java.lang.reflect.Field;

class aj
{
  private static Field a;
  private static boolean b;
  private static Field c;
  private static boolean d;
  
  static void a(View paramView, ColorStateList paramColorStateList)
  {
    if ((paramView instanceof af)) {
      ((af)paramView).setSupportBackgroundTintList(paramColorStateList);
    }
  }
  
  static void a(View paramView, PorterDuff.Mode paramMode)
  {
    if ((paramView instanceof af)) {
      ((af)paramView).setSupportBackgroundTintMode(paramMode);
    }
  }
  
  static boolean a(View paramView)
  {
    return (paramView.getWidth() > 0) && (paramView.getHeight() > 0);
  }
  
  static int b(View paramView)
  {
    if (!b) {}
    try
    {
      a = View.class.getDeclaredField("mMinWidth");
      a.setAccessible(true);
      b = true;
      if (a != null) {
        try
        {
          int i = ((Integer)a.get(paramView)).intValue();
          return i;
        }
        catch (Exception paramView) {}
      }
      return 0;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      for (;;) {}
    }
  }
  
  static int c(View paramView)
  {
    if (!d) {}
    try
    {
      c = View.class.getDeclaredField("mMinHeight");
      c.setAccessible(true);
      d = true;
      if (c != null) {
        try
        {
          int i = ((Integer)c.get(paramView)).intValue();
          return i;
        }
        catch (Exception paramView) {}
      }
      return 0;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      for (;;) {}
    }
  }
  
  static boolean d(View paramView)
  {
    return paramView.getWindowToken() != null;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */