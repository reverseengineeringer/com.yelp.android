package com.yelp.android.ui.activities.support;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v4.widget.SwipeRefreshLayout.a;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.ui.util.ScrollToLoadListView;

public class YelpSwipeRefreshListFragment
  extends YelpListFragment
  implements SwipeRefreshLayout.a
{
  protected SwipeRefreshLayout i;
  
  public void a()
  {
    p_();
  }
  
  protected void a(View paramView)
  {
    if ((g()) && (j()))
    {
      k().addView(paramView);
      c(paramView);
      return;
    }
    super.a(paramView);
  }
  
  protected void a(ViewGroup paramViewGroup, View paramView, Bundle paramBundle)
  {
    paramViewGroup.removeView(paramView);
    i.addView(paramView, -1, -1);
    paramViewGroup.addView(i, -1, -1);
    i.setOnRefreshListener(this);
    i.setBackgroundColor(getResources().getColor(2131624261));
    i.setColorSchemeResources(new int[] { 2131624098, 2131624100, 2131624099, 2131624097 });
    i.a(false, 0, getResources().getDimensionPixelOffset(2131361962));
    if (paramBundle != null) {
      i.setRefreshing(paramBundle.getBoolean("is_refreshing", false));
    }
  }
  
  protected void b(View paramView)
  {
    if ((g()) && (j()))
    {
      k().removeView(paramView);
      c(null);
      return;
    }
    super.b(paramView);
  }
  
  public void c(boolean paramBoolean)
  {
    i.setRefreshing(paramBoolean);
  }
  
  protected boolean g()
  {
    return true;
  }
  
  public boolean j()
  {
    return i.a();
  }
  
  public SwipeRefreshLayout k()
  {
    return i;
  }
  
  public void l()
  {
    super.l();
    if (g()) {
      c(false);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = (ViewGroup)super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (g())
    {
      paramViewGroup = (ScrollToLoadListView)paramLayoutInflater.findViewById(16908298);
      i = new SwipeRefreshLayout(paramViewGroup.getContext());
      a(paramLayoutInflater, paramViewGroup, paramBundle);
    }
    return paramLayoutInflater;
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (g()) {
      paramBundle.putBoolean("is_refreshing", j());
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.YelpSwipeRefreshListFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */