package com.yelp.android.ui.util;

import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.yelp.android.ui.activities.support.YelpFragment;

public abstract class AndroidListFragment
  extends YelpFragment
{
  private final Handler a = new Handler();
  private final Runnable b = new c(this);
  private final AdapterView.OnItemClickListener c = new d(this);
  private ListAdapter d;
  private ListView e;
  private View g;
  private TextView h;
  private View i;
  private View j;
  private CharSequence k;
  private boolean l;
  
  private void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    b();
    if (i == null) {
      throw new IllegalStateException("Can't be used with a custom content view");
    }
    if (l == paramBoolean1) {
      return;
    }
    l = paramBoolean1;
    if (paramBoolean1)
    {
      if (paramBoolean2)
      {
        i.startAnimation(AnimationUtils.loadAnimation(getActivity(), 17432577));
        j.startAnimation(AnimationUtils.loadAnimation(getActivity(), 17432576));
      }
      for (;;)
      {
        i.setVisibility(8);
        j.setVisibility(0);
        return;
        i.clearAnimation();
        j.clearAnimation();
      }
    }
    if (paramBoolean2)
    {
      i.startAnimation(AnimationUtils.loadAnimation(getActivity(), 17432576));
      j.startAnimation(AnimationUtils.loadAnimation(getActivity(), 17432577));
    }
    for (;;)
    {
      i.setVisibility(0);
      j.setVisibility(8);
      return;
      i.clearAnimation();
      j.clearAnimation();
    }
  }
  
  private void b()
  {
    if (e != null) {
      return;
    }
    Object localObject = getView();
    if (localObject == null) {
      throw new IllegalStateException("Content view not yet created");
    }
    if ((localObject instanceof ListView))
    {
      e = ((ListView)localObject);
      l = true;
      e.setOnItemClickListener(c);
      if (d == null) {
        break label257;
      }
      localObject = d;
      d = null;
      a((ListAdapter)localObject);
    }
    for (;;)
    {
      a.post(b);
      return;
      h = ((TextView)((View)localObject).findViewById(2131492898));
      if (h == null) {
        g = ((View)localObject).findViewById(16908292);
      }
      for (;;)
      {
        i = ((View)localObject).findViewById(2131492913);
        j = ((View)localObject).findViewById(2131492903);
        localObject = ((View)localObject).findViewById(16908298);
        if ((localObject instanceof ListView)) {
          break;
        }
        throw new RuntimeException("Content has view with id attribute 'android.R.id.list' that is not a ListView class");
        h.setVisibility(8);
      }
      e = ((ListView)localObject);
      if (e == null) {
        throw new RuntimeException("Your content must have a ListView whose id attribute is 'android.R.id.list'");
      }
      if (g != null)
      {
        e.setEmptyView(g);
        break;
      }
      if (k == null) {
        break;
      }
      h.setText(k);
      e.setEmptyView(h);
      break;
      label257:
      if (i != null) {
        a(false, false);
      }
    }
  }
  
  public void a(ListAdapter paramListAdapter)
  {
    boolean bool = false;
    if (d != null) {}
    for (int m = 1;; m = 0)
    {
      d = paramListAdapter;
      if (e != null)
      {
        e.setAdapter(paramListAdapter);
        if ((!l) && (m == 0))
        {
          if (getView().getWindowToken() != null) {
            bool = true;
          }
          a(true, bool);
        }
      }
      return;
    }
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong) {}
  
  public void d(int paramInt)
  {
    b();
    e.setSelection(paramInt);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903214, paramViewGroup, false);
  }
  
  public void onDestroyView()
  {
    a.removeCallbacks(b);
    e = null;
    l = false;
    j = null;
    i = null;
    g = null;
    h = null;
    super.onDestroyView();
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    b();
  }
  
  public ListAdapter r()
  {
    return d;
  }
  
  public ListView t()
  {
    b();
    return e;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.AndroidListFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */