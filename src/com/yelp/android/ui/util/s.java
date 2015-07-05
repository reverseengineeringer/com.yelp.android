package com.yelp.android.ui.util;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.yelp.android.serializable.DealPurchase;
import com.yelp.android.serializable.DealPurchase.PurchaseStatus;
import com.yelp.android.serializable.YelpDeal;
import java.util.List;

public class s
  extends BaseAdapter
{
  private YelpDeal a;
  private List<DealPurchase> b;
  
  public DealPurchase a(int paramInt)
  {
    return (DealPurchase)b.get(paramInt);
  }
  
  public YelpDeal a()
  {
    return a;
  }
  
  public void a(YelpDeal paramYelpDeal, boolean paramBoolean)
  {
    a = paramYelpDeal;
    if (!paramBoolean) {
      b = paramYelpDeal.getPurchasesByStatus(DealPurchase.PurchaseStatus.REDEEMED);
    }
    while (a == null) {
      return;
    }
    b = paramYelpDeal.getUsablePurchases();
  }
  
  public int getCount()
  {
    return b.size();
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView;
    if (paramView != null)
    {
      localView = paramView;
      if (paramView.getTag() != null) {}
    }
    else
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903355, paramViewGroup, false);
      localView.setTag(new t(localView));
    }
    paramView = (t)localView.getTag();
    DealPurchase localDealPurchase = a(paramInt);
    a.setText(paramViewGroup.getContext().getString(2131166405, new Object[] { localDealPurchase.getRedemptionCode() }));
    b.setText(paramViewGroup.getContext().getString(2131165672, new Object[] { localDealPurchase.getCustomerName() }));
    c.setText(localDealPurchase.getRedemptionTitle(paramViewGroup.getContext(), a));
    return localView;
  }
  
  public int getViewTypeCount()
  {
    return 1;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */