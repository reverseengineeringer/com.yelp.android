package com.yelp.android.ui.activities.deals;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.widget.ListView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.serializable.DealPurchase;
import com.yelp.android.serializable.DealPurchase.PurchaseStatus;
import com.yelp.android.serializable.Offer;
import com.yelp.android.serializable.OfferRedemption;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.android.ui.dialogs.CheckInOfferDialog;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.TreeSet;

public class ActivityUsedDealsAndOffers
  extends YelpListActivity
{
  private ArrayList<Parcelable> a;
  private ArrayList<Parcelable> b;
  private YelpDeal c;
  
  public static Intent a(Context paramContext, List<YelpDeal> paramList, List<Offer> paramList1)
  {
    paramContext = new Intent(paramContext, ActivityUsedDealsAndOffers.class);
    paramContext.putExtra("deals", new ArrayList(paramList));
    paramContext.putExtra("offers", new ArrayList(paramList1));
    return paramContext;
  }
  
  protected void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = paramListView.getItemAtPosition(paramInt);
    if ((paramListView instanceof YelpDeal))
    {
      paramListView = (YelpDeal)paramListView;
      if (1 < paramListView.b(DealPurchase.PurchaseStatus.REDEEMED).size())
      {
        c = paramListView;
        showDialog(b.e);
      }
    }
    while (!(paramListView instanceof Offer))
    {
      return;
      a(paramListView, paramListView.a(DealPurchase.PurchaseStatus.REDEEMED));
      return;
    }
    paramListView = (Offer)paramListView;
    CheckInOfferDialog.a(paramListView, paramListView.h()).show(getSupportFragmentManager(), "");
  }
  
  protected void a(YelpDeal paramYelpDeal, DealPurchase paramDealPurchase)
  {
    startActivity(ActivityDealRedemption.a(this, paramYelpDeal, paramDealPurchase));
  }
  
  public YelpDeal b()
  {
    return c;
  }
  
  public YelpDeal f()
  {
    return (YelpDeal)super.getLastCustomNonConfigurationInstance();
  }
  
  public ViewIri getIri()
  {
    return ViewIri.DealRedeemed;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = getIntent().getParcelableArrayListExtra("deals");
    b = getIntent().getParcelableArrayListExtra("offers");
    c = f();
    paramBundle = new TreeSet(new a(null));
    paramBundle.addAll(a);
    paramBundle.addAll(b);
    ScrollToLoadListView localScrollToLoadListView = r();
    com.yelp.android.ui.panels.b localb = new com.yelp.android.ui.panels.b(false);
    localb.a(new ArrayList(paramBundle));
    localScrollToLoadListView.setDividerHeight(0);
    localScrollToLoadListView.setAdapter(localb);
    localScrollToLoadListView.f();
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    if ((b.e == paramInt) && (c != null)) {
      b.a(this, c, false, new b.a()
      {
        public void a(b paramAnonymousb)
        {
          ActivityUsedDealsAndOffers.a(ActivityUsedDealsAndOffers.this, null);
          a(paramAnonymousb.a(), paramAnonymousb.b());
        }
      });
    }
    return super.onCreateDialog(paramInt);
  }
  
  protected void onPrepareDialog(int paramInt, Dialog paramDialog)
  {
    if ((b.e == paramInt) && (paramDialog != null) && (c != null)) {
      b.a(paramDialog, c, false);
    }
    super.onPrepareDialog(paramInt, paramDialog);
  }
  
  private static final class a
    implements Comparator<Object>
  {
    private boolean b(Object paramObject)
    {
      return ((paramObject instanceof YelpDeal)) || ((paramObject instanceof Offer));
    }
    
    private long c(Object paramObject)
    {
      if ((paramObject instanceof YelpDeal)) {
        return ((YelpDeal)paramObject).a(DealPurchase.PurchaseStatus.REDEEMED).f();
      }
      return ((Offer)paramObject).m().i().getTime();
    }
    
    private String d(Object paramObject)
    {
      if ((paramObject instanceof YelpDeal)) {
        return ((YelpDeal)paramObject).a(DealPurchase.PurchaseStatus.REDEEMED).j();
      }
      return ((Offer)paramObject).j();
    }
    
    String a(Object paramObject)
    {
      if ((paramObject instanceof YelpDeal)) {
        return ((YelpDeal)paramObject).a(DealPurchase.PurchaseStatus.REDEEMED).l();
      }
      return ((Offer)paramObject).i();
    }
    
    public int compare(Object paramObject1, Object paramObject2)
    {
      if ((!b(paramObject1)) || (!b(paramObject2))) {
        throw new IllegalArgumentException("Only YelpDeals and Offers can be compared here");
      }
      long l2 = c(paramObject2) - c(paramObject1);
      long l1 = l2;
      if (l2 == 0L) {
        l1 = d(paramObject2).compareToIgnoreCase(d(paramObject1));
      }
      l2 = l1;
      if (l1 == 0L) {
        l2 = a(paramObject2).compareTo(a(paramObject1));
      }
      return (int)l2;
    }
    
    public boolean equals(Object paramObject)
    {
      return (paramObject != null) && (paramObject.getClass().equals(getClass()));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.ActivityUsedDealsAndOffers
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */