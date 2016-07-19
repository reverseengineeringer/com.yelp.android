package com.yelp.android.serializable;

import android.os.Parcel;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class BusinessLocalAd
  extends LocalAd
  implements com.yelp.android.ui.panels.businesssearch.a
{
  public static final a<BusinessLocalAd> CREATOR = new BusinessLocalAd.1();
  private YelpBusiness k;
  
  public static void a(List<BusinessLocalAd> paramList, List<YelpBusiness> paramList1)
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
        if (!localBusinessLocalAd.m().equals(localYelpBusiness.aD())) {
          break;
        }
        k = localYelpBusiness;
      }
    }
    label89:
    Collections.sort(paramList);
  }
  
  public YelpBusiness a()
  {
    return k;
  }
  
  public void a(Parcel paramParcel)
  {
    super.a(paramParcel);
    k = ((YelpBusiness)paramParcel.readParcelable(YelpBusiness.class.getClassLoader()));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeParcelable(k, 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.BusinessLocalAd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */