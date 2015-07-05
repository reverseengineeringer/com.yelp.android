package com.yelp.android.ui.activities.nearby;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AbsListView.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yelp.android.serializable.by;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.util.cw;

public class ComboListFragment<T extends by>
  extends YelpListFragment
{
  ViewTreeObserver.OnGlobalLayoutListener a = new g(this);
  private i<T> b;
  private h<T> c;
  private Runnable d;
  private View e;
  private View g;
  private RelativeLayout h;
  private View i;
  private int j = 0;
  private boolean k = false;
  private LinearLayout l;
  
  public static <E extends by> ComboListFragment<E> a(int paramInt, boolean paramBoolean)
  {
    ComboListFragment localComboListFragment = new ComboListFragment();
    Bundle localBundle = new Bundle();
    localBundle.putInt("position", paramInt);
    localBundle.putBoolean("show_handle_image", paramBoolean);
    localComboListFragment.setArguments(localBundle);
    return localComboListFragment;
  }
  
  private boolean e(View paramView)
  {
    return paramView == l;
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    if (b == null) {}
    do
    {
      return;
      paramListView = paramListView.getItemAtPosition(paramInt);
      if (e(paramView))
      {
        b.a(this);
        return;
      }
    } while (!(paramListView instanceof Parcelable));
    b.a(this, paramListView);
  }
  
  public void a(h<T> paramh)
  {
    c = paramh;
  }
  
  public void a(i<T> parami)
  {
    b = parami;
  }
  
  public void a(Runnable paramRunnable)
  {
    d = paramRunnable;
    try
    {
      m().setOnLoadNeeded(d);
      return;
    }
    catch (IllegalStateException paramRunnable) {}
  }
  
  public void a(String paramString)
  {
    if (l != null) {
      ((TextView)l.findViewById(2131492996)).setText(paramString);
    }
  }
  
  public int d()
  {
    return j;
  }
  
  public int e()
  {
    m().measure(m().getWidth(), m().getHeight());
    return l.getMeasuredHeight();
  }
  
  public int f()
  {
    return h.getMeasuredHeight() + g.getMeasuredHeight();
  }
  
  public int g()
  {
    return e.getMeasuredHeight() + g.getMeasuredHeight();
  }
  
  public void h()
  {
    if (h == null) {}
    ImageView localImageView;
    do
    {
      return;
      localImageView = (ImageView)h.findViewById(2131493432);
    } while (localImageView.getVisibility() != 8);
    cw.c(localImageView, cw.e);
    k = true;
  }
  
  public void i()
  {
    if (h == null) {}
    ImageView localImageView;
    do
    {
      return;
      localImageView = (ImageView)h.findViewById(2131493432);
    } while (localImageView.getVisibility() != 0);
    cw.b(localImageView, cw.e);
    k = false;
  }
  
  public void l_()
  {
    try
    {
      a.onGlobalLayout();
      return;
    }
    catch (IllegalStateException localIllegalStateException) {}
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (b != null) {
      m().setOnPullDownCallback(b);
    }
    if (d != null) {
      m().setOnLoadNeeded(d);
    }
    m().getViewTreeObserver().addOnGlobalLayoutListener(a);
    l = ((LinearLayout)getActivity().getLayoutInflater().inflate(2130903174, m(), false));
    e = l.findViewById(2131493429);
    g = l.findViewById(2131493430);
    h = ((RelativeLayout)l.findViewById(2131493431));
    if (k) {
      l.findViewById(2131493432).setVisibility(0);
    }
    i = new View(getActivity());
    i.setBackgroundResource(17170443);
    i.setLayoutParams(new AbsListView.LayoutParams(-1, 0));
    m().addHeaderView(l, null, true);
    m().addFooterView(i, null, false);
    m().setBackgroundDrawable(null);
    m().setSelector(17170445);
    if (c != null)
    {
      a(c.c(this));
      c.a(this);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      j = paramBundle.getInt("position");
      k = getArguments().getBoolean("show_handle_image");
    }
    while (getArguments() == null) {
      return;
    }
    j = getArguments().getInt("position");
    k = getArguments().getBoolean("show_handle_image");
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    cp.a(m(), a);
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("position", j);
    paramBundle.putBoolean("show_handle_image", k);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.ComboListFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */