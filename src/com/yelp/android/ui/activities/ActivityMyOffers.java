package com.yelp.android.ui.activities;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.dy;
import com.yelp.android.appdata.webrequests.dz;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Offer;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.p;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ActivityMyOffers
  extends YelpListActivity
  implements m<dz>, p
{
  private db a;
  private int b;
  private ArrayList<Offer> c;
  private dy d;
  private final BroadcastReceiver e = new da(this);
  
  public static Intent a(Context paramContext)
  {
    return new Intent(paramContext, ActivityMyOffers.class);
  }
  
  protected void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = ActivityBusinessPage.a(this, ((Offer)c.get(paramInt)).getBusiness().getId());
    paramListView.putExtra("show_offer_on_biz_page_launch", true);
    startActivity(paramListView);
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, dz paramdz)
  {
    paramApiRequest = paramdz.a();
    d(paramApiRequest.size());
    disableLoading();
    b = paramdz.b();
    c.addAll(paramApiRequest);
    a.notifyDataSetChanged();
    if (r() >= b) {
      q().f();
    }
  }
  
  void a(String paramString)
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      Offer localOffer = (Offer)localIterator.next();
      if (localOffer.getId().equals(paramString))
      {
        c.remove(localOffer);
        a.notifyDataSetChanged();
        c(r() - 1);
      }
    }
  }
  
  public dy c()
  {
    return (dy)super.getLastCustomNonConfigurationInstance();
  }
  
  public dy c_()
  {
    return d;
  }
  
  protected void d()
  {
    if ((d != null) && (!d.isCompleted())) {}
    do
    {
      return;
      d = new dy(r(), e_(), false, this);
      d.execute(new Void[0]);
    } while (r() != 0);
    enableLoading(d);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.CheckInOfferListView;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if ((paramBundle != null) && (paramBundle.containsKey("offers")))
    {
      c = paramBundle.getParcelableArrayList("offers");
      b = paramBundle.getInt("total");
      if ((b > 0) && (b <= c.size())) {
        q().f();
      }
    }
    for (;;)
    {
      d = c();
      if (d != null) {
        d.setCallback(this);
      }
      paramBundle = q();
      a = new db(c, this);
      setTitle(2131166922);
      paramBundle.setDividerHeight(0);
      paramBundle.setAdapter(a);
      registerReceiver(e, new IntentFilter("com.yelp.android.offer_redeemed"));
      return;
      c = new ArrayList(10);
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    unregisterReceiver(e);
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putParcelableArrayList("offers", c);
    paramBundle.putInt("total", b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityMyOffers
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */