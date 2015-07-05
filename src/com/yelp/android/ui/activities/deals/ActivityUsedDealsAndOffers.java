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
import com.yelp.android.serializable.YelpDeal;
import com.yelp.android.ui.dialogs.CheckInOfferDialog;
import com.yelp.android.ui.panels.v;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import java.util.ArrayList;
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
      if (1 < paramListView.getPurchasesByStatus(DealPurchase.PurchaseStatus.REDEEMED).size())
      {
        c = paramListView;
        showDialog(af.e);
      }
    }
    while (!(paramListView instanceof Offer))
    {
      return;
      a(paramListView, paramListView.getFirstPurchaseByStatus(DealPurchase.PurchaseStatus.REDEEMED));
      return;
    }
    paramListView = (Offer)paramListView;
    CheckInOfferDialog.a(paramListView, paramListView.getBusiness()).show(getSupportFragmentManager(), "");
  }
  
  protected void a(YelpDeal paramYelpDeal, DealPurchase paramDealPurchase)
  {
    startActivity(ActivityDealRedemption.a(this, paramYelpDeal, paramDealPurchase));
  }
  
  public YelpDeal c()
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
    paramBundle = new TreeSet(new u(null));
    paramBundle.addAll(a);
    paramBundle.addAll(b);
    ScrollToLoadListView localScrollToLoadListView = q();
    v localv = new v(false);
    localv.a(new ArrayList(paramBundle));
    localScrollToLoadListView.setDividerHeight(0);
    localScrollToLoadListView.setAdapter(localv);
    localScrollToLoadListView.f();
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    if ((af.e == paramInt) && (c != null)) {
      return af.a(this, c, false, new t(this));
    }
    return super.onCreateDialog(paramInt);
  }
  
  protected void onPrepareDialog(int paramInt, Dialog paramDialog)
  {
    if ((af.e == paramInt) && (paramDialog != null) && (c != null)) {
      af.a(paramDialog, c, false);
    }
    super.onPrepareDialog(paramInt, paramDialog);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.ActivityUsedDealsAndOffers
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */