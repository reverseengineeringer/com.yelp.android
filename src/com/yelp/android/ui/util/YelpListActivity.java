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
import com.yelp.android.appdata.ao;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.panels.aa;

public abstract class YelpListActivity
  extends YelpActivity
  implements AdapterView.OnItemClickListener, aa
{
  private ScrollToLoadListView a;
  private int b;
  private int c;
  
  protected final View a(AdapterView paramAdapterView, int paramInt)
  {
    TextView localTextView = new TextView(this);
    localTextView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    localTextView.setPadding(ao.a, ao.a, ao.a, ao.a);
    localTextView.setGravity(17);
    localTextView.setText(paramInt);
    localTextView.setTextAppearance(this, 2131689621);
    localTextView.setVisibility(8);
    ((ViewGroup)paramAdapterView.getRootView().findViewById(2131493332)).addView(localTextView);
    return localTextView;
  }
  
  protected void a(ListView paramListView, View paramView, int paramInt, long paramLong) {}
  
  public void a_()
  {
    c(0);
    d();
  }
  
  public void c(int paramInt)
  {
    b = paramInt;
  }
  
  protected void d() {}
  
  public void d(int paramInt)
  {
    b += paramInt;
  }
  
  public int e_()
  {
    return c;
  }
  
  public int i()
  {
    return 0;
  }
  
  public void m_()
  {
    clearError();
    a_();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903442);
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
    t();
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
      s();
    }
    label79:
    while (i() == 0) {
      return;
    }
    q().setEmptyView(a(q(), i()));
  }
  
  public ScrollToLoadListView q()
  {
    return a;
  }
  
  public int r()
  {
    return b;
  }
  
  public void s()
  {
    q().setOnLoadNeeded(new df(this));
  }
  
  public void t()
  {
    q().f();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.YelpListActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */