package com.yelp.android.l;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.view.as;
import android.support.v4.view.n;
import android.support.v7.internal.view.menu.m;
import android.support.v7.internal.view.menu.o;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import com.yelp.android.g.l;
import java.lang.reflect.Constructor;

class g
{
  private Menu b;
  private int c;
  private int d;
  private int e;
  private int f;
  private boolean g;
  private boolean h;
  private boolean i;
  private int j;
  private int k;
  private CharSequence l;
  private CharSequence m;
  private int n;
  private char o;
  private char p;
  private int q;
  private boolean r;
  private boolean s;
  private boolean t;
  private int u;
  private int v;
  private String w;
  private String x;
  private String y;
  private n z;
  
  public g(e parame, Menu paramMenu)
  {
    b = paramMenu;
    a();
  }
  
  private char a(String paramString)
  {
    if (paramString == null) {
      return '\000';
    }
    return paramString.charAt(0);
  }
  
  private <T> T a(String paramString, Class<?>[] paramArrayOfClass, Object[] paramArrayOfObject)
  {
    try
    {
      paramArrayOfClass = e.a(a).getClassLoader().loadClass(paramString).getConstructor(paramArrayOfClass).newInstance(paramArrayOfObject);
      return paramArrayOfClass;
    }
    catch (Exception paramArrayOfClass)
    {
      Log.w("SupportMenuInflater", "Cannot instantiate class: " + paramString, paramArrayOfClass);
    }
    return null;
  }
  
  private void a(MenuItem paramMenuItem)
  {
    int i1 = 1;
    Object localObject = paramMenuItem.setChecked(r).setVisible(s).setEnabled(t);
    if (q >= 1) {}
    for (boolean bool = true;; bool = false)
    {
      ((MenuItem)localObject).setCheckable(bool).setTitleCondensed(m).setIcon(n).setAlphabeticShortcut(o).setNumericShortcut(p);
      if (u >= 0) {
        as.a(paramMenuItem, u);
      }
      if (y == null) {
        break label162;
      }
      if (!e.a(a).isRestricted()) {
        break;
      }
      throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
    }
    paramMenuItem.setOnMenuItemClickListener(new f(e.c(a), y));
    label162:
    if ((paramMenuItem instanceof m)) {
      localObject = (m)paramMenuItem;
    }
    if (q >= 2)
    {
      if ((paramMenuItem instanceof m)) {
        ((m)paramMenuItem).a(true);
      }
    }
    else
    {
      if (w == null) {
        break label297;
      }
      as.a(paramMenuItem, (View)a(w, e.b(), e.d(a)));
    }
    for (;;)
    {
      if (v > 0)
      {
        if (i1 != 0) {
          break label286;
        }
        as.b(paramMenuItem, v);
      }
      for (;;)
      {
        if (z != null) {
          as.a(paramMenuItem, z);
        }
        return;
        if (!(paramMenuItem instanceof o)) {
          break;
        }
        ((o)paramMenuItem).a(true);
        break;
        label286:
        Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
      }
      label297:
      i1 = 0;
    }
  }
  
  public void a()
  {
    c = 0;
    d = 0;
    e = 0;
    f = 0;
    g = true;
    h = true;
  }
  
  public void a(AttributeSet paramAttributeSet)
  {
    paramAttributeSet = e.a(a).obtainStyledAttributes(paramAttributeSet, l.MenuGroup);
    c = paramAttributeSet.getResourceId(l.MenuGroup_android_id, 0);
    d = paramAttributeSet.getInt(l.MenuGroup_android_menuCategory, 0);
    e = paramAttributeSet.getInt(l.MenuGroup_android_orderInCategory, 0);
    f = paramAttributeSet.getInt(l.MenuGroup_android_checkableBehavior, 0);
    g = paramAttributeSet.getBoolean(l.MenuGroup_android_visible, true);
    h = paramAttributeSet.getBoolean(l.MenuGroup_android_enabled, true);
    paramAttributeSet.recycle();
  }
  
  public void b()
  {
    i = true;
    a(b.add(c, j, k, l));
  }
  
  public void b(AttributeSet paramAttributeSet)
  {
    int i2 = 1;
    paramAttributeSet = e.a(a).obtainStyledAttributes(paramAttributeSet, l.MenuItem);
    j = paramAttributeSet.getResourceId(l.MenuItem_android_id, 0);
    k = (paramAttributeSet.getInt(l.MenuItem_android_menuCategory, d) & 0xFFFF0000 | paramAttributeSet.getInt(l.MenuItem_android_orderInCategory, e) & 0xFFFF);
    l = paramAttributeSet.getText(l.MenuItem_android_title);
    m = paramAttributeSet.getText(l.MenuItem_android_titleCondensed);
    n = paramAttributeSet.getResourceId(l.MenuItem_android_icon, 0);
    o = a(paramAttributeSet.getString(l.MenuItem_android_alphabeticShortcut));
    p = a(paramAttributeSet.getString(l.MenuItem_android_numericShortcut));
    int i1;
    if (paramAttributeSet.hasValue(l.MenuItem_android_checkable)) {
      if (paramAttributeSet.getBoolean(l.MenuItem_android_checkable, false))
      {
        i1 = 1;
        q = i1;
        label156:
        r = paramAttributeSet.getBoolean(l.MenuItem_android_checked, false);
        s = paramAttributeSet.getBoolean(l.MenuItem_android_visible, g);
        t = paramAttributeSet.getBoolean(l.MenuItem_android_enabled, h);
        u = paramAttributeSet.getInt(l.MenuItem_showAsAction, -1);
        y = paramAttributeSet.getString(l.MenuItem_android_onClick);
        v = paramAttributeSet.getResourceId(l.MenuItem_actionLayout, 0);
        w = paramAttributeSet.getString(l.MenuItem_actionViewClass);
        x = paramAttributeSet.getString(l.MenuItem_actionProviderClass);
        if (x == null) {
          break label333;
        }
        i1 = i2;
        label264:
        if ((i1 == 0) || (v != 0) || (w != null)) {
          break label338;
        }
      }
    }
    for (z = ((n)a(x, e.a(), e.b(a)));; z = null)
    {
      paramAttributeSet.recycle();
      i = false;
      return;
      i1 = 0;
      break;
      q = f;
      break label156;
      label333:
      i1 = 0;
      break label264;
      label338:
      if (i1 != 0) {
        Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
      }
    }
  }
  
  public SubMenu c()
  {
    i = true;
    SubMenu localSubMenu = b.addSubMenu(c, j, k, l);
    a(localSubMenu.getItem());
    return localSubMenu;
  }
  
  public boolean d()
  {
    return i;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.l.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */