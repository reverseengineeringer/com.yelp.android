package com.yelp.android.ui.activities.support;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import com.yelp.android.ui.k;
import com.yelp.android.ui.panels.aa;
import com.yelp.android.ui.util.AndroidListFragment;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class YelpListFragment
  extends AndroidListFragment
  implements AdapterView.OnItemClickListener
{
  private View a;
  private List<View> b;
  private boolean c = false;
  private int d;
  private int e;
  private ListAdapter g;
  
  private void e()
  {
    if (c)
    {
      m().f();
      return;
    }
    m().setOnLoadNeeded(new q(this));
  }
  
  public void a(ListAdapter paramListAdapter)
  {
    g = paramListAdapter;
    try
    {
      m().setAdapter(g);
      return;
    }
    catch (IllegalStateException paramListAdapter) {}
  }
  
  public void a(ErrorType paramErrorType, aa paramaa)
  {
    super.a(paramErrorType, paramaa);
    if (getView() != null) {
      c(y());
    }
  }
  
  public void a(boolean paramBoolean)
  {
    c = paramBoolean;
    try
    {
      e();
      return;
    }
    catch (IllegalStateException localIllegalStateException) {}
  }
  
  public void a_()
  {
    b(0);
    b();
  }
  
  protected void b() {}
  
  public void b(int paramInt)
  {
    d = paramInt;
  }
  
  public void c(int paramInt)
  {
    d += paramInt;
  }
  
  protected void c(View paramView)
  {
    a = paramView;
    try
    {
      if (m().getEmptyView() != paramView)
      {
        m().setEmptyView(null);
        m().setEmptyView(paramView);
      }
      return;
    }
    catch (IllegalStateException paramView) {}
  }
  
  protected void d(View paramView)
  {
    try
    {
      m().addHeaderView(paramView);
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      b.add(paramView);
    }
  }
  
  public void i_()
  {
    super.i_();
    if (getView() != null) {
      c(B());
    }
  }
  
  protected void j_()
  {
    m().setDividerHeight(0);
    m().setOnItemClickListener(this);
  }
  
  public ScrollToLoadListView m()
  {
    return (ScrollToLoadListView)super.t();
  }
  
  public void n()
  {
    a(true);
  }
  
  public void o()
  {
    a(false);
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (paramBundle != null)
    {
      e = paramBundle.getInt("limit", 0);
      d = paramBundle.getInt("offset", 0);
    }
    e();
    c(a);
    paramBundle = b.iterator();
    while (paramBundle.hasNext())
    {
      View localView = (View)paramBundle.next();
      m().addHeaderView(localView);
    }
    m().setOnItemClickListener(this);
    if (g != null) {
      a(g);
    }
    b.clear();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      e = paramBundle.getInt("limit", 20);
      d = paramBundle.getInt("offset", 0);
      c = paramBundle.getBoolean("completed", false);
    }
    for (;;)
    {
      b = new ArrayList();
      return;
      e = 20;
      d = 0;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903223, paramViewGroup, false);
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    a(m(), paramView, paramInt, paramLong);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    k.a(getActivity(), paramMenuItem);
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("limit", e);
    paramBundle.putInt("offset", d);
    paramBundle.putBoolean("completed", c);
  }
  
  public int p()
  {
    return d;
  }
  
  public int q()
  {
    return e;
  }
  
  public ListAdapter r()
  {
    return g;
  }
  
  protected boolean s()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.YelpListFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */