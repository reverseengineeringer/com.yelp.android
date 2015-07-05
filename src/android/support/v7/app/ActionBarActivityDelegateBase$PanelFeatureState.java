package android.support.v7.app;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.support.v7.internal.view.menu.g;
import android.support.v7.internal.view.menu.y;
import android.support.v7.internal.view.menu.z;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.yelp.android.g.b;
import com.yelp.android.g.k;
import com.yelp.android.g.l;

final class ActionBarActivityDelegateBase$PanelFeatureState
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
  android.support.v7.internal.view.menu.i j;
  g k;
  Context l;
  boolean m;
  boolean n;
  boolean o;
  public boolean p;
  boolean q;
  boolean r;
  Bundle s;
  
  ActionBarActivityDelegateBase$PanelFeatureState(int paramInt)
  {
    a = paramInt;
    q = false;
  }
  
  z a(y paramy)
  {
    if (j == null) {
      return null;
    }
    if (k == null)
    {
      k = new g(l, com.yelp.android.g.i.abc_list_menu_item_layout);
      k.a(paramy);
      j.a(k);
    }
    return k.a(g);
  }
  
  void a(Context paramContext)
  {
    TypedValue localTypedValue = new TypedValue();
    Resources.Theme localTheme = paramContext.getResources().newTheme();
    localTheme.setTo(paramContext.getTheme());
    localTheme.resolveAttribute(b.actionBarPopupTheme, localTypedValue, true);
    if (resourceId != 0) {
      localTheme.applyStyle(resourceId, true);
    }
    localTheme.resolveAttribute(b.panelMenuListTheme, localTypedValue, true);
    if (resourceId != 0) {
      localTheme.applyStyle(resourceId, true);
    }
    for (;;)
    {
      paramContext = new ContextThemeWrapper(paramContext, 0);
      paramContext.getTheme().setTo(localTheme);
      l = paramContext;
      paramContext = paramContext.obtainStyledAttributes(l.Theme);
      b = paramContext.getResourceId(l.Theme_panelBackground, 0);
      f = paramContext.getResourceId(l.Theme_android_windowAnimationStyle, 0);
      paramContext.recycle();
      return;
      localTheme.applyStyle(k.Theme_AppCompat_CompactMenu, true);
    }
  }
  
  void a(android.support.v7.internal.view.menu.i parami)
  {
    if (parami == j) {}
    do
    {
      return;
      if (j != null) {
        j.b(k);
      }
      j = parami;
    } while ((parami == null) || (k == null));
    parami.a(k);
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
    } while (k.a().getCount() > 0);
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.ActionBarActivityDelegateBase.PanelFeatureState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */