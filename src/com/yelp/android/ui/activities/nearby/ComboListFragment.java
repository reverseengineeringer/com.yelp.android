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
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yelp.android.serializable.f;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.ScrollToLoadListView.d;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.av;

public class ComboListFragment<T extends f>
  extends YelpListFragment
{
  ViewTreeObserver.OnGlobalLayoutListener a = new ComboListFragment.1(this);
  private b<T> b;
  private a<T> c;
  private Runnable d;
  private View e;
  private View f;
  private RelativeLayout g;
  private View i;
  private int j = 0;
  private boolean k = false;
  private LinearLayout l;
  
  public static <E extends f> ComboListFragment<E> a(int paramInt, boolean paramBoolean)
  {
    ComboListFragment localComboListFragment = new ComboListFragment();
    Bundle localBundle = new Bundle();
    localBundle.putInt("position", paramInt);
    localBundle.putBoolean("show_handle_image", paramBoolean);
    localComboListFragment.setArguments(localBundle);
    return localComboListFragment;
  }
  
  private boolean f(View paramView)
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
      if (f(paramView))
      {
        b.a(this);
        return;
      }
    } while (!(paramListView instanceof Parcelable));
    b.a(this, paramListView);
  }
  
  public void a(a<T> parama)
  {
    c = parama;
  }
  
  public void a(b<T> paramb)
  {
    b = paramb;
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
      ((TextView)l.findViewById(2131689641)).setText(paramString);
    }
  }
  
  public int e()
  {
    return j;
  }
  
  public int f()
  {
    m().measure(m().getWidth(), m().getHeight());
    return l.getMeasuredHeight();
  }
  
  public int g()
  {
    return g.getMeasuredHeight() + f.getMeasuredHeight();
  }
  
  public int h()
  {
    return e.getMeasuredHeight() + f.getMeasuredHeight();
  }
  
  public void i()
  {
    if (g == null) {}
    ImageView localImageView;
    do
    {
      return;
      localImageView = (ImageView)g.findViewById(2131690111);
    } while (localImageView.getVisibility() != 8);
    av.c(localImageView, av.e);
    k = true;
  }
  
  public void j()
  {
    if (g == null) {}
    ImageView localImageView;
    do
    {
      return;
      localImageView = (ImageView)g.findViewById(2131690111);
    } while (localImageView.getVisibility() != 0);
    av.b(localImageView, av.e);
    k = false;
  }
  
  public void k()
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
    l = ((LinearLayout)getActivity().getLayoutInflater().inflate(2130903183, m(), false));
    e = l.findViewById(2131690108);
    f = l.findViewById(2131690109);
    g = ((RelativeLayout)l.findViewById(2131690110));
    if (k) {
      l.findViewById(2131690111).setVisibility(0);
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
    ar.a(m(), a);
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("position", j);
    paramBundle.putBoolean("show_handle_image", k);
  }
  
  public static abstract interface a<T extends f>
  {
    public abstract void a(ComboListFragment<T> paramComboListFragment);
    
    public abstract void b(ComboListFragment<T> paramComboListFragment);
    
    public abstract ListAdapter c(ComboListFragment<T> paramComboListFragment);
  }
  
  public static abstract interface b<T extends f>
    extends ScrollToLoadListView.d
  {
    public abstract void a(ComboListFragment<T> paramComboListFragment);
    
    public abstract void a(ComboListFragment<T> paramComboListFragment, Object paramObject);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.ComboListFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */