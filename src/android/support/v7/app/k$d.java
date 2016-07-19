package android.support.v7.app;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.support.v7.internal.view.menu.e;
import android.support.v7.internal.view.menu.f;
import android.support.v7.internal.view.menu.l.a;
import android.support.v7.internal.view.menu.m;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.yelp.android.j.a.a;
import com.yelp.android.j.a.h;
import com.yelp.android.j.a.j;
import com.yelp.android.j.a.k;
import com.yelp.android.p.b;

final class k$d
{
  int a;
  int b;
  int c;
  int d;
  int e;
  int f;
  ViewGroup g;
  View h;
  View i;
  f j;
  e k;
  Context l;
  boolean m;
  boolean n;
  boolean o;
  public boolean p;
  boolean q;
  boolean r;
  Bundle s;
  
  k$d(int paramInt)
  {
    a = paramInt;
    q = false;
  }
  
  m a(l.a parama)
  {
    if (j == null) {
      return null;
    }
    if (k == null)
    {
      k = new e(l, a.h.abc_list_menu_item_layout);
      k.a(parama);
      j.a(k);
    }
    return k.a(g);
  }
  
  void a(Context paramContext)
  {
    TypedValue localTypedValue = new TypedValue();
    Resources.Theme localTheme = paramContext.getResources().newTheme();
    localTheme.setTo(paramContext.getTheme());
    localTheme.resolveAttribute(a.a.actionBarPopupTheme, localTypedValue, true);
    if (resourceId != 0) {
      localTheme.applyStyle(resourceId, true);
    }
    localTheme.resolveAttribute(a.a.panelMenuListTheme, localTypedValue, true);
    if (resourceId != 0) {
      localTheme.applyStyle(resourceId, true);
    }
    for (;;)
    {
      paramContext = new b(paramContext, 0);
      paramContext.getTheme().setTo(localTheme);
      l = paramContext;
      paramContext = paramContext.obtainStyledAttributes(a.k.Theme);
      b = paramContext.getResourceId(a.k.Theme_panelBackground, 0);
      f = paramContext.getResourceId(a.k.Theme_android_windowAnimationStyle, 0);
      paramContext.recycle();
      return;
      localTheme.applyStyle(a.j.Theme_AppCompat_CompactMenu, true);
    }
  }
  
  void a(f paramf)
  {
    if (paramf == j) {}
    do
    {
      return;
      if (j != null) {
        j.b(k);
      }
      j = paramf;
    } while ((paramf == null) || (k == null));
    paramf.a(k);
  }
  
  public boolean a()
  {
    boolean bool2 = true;
    boolean bool1;
    if (h == null) {
      bool1 = false;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (i != null);
      bool1 = bool2;
    } while (k.d().getCount() > 0);
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.k.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */