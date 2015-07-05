package com.yelp.android.ui.activities.businesspage;

import android.content.Intent;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentManager;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.DealPurchase;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.android.ui.activities.deals.ActivityDealRedemption;
import com.yelp.android.ui.util.cr;
import com.yelp.android.ui.util.s;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class ca
  implements m<ArrayList<YelpDeal>>
{
  private final String b;
  
  public ca(BusinessPageFragment paramBusinessPageFragment, String paramString)
  {
    b = paramString;
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ArrayList<YelpDeal> paramArrayList)
  {
    paramApiRequest = (ActivityBusinessPage)a.getActivity();
    paramApiRequest.hideLoadingDialog();
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
    {
      Object localObject = (YelpDeal)paramArrayList.next();
      if (b.equals(((YelpDeal)localObject).getId())) {
        if (((YelpDeal)localObject).getPurchases().size() == 1)
        {
          localObject = ActivityDealRedemption.a(paramApiRequest, (YelpDeal)localObject, (DealPurchase)((YelpDeal)localObject).getPurchases().get(0));
          a.startActivityForResult((Intent)localObject, 1013);
        }
        else
        {
          BusinessPageFragment.v(a).a((YelpDeal)localObject, true);
          new bx(a).show(paramApiRequest.getSupportFragmentManager().beginTransaction(), "deal dialog");
        }
      }
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    paramApiRequest = (ActivityBusinessPage)a.getActivity();
    paramApiRequest.hideLoadingDialog();
    cr.a(paramYelpException.getMessage(paramApiRequest), 1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.ca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */