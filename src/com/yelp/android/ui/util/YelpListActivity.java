package com.yelp.android.ui.util;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.TextView;
import com.yelp.android.appdata.n;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.panels.PanelError.a;

public abstract class YelpListActivity
  extends YelpActivity
  implements AdapterView.OnItemClickListener, PanelError.a
{
  private ScrollToLoadListView a;
  private int b;
  private int c;
  
  protected final View a(AdapterView paramAdapterView, int paramInt)
  {
    TextView localTextView = new TextView(this);
    localTextView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    localTextView.setPadding(n.a, n.a, n.a, n.a);
    localTextView.setGravity(17);
    localTextView.setText(paramInt);
    localTextView.setTextAppearance(this, 2131296462);
    localTextView.setVisibility(8);
    ((ViewGroup)paramAdapterView.getRootView().findViewById(2131689997)).addView(localTextView);
    return localTextView;
  }
  
  public void a()
  {
    r().f();
  }
  
  protected void a(ListView paramListView, View paramView, int paramInt, long paramLong) {}
  
  protected void c() {}
  
  public void c(int paramInt)
  {
    b = paramInt;
  }
  
  public void d(int paramInt)
  {
    b += paramInt;
  }
  
  public int h()
  {
    return 0;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903567);
    if (paramBundle != null)
    {
      c = paramBundle.getInt("yelp:limit", 20);
      b = paramBundle.getInt("yelp:offset", 0);
      return;
    }
    c = 20;
    b = 0;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    super.onError(paramApiRequest, paramYelpException);
    a();
  }
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    a(a, paramView, paramInt, paramLong);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("yelp:limit", c);
    paramBundle.putInt("yelp:offset", b);
  }
  
  public void onSupportContentChanged()
  {
    super.onSupportContentChanged();
    if (findViewById(16908298) != null)
    {
      a = ((ScrollToLoadListView)findViewById(16908298));
      a.setDividerHeight(0);
      View localView = findViewById(16908292);
      if (localView != null) {
        a.setEmptyView(localView);
      }
      a.setOnItemClickListener(this);
      if (getIntent().getBooleanExtra("known empty", false)) {
        break label79;
      }
      t();
    }
    label79:
    while (h() == 0) {
      return;
    }
    r().setEmptyView(a(r(), h()));
  }
  
  public void p_()
  {
    c(0);
    c();
  }
  
  public void q_()
  {
    clearError();
    p_();
  }
  
  public ScrollToLoadListView r()
  {
    return a;
  }
  
  public int s()
  {
    return b;
  }
  
  public int s_()
  {
    return c;
  }
  
  public void t()
  {
    r().setOnLoadNeeded(new Runnable()
    {
      public void run()
      {
        c();
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.YelpListActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */