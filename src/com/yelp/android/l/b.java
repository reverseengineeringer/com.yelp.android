package com.yelp.android.l;

import android.content.Context;
import android.support.v7.internal.view.menu.i;
import android.support.v7.internal.view.menu.j;
import android.support.v7.internal.widget.ActionBarContextView;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import com.yelp.android.m.a;
import java.lang.ref.WeakReference;

public class b
  extends a
  implements j
{
  private Context a;
  private ActionBarContextView b;
  private com.yelp.android.m.b c;
  private WeakReference<View> d;
  private boolean e;
  private boolean f;
  private i g;
  
  public b(Context paramContext, ActionBarContextView paramActionBarContextView, com.yelp.android.m.b paramb, boolean paramBoolean)
  {
    a = paramContext;
    b = paramActionBarContextView;
    c = paramb;
    g = new i(paramContext).a(1);
    g.a(this);
    f = paramBoolean;
  }
  
  public MenuInflater a()
  {
    return new MenuInflater(a);
  }
  
  public void a(int paramInt)
  {
    b(a.getString(paramInt));
  }
  
  public void a(i parami)
  {
    d();
    b.a();
  }
  
  public void a(View paramView)
  {
    b.setCustomView(paramView);
    if (paramView != null) {}
    for (paramView = new WeakReference(paramView);; paramView = null)
    {
      d = paramView;
      return;
    }
  }
  
  public void a(CharSequence paramCharSequence)
  {
    b.setSubtitle(paramCharSequence);
  }
  
  public void a(boolean paramBoolean)
  {
    super.a(paramBoolean);
    b.setTitleOptional(paramBoolean);
  }
  
  public boolean a(i parami, MenuItem paramMenuItem)
  {
    return c.a(this, paramMenuItem);
  }
  
  public Menu b()
  {
    return g;
  }
  
  public void b(int paramInt)
  {
    a(a.getString(paramInt));
  }
  
  public void b(CharSequence paramCharSequence)
  {
    b.setTitle(paramCharSequence);
  }
  
  public void c()
  {
    if (e) {
      return;
    }
    e = true;
    b.sendAccessibilityEvent(32);
    c.a(this);
  }
  
  public void d()
  {
    c.b(this, g);
  }
  
  public CharSequence f()
  {
    return b.getTitle();
  }
  
  public CharSequence g()
  {
    return b.getSubtitle();
  }
  
  public boolean h()
  {
    return b.d();
  }
  
  public View i()
  {
    if (d != null) {
      return (View)d.get();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.l.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */