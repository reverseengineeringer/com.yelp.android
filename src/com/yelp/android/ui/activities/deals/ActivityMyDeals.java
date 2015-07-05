package com.yelp.android.ui.activities.deals;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.ListView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.k;
import com.yelp.android.appdata.webrequests.gl;
import com.yelp.android.appdata.webrequests.gm;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.DealPurchase.PurchaseStatus;
import com.yelp.android.serializable.Offer;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.android.serializable.bo;
import com.yelp.android.ui.dialogs.CheckInOfferDialog;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.panels.v;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.bs;
import com.yelp.android.ui.util.bw;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;

public class ActivityMyDeals
  extends YelpListActivity
{
  protected BroadcastReceiver a = new q(this);
  protected BroadcastReceiver b = new r(this);
  private ArrayList<YelpDeal> c;
  private ArrayList<Offer> d;
  private YelpDeal e;
  private EnumMap<ActivityMyDeals.UseState, List<YelpDeal>> f;
  private EnumMap<ActivityMyDeals.UseState, List<Offer>> g;
  private bs h;
  private gl i;
  private final m<gm> j = new p(this);
  
  public static Intent a(Context paramContext)
  {
    return new Intent(paramContext, ActivityMyDeals.class);
  }
  
  private void a(ArrayList<YelpDeal> paramArrayList, ArrayList<Offer> paramArrayList1)
  {
    c = paramArrayList;
    d = paramArrayList1;
    h();
  }
  
  private void c()
  {
    i = new gl(j);
    i.execute(new Void[0]);
    enableLoading();
  }
  
  private EnumMap<ActivityMyDeals.UseState, List<Offer>> f()
  {
    EnumMap localEnumMap = new EnumMap(ActivityMyDeals.UseState.class);
    Object localObject = ActivityMyDeals.UseState.values();
    int m = localObject.length;
    int k = 0;
    while (k < m)
    {
      localEnumMap.put(localObject[k], new ArrayList());
      k += 1;
    }
    if (d != null)
    {
      localObject = d.iterator();
      while (((Iterator)localObject).hasNext())
      {
        Offer localOffer = (Offer)((Iterator)localObject).next();
        if (localOffer.isUsed()) {
          ((List)localEnumMap.get(ActivityMyDeals.UseState.USED)).add(localOffer);
        } else if (localOffer.isAwarded()) {
          ((List)localEnumMap.get(ActivityMyDeals.UseState.UNUSED)).add(localOffer);
        }
      }
      Collections.sort((List)localEnumMap.get(ActivityMyDeals.UseState.USED), Offer.ComparatorDateRedeemed);
      Collections.sort((List)localEnumMap.get(ActivityMyDeals.UseState.UNUSED), new bo(getAppData().n().c()));
    }
    return localEnumMap;
  }
  
  private EnumMap<ActivityMyDeals.UseState, List<YelpDeal>> g()
  {
    EnumMap localEnumMap = new EnumMap(ActivityMyDeals.UseState.class);
    Object localObject = ActivityMyDeals.UseState.values();
    int m = localObject.length;
    int k = 0;
    while (k < m)
    {
      localEnumMap.put(localObject[k], new ArrayList());
      k += 1;
    }
    if (c != null)
    {
      localObject = c.iterator();
      while (((Iterator)localObject).hasNext())
      {
        YelpDeal localYelpDeal = (YelpDeal)((Iterator)localObject).next();
        if (localYelpDeal.getFirstUsablePurchase() != null) {
          ((List)localEnumMap.get(ActivityMyDeals.UseState.UNUSED)).add(localYelpDeal);
        }
        if (localYelpDeal.getFirstPurchaseByStatus(DealPurchase.PurchaseStatus.REDEEMED) != null) {
          ((List)localEnumMap.get(ActivityMyDeals.UseState.USED)).add(localYelpDeal);
        }
      }
      Collections.sort((List)localEnumMap.get(ActivityMyDeals.UseState.UNUSED), YelpDeal.COMPARATOR_TIME_EXPIRED);
      Collections.sort((List)localEnumMap.get(ActivityMyDeals.UseState.USED), YelpDeal.COMPARATOR_TIME_REDEEMED);
    }
    return localEnumMap;
  }
  
  private void h()
  {
    h = new bs();
    f = g();
    g = f();
    Object localObject;
    if (((List)f.get(ActivityMyDeals.UseState.UNUSED)).size() > 0)
    {
      localObject = new v(true);
      ((v)localObject).a(new ArrayList((Collection)f.get(ActivityMyDeals.UseState.UNUSED)));
      h.a(2131165682, bw.a(getString(2131165682), (BaseAdapter)localObject).c(2130838114).a());
    }
    if (((List)g.get(ActivityMyDeals.UseState.UNUSED)).size() > 0)
    {
      localObject = new v(true);
      ((v)localObject).a(new ArrayList((Collection)g.get(ActivityMyDeals.UseState.UNUSED)));
      h.a(2131166495, bw.a(getString(2131166495), (BaseAdapter)localObject).c(2130837744).a());
    }
    int k = ((List)f.get(ActivityMyDeals.UseState.USED)).size();
    if (((List)g.get(ActivityMyDeals.UseState.USED)).size() + k > 0)
    {
      localObject = new ArrayList();
      ((ArrayList)localObject).add(Integer.valueOf(2131166532));
      localObject = new s((ArrayList)localObject);
      h.a(2131166532, (BaseAdapter)localObject);
    }
    if ((h.getCount() == 0) && ((i == null) || (i.isCompleted())))
    {
      populateError(ErrorType.NO_FEED_ITEMS, null);
      getErrorPanel().setText(2131165383);
      return;
    }
    q().f();
    q().setAdapter(h);
    h.notifyDataSetChanged();
    disableLoading();
  }
  
  protected void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.a(paramListView, paramView, paramInt, paramLong);
    paramListView = q().getItemAtPosition(paramInt);
    if ((paramListView instanceof YelpDeal))
    {
      paramListView = (YelpDeal)paramListView;
      if (1 < paramListView.countUsablePurchases())
      {
        e = paramListView;
        showDialog(af.e);
      }
    }
    do
    {
      return;
      startActivity(ActivityDealRedemption.a(this, paramListView, paramListView.getFirstUsablePurchase()));
      return;
      if ((paramListView instanceof Offer))
      {
        paramListView = (Offer)paramListView;
        CheckInOfferDialog.a(paramListView, paramListView.getBusiness()).show(getSupportFragmentManager(), "");
        return;
      }
    } while (!(paramListView instanceof Integer));
    startActivity(ActivityUsedDealsAndOffers.a(this, (List)f.get(ActivityMyDeals.UseState.USED), (List)g.get(ActivityMyDeals.UseState.USED)));
  }
  
  public void a_()
  {
    super.a_();
    h.clear();
    c();
    enableLoading();
  }
  
  public ViewIri getIri()
  {
    return ViewIri.UserDealsList;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      c = paramBundle.getParcelableArrayList("owned");
      d = paramBundle.getParcelableArrayList("checkin_offers");
      e = ((YelpDeal)paramBundle.getParcelable("saved_deal"));
    }
    if ((c != null) && (d != null)) {
      a(c, d);
    }
    for (;;)
    {
      registerReceiver(a, new IntentFilter("com.yelp.android.offer_redeemed"));
      registerReceiver(b, new IntentFilter("com.yelp.android.deal_changed"));
      return;
      c();
    }
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    if ((af.e == paramInt) && (e != null)) {
      return af.a(this, e, true, new o(this));
    }
    return super.onCreateDialog(paramInt);
  }
  
  protected void onPause()
  {
    super.onPause();
    freezeRequest("user_deals", i);
    getAppData().t().b();
  }
  
  protected void onPrepareDialog(int paramInt, Dialog paramDialog)
  {
    if ((af.e == paramInt) && (paramDialog != null) && (e != null)) {
      af.a(paramDialog, e, true);
    }
    super.onPrepareDialog(paramInt, paramDialog);
  }
  
  protected void onResume()
  {
    super.onResume();
    i = ((gl)thawRequest("user_deals", i, j));
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putParcelableArrayList("owned", c);
    paramBundle.putParcelableArrayList("checkin_offers", d);
    super.onSaveInstanceState(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.ActivityMyDeals
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */