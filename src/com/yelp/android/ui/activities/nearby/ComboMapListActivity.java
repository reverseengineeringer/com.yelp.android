package com.yelp.android.ui.activities.nearby;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.serializable.by;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.map.f;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.util.au;

public abstract class ComboMapListActivity<T extends by>
  extends YelpActivity
  implements h<T>, l<T>
{
  private ComboMapFragment<T> a;
  protected boolean b;
  private AnimationFrameLayout c;
  private RelativeLayout d;
  private ViewPager e;
  private boolean f = false;
  private ComboMapListActivity<T>.q g;
  private ComboMapListActivity<T>.p h;
  private ComboMapListActivity<T>.r i;
  private View j;
  private boolean k = false;
  private PanelLoading l;
  
  protected abstract au<?> a(int paramInt);
  
  protected abstract void a(T paramT);
  
  public void a(ComboListFragment<T> paramComboListFragment)
  {
    if (!k)
    {
      h();
      k = true;
    }
  }
  
  protected abstract void a(ComboListFragment<T> paramComboListFragment, Object paramObject);
  
  protected void b(int paramInt)
  {
    ComboListFragment localComboListFragment = l();
    if (localComboListFragment != null)
    {
      if (f) {
        localComboListFragment.h();
      }
    }
    else {
      return;
    }
    localComboListFragment.i();
  }
  
  protected abstract void b(T paramT);
  
  public void b(ComboListFragment<T> paramComboListFragment)
  {
    int m = paramComboListFragment.e();
    c.setTopThreshold(0);
    c.setBottomThreshold(d.getMeasuredHeight() - m);
    if (f) {
      c.a();
    }
    for (;;)
    {
      m = d.getHeight();
      int n = paramComboListFragment.f();
      j.setLayoutParams(new RelativeLayout.LayoutParams(-1, m - n));
      a.a(paramComboListFragment.g());
      ViewGroup.MarginLayoutParams localMarginLayoutParams = new ViewGroup.MarginLayoutParams(l.getLayoutParams());
      topMargin = paramComboListFragment.g();
      l.setLayoutParams(new RelativeLayout.LayoutParams(localMarginLayoutParams));
      return;
      c.b();
    }
  }
  
  public ListAdapter c(ComboListFragment<T> paramComboListFragment)
  {
    return a(paramComboListFragment.d());
  }
  
  public void c() {}
  
  protected void d() {}
  
  protected int g()
  {
    return 1;
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public void h() {}
  
  public f<T> i()
  {
    return h;
  }
  
  public ComboMapFragment<T> j()
  {
    return a;
  }
  
  public ViewPager k()
  {
    return e;
  }
  
  public ComboListFragment<T> l()
  {
    if (i == null) {
      return null;
    }
    Object localObject = i.instantiateItem(e, e.getCurrentItem());
    if ((localObject instanceof ComboListFragment)) {
      return (ComboListFragment)localObject;
    }
    return null;
  }
  
  public void m()
  {
    c.b(5000.0F);
    l.setVisibility(0);
  }
  
  public void n()
  {
    l.setVisibility(8);
  }
  
  public void onAttachFragment(Fragment paramFragment)
  {
    super.onAttachFragment(paramFragment);
    if ((paramFragment instanceof ComboMapFragment))
    {
      a = ((ComboMapFragment)paramFragment);
      a.a(this);
    }
    while (!(paramFragment instanceof ComboListFragment)) {
      return;
    }
    if (g == null) {
      g = new q(this, null);
    }
    ((ComboListFragment)paramFragment).a(g);
    ((ComboListFragment)paramFragment).a(this);
  }
  
  public void onBackPressed()
  {
    if (f)
    {
      c.b(5000.0F);
      return;
    }
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903175);
    if (paramBundle != null) {
      f = paramBundle.getBoolean("map_expanded");
    }
    if (g == null) {
      g = new q(this, null);
    }
    h = new p(this, null);
    c = ((AnimationFrameLayout)findViewById(2131493434));
    e = ((ViewPager)findViewById(2131493435));
    d = ((RelativeLayout)findViewById(2131492893));
    j = findViewById(2131493437);
    l = ((PanelLoading)findViewById(2131493436));
    j.setOnTouchListener(new m(this));
    i = new r(this, getSupportFragmentManager());
    e.setAdapter(i);
    e.setOnPageChangeListener(new n(this));
    e.setOnTouchListener(new o(this));
    c.setSlideFrameCallback(g);
  }
  
  protected void onResumeFragments()
  {
    super.onResumeFragments();
    if (a == null)
    {
      a = ((ComboMapFragment)getSupportFragmentManager().findFragmentByTag("map_tag"));
      if (a == null)
      {
        a = new ComboMapFragment();
        a.a(this);
        getSupportFragmentManager().beginTransaction().add(2131493433, a, "map_tag").commit();
      }
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("map_expanded", f);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.ComboMapListActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */