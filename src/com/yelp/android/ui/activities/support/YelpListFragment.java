package com.yelp.android.ui.activities.support;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import com.yelp.android.services.ShareFormatter;
import com.yelp.android.ui.f;
import com.yelp.android.ui.panels.PanelError.a;
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
  private List<View> c;
  private boolean d = false;
  private int e;
  private int f;
  private ListAdapter g;
  
  private void f()
  {
    if (d)
    {
      m().f();
      return;
    }
    m().setOnLoadNeeded(new YelpListFragment.1(this));
  }
  
  public void H_()
  {
    super.H_();
    if (getView() != null) {
      c(C());
    }
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
  
  protected void a(ShareFormatter paramShareFormatter)
  {
    ((YelpActivity)getActivity()).showShareSheet(paramShareFormatter);
  }
  
  public void a(ErrorType paramErrorType, PanelError.a parama)
  {
    super.a(paramErrorType, parama);
    if (getView() != null) {
      c(A());
    }
  }
  
  protected void b() {}
  
  public void b(int paramInt)
  {
    e = paramInt;
  }
  
  public void b(boolean paramBoolean)
  {
    d = paramBoolean;
    try
    {
      f();
      return;
    }
    catch (IllegalStateException localIllegalStateException) {}
  }
  
  public void c(int paramInt)
  {
    e += paramInt;
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
  
  protected void e(View paramView)
  {
    try
    {
      m().addFooterView(paramView);
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      c.add(paramView);
    }
  }
  
  public ScrollToLoadListView m()
  {
    return (ScrollToLoadListView)super.s();
  }
  
  public void n()
  {
    b(true);
  }
  
  public void o()
  {
    b(false);
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (paramBundle != null)
    {
      f = paramBundle.getInt("limit", 0);
      e = paramBundle.getInt("offset", 0);
    }
    f();
    c(a);
    paramBundle = b.iterator();
    View localView;
    while (paramBundle.hasNext())
    {
      localView = (View)paramBundle.next();
      m().addHeaderView(localView);
    }
    paramBundle = c.iterator();
    while (paramBundle.hasNext())
    {
      localView = (View)paramBundle.next();
      m().addFooterView(localView);
    }
    m().setOnItemClickListener(this);
    if (g != null) {
      a(g);
    }
    b.clear();
    c.clear();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      f = paramBundle.getInt("limit", 20);
      e = paramBundle.getInt("offset", 0);
      d = paramBundle.getBoolean("completed", false);
    }
    for (;;)
    {
      b = new ArrayList();
      c = new ArrayList();
      return;
      f = 20;
      e = 0;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903249, paramViewGroup, false);
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    a(m(), paramView, paramInt, paramLong);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    f.a(getActivity(), paramMenuItem);
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("limit", f);
    paramBundle.putInt("offset", e);
    paramBundle.putBoolean("completed", d);
  }
  
  public int p()
  {
    return e;
  }
  
  public void p_()
  {
    b(0);
    b();
  }
  
  public ListAdapter q()
  {
    return g;
  }
  
  protected boolean r()
  {
    return d;
  }
  
  protected void u_()
  {
    m().setDividerHeight(0);
    m().setOnItemClickListener(this);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.YelpListFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */