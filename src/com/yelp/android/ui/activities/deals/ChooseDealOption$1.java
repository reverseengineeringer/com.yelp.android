package com.yelp.android.ui.activities.deals;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpDeal;

class ChooseDealOption$1
  implements AdapterView.OnItemClickListener
{
  ChooseDealOption$1(ChooseDealOption paramChooseDealOption, YelpBusiness paramYelpBusiness, YelpDeal paramYelpDeal) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    c.finish();
    c.startActivity(PurchaseDealsForm.a(c, a, b, paramInt));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.ChooseDealOption.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */