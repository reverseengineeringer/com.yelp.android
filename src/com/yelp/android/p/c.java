package com.yelp.android.p;

import android.content.Context;
import android.support.v7.internal.view.menu.f;
import android.support.v7.internal.view.menu.f.a;
import android.support.v7.internal.widget.ActionBarContextView;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import com.yelp.android.r.a;
import com.yelp.android.r.a.a;
import java.lang.ref.WeakReference;

public class c
  extends a
  implements f.a
{
  private Context a;
  private ActionBarContextView b;
  private a.a c;
  private WeakReference<View> d;
  private boolean e;
  private boolean f;
  private f g;
  
  public c(Context paramContext, ActionBarContextView paramActionBarContextView, a.a parama, boolean paramBoolean)
  {
    a = paramContext;
    b = paramActionBarContextView;
    c = parama;
    g = new f(paramActionBarContextView.getContext()).a(1);
    g.a(this);
    f = paramBoolean;
  }
  
  public MenuInflater a()
  {
    return new MenuInflater(b.getContext());
  }
  
  public void a(int paramInt)
  {
    b(a.getString(paramInt));
  }
  
  public void a(f paramf)
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
  
  public boolean a(f paramf, MenuItem paramMenuItem)
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
 * Qualified Name:     com.yelp.android.p.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */