package com.yelp.android.serializable;

import android.os.Parcel;
import android.text.TextUtils;
import com.yelp.android.ui.panels.businesssearch.i;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class SearchResultLocalAd
  extends LocalAd
  implements i
{
  public static final ah<SearchResultLocalAd> CREATOR = new cz();
  private BusinessSearchResult mBusinessSearchResult;
  
  public static void initializeSearchResultLocalAds(List<SearchResultLocalAd> paramList, List<BusinessSearchResult> paramList1)
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
        YelpBusiness localYelpBusiness = localBusinessSearchResult.getBusiness();
        if (!localSearchResultLocalAd.getBusinessId().equals(localYelpBusiness.getId())) {
          break;
        }
        mBusinessSearchResult = localBusinessSearchResult;
      }
    }
    label96:
    Collections.sort(paramList);
  }
  
  public YelpBusiness getBusiness()
  {
    if (mBusinessSearchResult == null) {
      return null;
    }
    return mBusinessSearchResult.getBusiness();
  }
  
  public BusinessSearchResult getBusinessSearchResult()
  {
    return mBusinessSearchResult;
  }
  
  public Map<String, Object> getIriParams(YelpBusiness paramYelpBusiness, boolean paramBoolean)
  {
    paramYelpBusiness = super.getIriParams(paramYelpBusiness, paramBoolean);
    if ((mBusinessSearchResult != null) && (paramBoolean))
    {
      Object localObject = mBusinessSearchResult.getAnnotations();
      ArrayList localArrayList = new ArrayList();
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        localArrayList.add(((SearchResultAnnotation)((Iterator)localObject).next()).getType());
      }
      paramYelpBusiness.put("ad_type", TextUtils.join(",", localArrayList));
    }
    return paramYelpBusiness;
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    super.readFromParcel(paramParcel);
    mBusinessSearchResult = ((BusinessSearchResult)paramParcel.readParcelable(BusinessSearchResult.class.getClassLoader()));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeParcelable(mBusinessSearchResult, 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.SearchResultLocalAd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */