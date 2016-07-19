package com.yelp.android.ui.activities.deals;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.e;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.fc;
import com.yelp.android.appdata.webrequests.fc.a;
import com.yelp.android.serializable.DealPurchase;
import com.yelp.android.serializable.DealPurchase.PurchaseStatus;
import com.yelp.android.serializable.Offer;
import com.yelp.android.serializable.Offer.a;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.android.ui.dialogs.CheckInOfferDialog;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.aj;
import com.yelp.android.ui.util.aj.c;
import com.yelp.android.ui.util.w;
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
  protected BroadcastReceiver a = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      paramAnonymousContext = (Offer)paramAnonymousIntent.getParcelableExtra("offer");
      if (paramAnonymousContext == null) {}
      Offer localOffer;
      do
      {
        return;
        while (!paramAnonymousIntent.hasNext()) {
          paramAnonymousIntent = ActivityMyDeals.a(ActivityMyDeals.this).iterator();
        }
        localOffer = (Offer)paramAnonymousIntent.next();
      } while (localOffer.i().compareTo(paramAnonymousContext.i()) != 0);
      ActivityMyDeals.a(ActivityMyDeals.this).remove(localOffer);
      ActivityMyDeals.a(ActivityMyDeals.this).add(paramAnonymousContext);
      ActivityMyDeals.b(ActivityMyDeals.this);
    }
  };
  protected BroadcastReceiver b = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      paramAnonymousContext = (YelpDeal)paramAnonymousIntent.getParcelableExtra("extra.yelp_deal");
      paramAnonymousIntent = (DealPurchase)paramAnonymousIntent.getParcelableExtra("extra.deal_purchased");
      if (ActivityMyDeals.c(ActivityMyDeals.this) == null) {
        ActivityMyDeals.a(ActivityMyDeals.this, new ArrayList());
      }
      if ((paramAnonymousContext == null) || (paramAnonymousIntent == null)) {
        ActivityMyDeals.c(ActivityMyDeals.this).clear();
      }
      int i;
      do
      {
        return;
        i = ActivityMyDeals.c(ActivityMyDeals.this).indexOf(paramAnonymousContext);
      } while (i == 0);
      ((YelpDeal)ActivityMyDeals.c(ActivityMyDeals.this).get(i)).a(paramAnonymousIntent);
      ActivityMyDeals.b(ActivityMyDeals.this);
    }
  };
  private ArrayList<YelpDeal> c;
  private ArrayList<Offer> d;
  private YelpDeal e;
  private EnumMap<UseState, List<YelpDeal>> f;
  private EnumMap<UseState, List<Offer>> g;
  private aj h;
  private fc i;
  private final ApiRequest.b<fc.a> j = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, fc.a paramAnonymousa)
    {
      ActivityMyDeals.a(ActivityMyDeals.this, paramAnonymousa.a(), paramAnonymousa.b());
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      populateError(ErrorType.getTypeFromException(paramAnonymousYelpException));
    }
  };
  
  public static Intent a(Context paramContext)
  {
    return new Intent(paramContext, ActivityMyDeals.class);
  }
  
  private void a(ArrayList<YelpDeal> paramArrayList, ArrayList<Offer> paramArrayList1)
  {
    c = paramArrayList;
    d = paramArrayList1;
    i();
  }
  
  private void b()
  {
    i = new fc(j);
    i.f(new Void[0]);
    enableLoading();
  }
  
  private EnumMap<UseState, List<Offer>> f()
  {
    EnumMap localEnumMap = new EnumMap(UseState.class);
    Object localObject = UseState.values();
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
        if (localOffer.e()) {
          ((List)localEnumMap.get(UseState.USED)).add(localOffer);
        } else if (localOffer.c()) {
          ((List)localEnumMap.get(UseState.UNUSED)).add(localOffer);
        }
      }
      Collections.sort((List)localEnumMap.get(UseState.USED), Offer.a);
      Collections.sort((List)localEnumMap.get(UseState.UNUSED), new Offer.a(getAppData().r().c()));
    }
    return localEnumMap;
  }
  
  private EnumMap<UseState, List<YelpDeal>> g()
  {
    EnumMap localEnumMap = new EnumMap(UseState.class);
    Object localObject = UseState.values();
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
        if (localYelpDeal.a() != null) {
          ((List)localEnumMap.get(UseState.UNUSED)).add(localYelpDeal);
        }
        if (localYelpDeal.a(DealPurchase.PurchaseStatus.REDEEMED) != null) {
          ((List)localEnumMap.get(UseState.USED)).add(localYelpDeal);
        }
      }
      Collections.sort((List)localEnumMap.get(UseState.UNUSED), YelpDeal.b);
      Collections.sort((List)localEnumMap.get(UseState.USED), YelpDeal.c);
    }
    return localEnumMap;
  }
  
  private void i()
  {
    h = new aj();
    f = g();
    g = f();
    Object localObject;
    if (((List)f.get(UseState.UNUSED)).size() > 0)
    {
      localObject = new com.yelp.android.ui.panels.b(true);
      ((com.yelp.android.ui.panels.b)localObject).a(new ArrayList((Collection)f.get(UseState.UNUSED)));
      h.a(2131165757, aj.c.a(getString(2131165757), (BaseAdapter)localObject).c(2130838322).b());
    }
    if (((List)g.get(UseState.UNUSED)).size() > 0)
    {
      localObject = new com.yelp.android.ui.panels.b(true);
      ((com.yelp.android.ui.panels.b)localObject).a(new ArrayList((Collection)g.get(UseState.UNUSED)));
      h.a(2131166490, aj.c.a(getString(2131166490), (BaseAdapter)localObject).c(2130837830).b());
    }
    int k = ((List)f.get(UseState.USED)).size();
    if (((List)g.get(UseState.USED)).size() + k > 0)
    {
      localObject = new ArrayList();
      ((ArrayList)localObject).add(Integer.valueOf(2131166531));
      localObject = new a((ArrayList)localObject);
      h.a(2131166531, (BaseAdapter)localObject);
    }
    if ((h.getCount() == 0) && ((i == null) || (i.v())))
    {
      populateError(ErrorType.NO_DEALS, null);
      getErrorPanel().setText(2131165514);
      return;
    }
    r().f();
    r().setAdapter(h);
    h.notifyDataSetChanged();
    disableLoading();
  }
  
  protected void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.a(paramListView, paramView, paramInt, paramLong);
    paramListView = r().getItemAtPosition(paramInt);
    if ((paramListView instanceof YelpDeal))
    {
      paramListView = (YelpDeal)paramListView;
      if (1 < paramListView.c())
      {
        e = paramListView;
        showDialog(b.e);
      }
    }
    do
    {
      return;
      startActivity(ActivityDealRedemption.a(this, paramListView, paramListView.a()));
      return;
      if ((paramListView instanceof Offer))
      {
        paramListView = (Offer)paramListView;
        CheckInOfferDialog.a(paramListView, paramListView.h()).show(getSupportFragmentManager(), "");
        return;
      }
    } while (!(paramListView instanceof Integer));
    startActivity(ActivityUsedDealsAndOffers.a(this, (List)f.get(UseState.USED), (List)g.get(UseState.USED)));
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
      b();
    }
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    if ((b.e == paramInt) && (e != null)) {
      b.a(this, e, true, new b.a()
      {
        public void a(b paramAnonymousb)
        {
          ActivityMyDeals.a(ActivityMyDeals.this, null);
          startActivity(ActivityDealRedemption.a(ActivityMyDeals.this, paramAnonymousb.a(), paramAnonymousb.b()));
        }
      });
    }
    return super.onCreateDialog(paramInt);
  }
  
  protected void onPause()
  {
    super.onPause();
    freezeRequest("user_deals", i);
    getAppData().y().b();
  }
  
  protected void onPrepareDialog(int paramInt, Dialog paramDialog)
  {
    if ((b.e == paramInt) && (paramDialog != null) && (e != null)) {
      b.a(paramDialog, e, true);
    }
    super.onPrepareDialog(paramInt, paramDialog);
  }
  
  protected void onResume()
  {
    super.onResume();
    i = ((fc)thawRequest("user_deals", i, j));
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putParcelableArrayList("owned", c);
    paramBundle.putParcelableArrayList("checkin_offers", d);
    super.onSaveInstanceState(paramBundle);
  }
  
  public void p_()
  {
    super.p_();
    h.clear();
    b();
    enableLoading();
  }
  
  private static enum UseState
  {
    UNUSED,  USED;
    
    private UseState() {}
  }
  
  public static final class a
    extends w<Integer>
  {
    public a(ArrayList<Integer> paramArrayList)
    {
      a(paramArrayList);
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      Context localContext = paramViewGroup.getContext();
      View localView = paramView;
      if (paramView == null) {
        localView = LayoutInflater.from(localContext).inflate(2130903461, paramViewGroup, false);
      }
      ((TextView)localView.findViewById(2131690705)).setText(localContext.getText(((Integer)getItem(paramInt)).intValue()));
      return localView;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.ActivityMyDeals
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */