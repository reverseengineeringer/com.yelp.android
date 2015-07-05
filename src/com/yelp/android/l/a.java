package com.yelp.android.l;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.support.v4.view.cx;
import android.util.DisplayMetrics;
import android.view.ViewConfiguration;
import com.yelp.android.g.b;
import com.yelp.android.g.c;
import com.yelp.android.g.e;
import com.yelp.android.g.h;
import com.yelp.android.g.l;

public class a
{
  private Context a;
  
  private a(Context paramContext)
  {
    a = paramContext;
  }
  
  public static a a(Context paramContext)
  {
    return new a(paramContext);
  }
  
  public int a()
  {
    return a.getResources().getInteger(h.abc_max_action_buttons);
  }
  
  public boolean b()
  {
    if (Build.VERSION.SDK_INT >= 19) {}
    while (!cx.b(ViewConfiguration.get(a))) {
      return true;
    }
    return false;
  }
  
  public int c()
  {
    return a.getResources().getDisplayMetrics().widthPixels / 2;
  }
  
  public boolean d()
  {
    if (a.getApplicationInfo().targetSdkVersion >= 16) {
      return a.getResources().getBoolean(c.abc_action_bar_embed_tabs);
    }
    return a.getResources().getBoolean(c.abc_action_bar_embed_tabs_pre_jb);
  }
  
  public int e()
  {
    TypedArray localTypedArray = a.obtainStyledAttributes(null, l.ActionBar, b.actionBarStyle, 0);
    int j = localTypedArray.getLayoutDimension(l.ActionBar_height, 0);
    Resources localResources = a.getResources();
    int i = j;
    if (!d()) {
      i = Math.min(j, localResources.getDimensionPixelSize(e.abc_action_bar_stacked_max_height));
    }
    localTypedArray.recycle();
    return i;
  }
  
  public boolean f()
  {
    return a.getApplicationInfo().targetSdkVersion < 14;
  }
  
  public int g()
  {
    return a.getResources().getDimensionPixelSize(e.abc_action_bar_stacked_tab_max_width);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.l.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */