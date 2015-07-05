package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.android.ui.panels.businesssearch.f;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class BusinessLocalAd
  extends LocalAd
  implements f
{
  public static final ah<BusinessLocalAd> CREATOR = new n();
  private YelpBusiness mBusiness;
  
  public static void initializeBusinessLocalAds(List<BusinessLocalAd> paramList, List<YelpBusiness> paramList1)
  {
    if ((paramList == null) || (paramList1 == null)) {
      return;
    }
    Iterator localIterator1 = paramList.iterator();
    for (;;)
    {
      if (!localIterator1.hasNext()) {
        break label89;
      }
      BusinessLocalAd localBusinessLocalAd = (BusinessLocalAd)localIterator1.next();
      Iterator localIterator2 = paramList1.iterator();
      if (localIterator2.hasNext())
      {
        YelpBusiness localYelpBusiness = (YelpBusiness)localIterator2.next();
        if (!localBusinessLocalAd.getBusinessId().equals(localYelpBusiness.getId())) {
          break;
        }
        mBusiness = localYelpBusiness;
      }
    }
    label89:
    Collections.sort(paramList);
  }
  
  public YelpBusiness getBusiness()
  {
    return mBusiness;
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    super.readFromParcel(paramParcel);
    mBusiness = ((YelpBusiness)paramParcel.readParcelable(YelpBusiness.class.getClassLoader()));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeParcelable(mBusiness, 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.BusinessLocalAd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */