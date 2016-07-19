package android.support.v4.app;

import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;

public class ListFragment
  extends Fragment
{
  ListAdapter a;
  ListView b;
  View c;
  TextView d;
  View e;
  View f;
  CharSequence g;
  boolean h;
  private final Handler i = new Handler();
  private final Runnable j = new Runnable()
  {
    public void run()
    {
      b.focusableViewAvailable(b);
    }
  };
  private final AdapterView.OnItemClickListener k = new AdapterView.OnItemClickListener()
  {
    public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      a((ListView)paramAnonymousAdapterView, paramAnonymousView, paramAnonymousInt, paramAnonymousLong);
    }
  };
  
  private void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    c();
    if (e == null) {
      throw new IllegalStateException("Can't be used with a custom content view");
    }
    if (h == paramBoolean1) {
      return;
    }
    h = paramBoolean1;
    if (paramBoolean1)
    {
      if (paramBoolean2)
      {
        e.startAnimation(AnimationUtils.loadAnimation(getActivity(), 17432577));
        f.startAnimation(AnimationUtils.loadAnimation(getActivity(), 17432576));
      }
      for (;;)
      {
        e.setVisibility(8);
        f.setVisibility(0);
        return;
        e.clearAnimation();
        f.clearAnimation();
      }
    }
    if (paramBoolean2)
    {
      e.startAnimation(AnimationUtils.loadAnimation(getActivity(), 17432576));
      f.startAnimation(AnimationUtils.loadAnimation(getActivity(), 17432577));
    }
    for (;;)
    {
      e.setVisibility(0);
      f.setVisibility(8);
      return;
      e.clearAnimation();
      f.clearAnimation();
    }
  }
  
  private void c()
  {
    if (b != null) {
      return;
    }
    Object localObject = getView();
    if (localObject == null) {
      throw new IllegalStateException("Content view not yet created");
    }
    if ((localObject instanceof ListView))
    {
      b = ((ListView)localObject);
      h = true;
      b.setOnItemClickListener(k);
      if (a == null) {
        break label254;
      }
      localObject = a;
      a = null;
      a((ListAdapter)localObject);
    }
    for (;;)
    {
      i.post(j);
      return;
      d = ((TextView)((View)localObject).findViewById(16711681));
      if (d == null) {
        c = ((View)localObject).findViewById(16908292);
      }
      for (;;)
      {
        e = ((View)localObject).findViewById(16711682);
        f = ((View)localObject).findViewById(16711683);
        localObject = ((View)localObject).findViewById(16908298);
        if ((localObject instanceof ListView)) {
          break label193;
        }
        if (localObject != null) {
          break;
        }
        throw new RuntimeException("Your content must have a ListView whose id attribute is 'android.R.id.list'");
        d.setVisibility(8);
      }
      throw new RuntimeException("Content has view with id attribute 'android.R.id.list' that is not a ListView class");
      label193:
      b = ((ListView)localObject);
      if (c != null)
      {
        b.setEmptyView(c);
        break;
      }
      if (g == null) {
        break;
      }
      d.setText(g);
      b.setEmptyView(d);
      break;
      label254:
      if (e != null) {
        a(false, false);
      }
    }
  }
  
  public ListView a()
  {
    c();
    return b;
  }
  
  public void a(ListAdapter paramListAdapter)
  {
    boolean bool = false;
    if (a != null) {}
    for (int m = 1;; m = 0)
    {
      a = paramListAdapter;
      if (b != null)
      {
        b.setAdapter(paramListAdapter);
        if ((!h) && (m == 0))
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
  
  public ListAdapter b()
  {
    return a;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramViewGroup = getActivity();
    paramLayoutInflater = new FrameLayout(paramViewGroup);
    paramBundle = new LinearLayout(paramViewGroup);
    paramBundle.setId(16711682);
    paramBundle.setOrientation(1);
    paramBundle.setVisibility(8);
    paramBundle.setGravity(17);
    paramBundle.addView(new ProgressBar(paramViewGroup, null, 16842874), new FrameLayout.LayoutParams(-2, -2));
    paramLayoutInflater.addView(paramBundle, new FrameLayout.LayoutParams(-1, -1));
    paramViewGroup = new FrameLayout(paramViewGroup);
    paramViewGroup.setId(16711683);
    paramBundle = new TextView(getActivity());
    paramBundle.setId(16711681);
    paramBundle.setGravity(17);
    paramViewGroup.addView(paramBundle, new FrameLayout.LayoutParams(-1, -1));
    paramBundle = new ListView(getActivity());
    paramBundle.setId(16908298);
    paramBundle.setDrawSelectorOnTop(false);
    paramViewGroup.addView(paramBundle, new FrameLayout.LayoutParams(-1, -1));
    paramLayoutInflater.addView(paramViewGroup, new FrameLayout.LayoutParams(-1, -1));
    paramLayoutInflater.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    return paramLayoutInflater;
  }
  
  public void onDestroyView()
  {
    i.removeCallbacks(j);
    b = null;
    h = false;
    f = null;
    e = null;
    c = null;
    d = null;
    super.onDestroyView();
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    c();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.ListFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */