package com.yelp.android.ui.activities.nearby;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.l;
import android.support.v4.app.n;
import android.support.v4.app.o;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.h;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.google.android.gms.maps.MapView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.serializable.f;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.map.YelpMap;
import com.yelp.android.ui.map.e.a;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.util.w;

public abstract class ComboMapListActivity<T extends f>
  extends YelpActivity
  implements ComboListFragment.a<T>, ComboMapFragment.a<T>
{
  private ComboMapFragment<T> a;
  protected boolean b;
  private AnimationFrameLayout c;
  private RelativeLayout d;
  private ViewPager e;
  private boolean f = false;
  private ComboMapListActivity<T>.b g;
  private ComboMapListActivity<T>.a h;
  private ComboMapListActivity<T>.c i;
  private View j;
  private boolean k = false;
  private PanelLoading l;
  
  protected abstract w<?> a(int paramInt);
  
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
        localComboListFragment.i();
      }
    }
    else {
      return;
    }
    localComboListFragment.j();
  }
  
  protected abstract void b(T paramT);
  
  public void b(ComboListFragment<T> paramComboListFragment)
  {
    int m = paramComboListFragment.f();
    c.setTopThreshold(0);
    c.setBottomThreshold(d.getMeasuredHeight() - m);
    if (f) {
      c.a();
    }
    for (;;)
    {
      m = d.getHeight();
      int n = paramComboListFragment.g();
      j.setLayoutParams(new RelativeLayout.LayoutParams(-1, m - n));
      a.a(paramComboListFragment.h());
      ViewGroup.MarginLayoutParams localMarginLayoutParams = new ViewGroup.MarginLayoutParams(l.getLayoutParams());
      topMargin = paramComboListFragment.h();
      l.setLayoutParams(new RelativeLayout.LayoutParams(localMarginLayoutParams));
      return;
      c.b();
    }
  }
  
  public ListAdapter c(ComboListFragment<T> paramComboListFragment)
  {
    return a(paramComboListFragment.e());
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
  
  public e.a<T> i()
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
    Object localObject = i.a(e, e.getCurrentItem());
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
      g = new b(null);
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
    setContentView(2130903184);
    if (paramBundle != null) {
      f = paramBundle.getBoolean("map_expanded");
    }
    if (g == null) {
      g = new b(null);
    }
    h = new a(null);
    c = ((AnimationFrameLayout)findViewById(2131690113));
    e = ((ViewPager)findViewById(2131690114));
    d = ((RelativeLayout)findViewById(2131689503));
    j = findViewById(2131690116);
    l = ((PanelLoading)findViewById(2131690115));
    j.setOnTouchListener(new View.OnTouchListener()
    {
      @SuppressLint({"ClickableViewAccessibility"})
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        paramAnonymousView = ComboMapListActivity.a(ComboMapListActivity.this).b().getMapView();
        if (paramAnonymousView == null) {
          return false;
        }
        paramAnonymousView.requestFocusFromTouch();
        paramAnonymousView.dispatchTouchEvent(paramAnonymousMotionEvent);
        return true;
      }
    });
    i = new c(getSupportFragmentManager());
    e.setAdapter(i);
    e.setOnPageChangeListener(new ViewPager.h()
    {
      public void b(int paramAnonymousInt)
      {
        ComboMapListActivity.this.b(paramAnonymousInt);
      }
    });
    e.setOnTouchListener(new View.OnTouchListener()
    {
      @SuppressLint({"ClickableViewAccessibility"})
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        return ComboMapListActivity.b(ComboMapListActivity.this).c();
      }
    });
    c.setSlideFrameCallback(g);
  }
  
  @SuppressLint({"CommitTransaction"})
  protected void onResumeFragments()
  {
    super.onResumeFragments();
    if (a == null)
    {
      a = ((ComboMapFragment)getSupportFragmentManager().a("map_tag"));
      if (a == null)
      {
        a = new ComboMapFragment();
        a.a(this);
        getSupportFragmentManager().a().a(2131690112, a, "map_tag").a();
      }
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("map_expanded", f);
  }
  
  private class a
    implements e.a<T>
  {
    private a() {}
    
    public void a(T paramT)
    {
      ComboMapListActivity.this.a(paramT);
    }
    
    public void b(T paramT)
    {
      ComboMapListActivity.this.b(paramT);
    }
  }
  
  private class b
    implements AnimationFrameLayout.a, ComboListFragment.b<T>
  {
    private float b;
    private boolean c = false;
    private int d = 0;
    private boolean e;
    private VelocityTracker f;
    
    private b() {}
    
    public void a()
    {
      ComboMapListActivity.a(ComboMapListActivity.this).e();
      ComboMapListActivity.e(ComboMapListActivity.this).setVisibility(0);
      ComboMapListActivity.a(ComboMapListActivity.this, true);
      ComboListFragment localComboListFragment = l();
      d();
      if (localComboListFragment != null) {
        localComboListFragment.i();
      }
    }
    
    public void a(ComboListFragment<T> paramComboListFragment)
    {
      paramComboListFragment.d(0);
      if (ComboMapListActivity.c(ComboMapListActivity.this))
      {
        ComboMapListActivity.d(ComboMapListActivity.this).b(5000.0F);
        return;
      }
      ComboMapListActivity.a(ComboMapListActivity.this).e();
      ComboMapListActivity.d(ComboMapListActivity.this).a(5000.0F);
    }
    
    public void a(ComboListFragment<T> paramComboListFragment, Object paramObject)
    {
      ComboMapListActivity.this.a(paramComboListFragment, paramObject);
    }
    
    public boolean a(MotionEvent paramMotionEvent)
    {
      switch (paramMotionEvent.getAction())
      {
      default: 
        return false;
      }
      e = true;
      b = true;
      return false;
    }
    
    public void b()
    {
      ComboMapListActivity.a(ComboMapListActivity.this).c();
      ComboMapListActivity.e(ComboMapListActivity.this).setVisibility(8);
      ComboMapListActivity.a(ComboMapListActivity.this, false);
      ComboListFragment localComboListFragment = l();
      if (localComboListFragment != null) {
        localComboListFragment.j();
      }
    }
    
    @SuppressLint({"NewApi"})
    public boolean b(MotionEvent paramMotionEvent)
    {
      switch (paramMotionEvent.getAction())
      {
      case 0: 
      default: 
        return false;
      case 1: 
      case 3: 
        return d();
      }
      if (!c)
      {
        b = paramMotionEvent.getRawY();
        d = ComboMapListActivity.d(ComboMapListActivity.this).getTranslation();
        c = true;
        e = true;
        f = VelocityTracker.obtain();
        f.clear();
      }
      int i = ViewConfiguration.get(ComboMapListActivity.this).getScaledTouchSlop();
      if ((e) && (Math.abs(paramMotionEvent.getRawY() - b) < i)) {
        return true;
      }
      b = false;
      e = false;
      i = (int)(paramMotionEvent.getRawY() - b + d);
      if (i <= 0)
      {
        b();
        ComboMapListActivity.d(ComboMapListActivity.this).setTranslation(0);
        c = false;
        return false;
      }
      if (i > 0) {
        ComboMapListActivity.a(ComboMapListActivity.this).e();
      }
      int j = ComboMapListActivity.d(ComboMapListActivity.this).getBottomThreshold();
      if (i >= j)
      {
        ComboMapListActivity.d(ComboMapListActivity.this).setTranslation(j);
        return true;
      }
      ComboMapListActivity.d(ComboMapListActivity.this).setTranslation(i);
      MotionEvent localMotionEvent = MotionEvent.obtain(paramMotionEvent);
      localMotionEvent.setLocation(paramMotionEvent.getRawX(), paramMotionEvent.getRawY());
      f.addMovement(localMotionEvent);
      localMotionEvent.recycle();
      return true;
    }
    
    public boolean c()
    {
      return c;
    }
    
    public boolean d()
    {
      if ((!c) || (e))
      {
        c = false;
        if (f != null)
        {
          f.recycle();
          f = null;
        }
        return false;
      }
      c = false;
      f.computeCurrentVelocity(1000);
      float f1 = f.getYVelocity();
      if (f1 < 0.0F) {
        ComboMapListActivity.d(ComboMapListActivity.this).b(f1);
      }
      for (;;)
      {
        f.recycle();
        f = null;
        return true;
        ComboMapListActivity.d(ComboMapListActivity.this).a(f1);
        ComboListFragment localComboListFragment = l();
        if (localComboListFragment != null) {
          localComboListFragment.i();
        }
      }
    }
  }
  
  private class c
    extends n
  {
    public c(l paraml)
    {
      super();
    }
    
    public Fragment a(int paramInt)
    {
      ComboListFragment localComboListFragment = ComboListFragment.a(paramInt, ComboMapListActivity.c(ComboMapListActivity.this));
      localComboListFragment.a(ComboMapListActivity.b(ComboMapListActivity.this));
      localComboListFragment.a(ComboMapListActivity.this);
      return localComboListFragment;
    }
    
    public int b()
    {
      return g();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.ComboMapListActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */