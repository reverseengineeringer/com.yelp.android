package com.yelp.android.serializable;

import android.os.Parcel;
import android.text.TextUtils;
import com.yelp.android.ui.panels.businesssearch.c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class SearchResultLocalAd
  extends LocalAd
  implements c
{
  public static final a<SearchResultLocalAd> CREATOR = new SearchResultLocalAd.1();
  private BusinessSearchResult k;
  
  public static void a(List<SearchResultLocalAd> paramList, List<BusinessSearchResult> paramList1)
  {
    if ((paramList == null) || (paramList1 == null)) {
      return;
    }
    Iterator localIterator1 = paramList.iterator();
    for (;;)
    {
      if (!localIterator1.hasNext()) {
        break label96;
      }
      SearchResultLocalAd localSearchResultLocalAd = (SearchResultLocalAd)localIterator1.next();
      Iterator localIterator2 = paramList1.iterator();
      if (localIterator2.hasNext())
      {
        BusinessSearchResult localBusinessSearchResult = (BusinessSearchResult)localIterator2.next();
        YelpBusiness localYelpBusiness = localBusinessSearchResult.a();
        if (!localSearchResultLocalAd.m().equals(localYelpBusiness.aD())) {
          break;
        }
        k = localBusinessSearchResult;
      }
    }
    label96:
    Collections.sort(paramList);
  }
  
  public YelpBusiness a()
  {
    if (k == null) {
      return null;
    }
    return k.a();
  }
  
  public Map<String, Object> a(YelpBusiness paramYelpBusiness, boolean paramBoolean)
  {
    paramYelpBusiness = super.a(paramYelpBusiness, paramBoolean);
    if ((k != null) && (paramBoolean))
    {
      Object localObject = k.h();
      ArrayList localArrayList = new ArrayList();
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        localArrayList.add(((SearchResultAnnotation)((Iterator)localObject).next()).a());
      }
      paramYelpBusiness.put("ad_type", TextUtils.join(",", localArrayList));
    }
    return paramYelpBusiness;
  }
  
  public void a(Parcel paramParcel)
  {
    super.a(paramParcel);
    k = ((BusinessSearchResult)paramParcel.readParcelable(BusinessSearchResult.class.getClassLoader()));
  }
  
  public BusinessSearchResult e()
  {
    return k;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeParcelable(k, 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.SearchResultLocalAd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */