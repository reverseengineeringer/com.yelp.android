package com.yelp.android.ui.activities.search;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.o;
import com.yelp.android.appdata.webrequests.TrackOfflineAttributionRequest;
import com.yelp.android.appdata.webrequests.TrackOfflineAttributionRequest.OfflineAttributionEventType;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.SearchResultLocalAd;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;

class SearchBusinessesByList$5
  implements AdapterView.OnItemClickListener
{
  SearchBusinessesByList$5(SearchBusinessesByList paramSearchBusinessesByList) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if ((SearchBusinessesByList.a(a) == null) || (SearchBusinessesByList.a(a).isEmpty())) {}
    Object localObject;
    do
    {
      return;
      paramView = paramView.getContext();
      localObject = paramAdapterView.getItemAtPosition(paramInt);
      if (a.a == null) {}
      for (paramAdapterView = null; (localObject instanceof BusinessSearchResult); paramAdapterView = a.a.o())
      {
        localObject = (BusinessSearchResult)localObject;
        a.startActivityForResult(ActivityBusinessPage.a(paramView, (BusinessSearchResult)localObject, paramAdapterView), 1010);
        return;
      }
      if ((localObject instanceof SearchResultLocalAd))
      {
        localObject = (SearchResultLocalAd)localObject;
        AppData.a(EventIri.AdSearchListClick, ((SearchResultLocalAd)localObject).a(false));
        TrackOfflineAttributionRequest.a(((SearchResultLocalAd)localObject).a(), TrackOfflineAttributionRequest.OfflineAttributionEventType.AD_CLICK);
        a.startActivityForResult(ActivityBusinessPage.a(paramView, ((SearchResultLocalAd)localObject).e(), paramAdapterView), 1010);
        return;
      }
      if ("spelling suggestion".equals(localObject))
      {
        SearchBusinessesByList.a(a, paramView, SearchBusinessesByList.b(a));
        return;
      }
      if ((localObject instanceof Intent))
      {
        a.startActivity((Intent)localObject);
        return;
      }
    } while ((localObject instanceof BusinessSearchResult));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchBusinessesByList.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */