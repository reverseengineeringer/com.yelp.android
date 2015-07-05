package com.yelp.android.ui.activities.support;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v4.widget.bw;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.ui.util.ScrollToLoadListView;

public class YelpSwipeRefreshListFragment
  extends YelpListFragment
  implements bw
{
  private SwipeRefreshLayout a;
  
  public void a()
  {
    a_();
  }
  
  protected void a(View paramView)
  {
    if ((c()) && (i()))
    {
      k().addView(paramView);
      c(paramView);
      return;
    }
    super.a(paramView);
  }
  
  protected void b(View paramView)
  {
    if ((c()) && (i()))
    {
      k().removeView(paramView);
      c(null);
      return;
    }
    super.b(paramView);
  }
  
  public void b(boolean paramBoolean)
  {
    a.setRefreshing(paramBoolean);
  }
  
  protected boolean c()
  {
    return true;
  }
  
  public boolean i()
  {
    return a.a();
  }
  
  public void j()
  {
    super.j();
    if (c()) {
      b(false);
    }
  }
  
  public SwipeRefreshLayout k()
  {
    return a;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = (ViewGroup)super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (c())
    {
      a = new SwipeRefreshLayout(paramLayoutInflater.getContext());
      paramViewGroup = (ScrollToLoadListView)paramLayoutInflater.findViewById(16908298);
      paramLayoutInflater.removeView(paramViewGroup);
      a.addView(paramViewGroup, -1, -1);
      paramLayoutInflater.addView(a, -1, -1);
      a.setOnRefreshListener(this);
      a.setBackgroundColor(getResources().getColor(2131362036));
      a.setColorSchemeResources(new int[] { 2131361897, 2131361899, 2131361898, 2131361896 });
      a.a(false, 0, getResources().getDimensionPixelOffset(2131427434));
      if (paramBundle != null) {
        a.setRefreshing(paramBundle.getBoolean("is_refreshing", false));
      }
    }
    return paramLayoutInflater;
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (c()) {
      paramBundle.putBoolean("is_refreshing", i());
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.YelpSwipeRefreshListFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */