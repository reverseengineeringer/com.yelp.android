package com.yelp.android.ui.activities;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.db;
import com.yelp.android.appdata.webrequests.db.a;
import com.yelp.android.cg.b;
import com.yelp.android.serializable.Offer;
import com.yelp.android.serializable.Offer.OfferState;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.k;
import com.yelp.android.ui.panels.a;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.util.StringUtils.Format;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ActivityMyOffers
  extends YelpListActivity
  implements ApiRequest.b<db.a>, k
{
  private a a;
  private int b;
  private ArrayList<Offer> c;
  private db d;
  private final BroadcastReceiver e = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      paramAnonymousContext = (Offer)paramAnonymousIntent.getParcelableExtra("offer");
      if ((paramAnonymousContext == null) || (paramAnonymousContext.l() == Offer.OfferState.USED))
      {
        if (paramAnonymousContext != null) {
          a(paramAnonymousContext.i());
        }
        if (ActivityMyOffers.a(ActivityMyOffers.this).size() == 0) {
          finish();
        }
      }
    }
  };
  
  public static Intent a(Context paramContext)
  {
    return new Intent(paramContext, ActivityMyOffers.class);
  }
  
  protected void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = ActivityBusinessPage.b(this, ((Offer)c.get(paramInt)).h().aD());
    paramListView.putExtra("show_offer_on_biz_page_launch", true);
    startActivity(paramListView);
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, db.a parama)
  {
    paramApiRequest = parama.a();
    d(paramApiRequest.size());
    disableLoading();
    b = parama.b();
    c.addAll(paramApiRequest);
    a.notifyDataSetChanged();
    if (s() >= b) {
      r().f();
    }
  }
  
  void a(String paramString)
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      Offer localOffer = (Offer)localIterator.next();
      if (localOffer.i().equals(paramString))
      {
        c.remove(localOffer);
        a.notifyDataSetChanged();
        c(s() - 1);
      }
    }
  }
  
  public db b()
  {
    return (db)super.getLastCustomNonConfigurationInstance();
  }
  
  protected void c()
  {
    if ((d != null) && (!d.v())) {}
    do
    {
      return;
      d = new db(s(), s_(), false, this);
      d.f(new Void[0]);
    } while (s() != 0);
    enableLoading(d);
  }
  
  public db d()
  {
    return d;
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
        r().f();
      }
    }
    for (;;)
    {
      d = b();
      if (d != null) {
        d.a(this);
      }
      paramBundle = r();
      a = new a(c, this);
      setTitle(2131166874);
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
  
  private static class a
    extends a
  {
    private final List<Offer> a;
    
    public a(List<Offer> paramList, Context paramContext)
    {
      super();
      a = paramList;
    }
    
    public YelpBusiness a(int paramInt)
    {
      return ((Offer)a.get(paramInt)).h();
    }
    
    public void a(int paramInt, b paramb)
    {
      super.a(paramInt, paramb);
      Offer localOffer = (Offer)a.get(paramInt);
      String str = localOffer.h().a(c.getContext(), StringUtils.Format.ABBREVIATED);
      paramb.a(2130837829, localOffer.a(), localOffer.h().z(), str);
      b.setTypeface(Typeface.DEFAULT_BOLD);
    }
    
    public void clear()
    {
      a.clear();
    }
    
    public int getCount()
    {
      return a.size();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityMyOffers
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */