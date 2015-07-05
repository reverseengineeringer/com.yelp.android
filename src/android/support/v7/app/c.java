package android.support.v7.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.ActionBarDrawerToggle.Delegate;
import android.support.v7.widget.Toolbar;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.yelp.android.g.l;
import com.yelp.android.i.h;
import com.yelp.android.m.a;
import com.yelp.android.m.b;

abstract class c
{
  final ActionBarActivity a;
  boolean b;
  boolean c;
  boolean d;
  boolean e;
  final h f = new d(this);
  private ActionBar g;
  private MenuInflater h;
  private h i;
  private boolean j;
  
  c(ActionBarActivity paramActionBarActivity)
  {
    a = paramActionBarActivity;
    i = f;
  }
  
  static c a(ActionBarActivity paramActionBarActivity)
  {
    if (Build.VERSION.SDK_INT >= 11) {
      return new o(paramActionBarActivity);
    }
    return new ActionBarActivityDelegateBase(paramActionBarActivity);
  }
  
  abstract ActionBar a();
  
  abstract View a(String paramString, Context paramContext, AttributeSet paramAttributeSet);
  
  abstract a a(b paramb);
  
  abstract void a(int paramInt);
  
  abstract void a(int paramInt, Menu paramMenu);
  
  abstract void a(Configuration paramConfiguration);
  
  void a(Bundle paramBundle)
  {
    paramBundle = a.obtainStyledAttributes(l.Theme);
    if (!paramBundle.hasValue(l.Theme_windowActionBar))
    {
      paramBundle.recycle();
      throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
    }
    if (paramBundle.getBoolean(l.Theme_windowActionBar, false)) {
      b = true;
    }
    if (paramBundle.getBoolean(l.Theme_windowActionBarOverlay, false)) {
      c = true;
    }
    if (paramBundle.getBoolean(l.Theme_windowActionModeOverlay, false)) {
      d = true;
    }
    e = paramBundle.getBoolean(l.Theme_android_windowIsFloating, false);
    paramBundle.recycle();
  }
  
  protected final void a(ActionBar paramActionBar)
  {
    g = paramActionBar;
  }
  
  abstract void a(Toolbar paramToolbar);
  
  abstract void a(View paramView);
  
  abstract void a(View paramView, ViewGroup.LayoutParams paramLayoutParams);
  
  final void a(h paramh)
  {
    if (paramh == null) {
      throw new IllegalArgumentException("callback can not be null");
    }
    i = paramh;
  }
  
  abstract void a(CharSequence paramCharSequence);
  
  abstract void a(boolean paramBoolean);
  
  abstract boolean a(int paramInt, KeyEvent paramKeyEvent);
  
  abstract boolean a(int paramInt, View paramView, Menu paramMenu);
  
  abstract boolean a(KeyEvent paramKeyEvent);
  
  boolean a(View paramView, Menu paramMenu)
  {
    if (Build.VERSION.SDK_INT < 16) {
      return a.onPrepareOptionsMenu(paramMenu);
    }
    return a.superOnPrepareOptionsPanel(paramView, paramMenu);
  }
  
  final ActionBar b()
  {
    if ((b) && (g == null)) {
      g = a();
    }
    return g;
  }
  
  abstract a b(b paramb);
  
  abstract void b(Bundle paramBundle);
  
  abstract void b(View paramView, ViewGroup.LayoutParams paramLayoutParams);
  
  abstract void b(boolean paramBoolean);
  
  abstract boolean b(int paramInt);
  
  abstract boolean b(int paramInt, Menu paramMenu);
  
  final ActionBar c()
  {
    return g;
  }
  
  abstract void c(int paramInt);
  
  abstract void c(boolean paramBoolean);
  
  abstract boolean c(int paramInt, Menu paramMenu);
  
  MenuInflater d()
  {
    if (h == null) {
      h = new com.yelp.android.l.e(m());
    }
    return h;
  }
  
  abstract void e();
  
  abstract void f();
  
  abstract void g();
  
  abstract boolean h();
  
  final ActionBarDrawerToggle.Delegate i()
  {
    return new e(this, null);
  }
  
  final r j()
  {
    return new e(this, null);
  }
  
  abstract int k();
  
  abstract void l();
  
  protected final Context m()
  {
    Context localContext = null;
    Object localObject = b();
    if (localObject != null) {
      localContext = ((ActionBar)localObject).f();
    }
    localObject = localContext;
    if (localContext == null) {
      localObject = a;
    }
    return (Context)localObject;
  }
  
  final h n()
  {
    return i;
  }
  
  final void o()
  {
    j = true;
  }
  
  final boolean p()
  {
    return j;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */