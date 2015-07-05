package com.yelp.android.ui.activities.search;

import android.content.Intent;
import android.database.DataSetObserver;
import android.location.Address;
import android.text.TextUtils;
import com.yelp.android.appdata.ap;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse;
import com.yelp.android.ui.dialogs.ChoiceDialog;
import com.yelp.android.ui.dialogs.DidYouMeanDialog;
import com.yelp.android.ui.map.YelpMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class v
  extends DataSetObserver
{
  v(SearchBusinessesByMap paramSearchBusinessesByMap) {}
  
  public void onChanged()
  {
    super.onChanged();
    SearchBusinessesByMap.d(a).setOnCameraUpdate(SearchBusinessesByMap.c(a));
    Object localObject2 = a.a.l();
    if (localObject2 == null) {
      return;
    }
    a.disableLoading();
    String str = ((SearchRequest.SearchResponse)localObject2).getSpellingSuggestion();
    Object localObject1 = ((SearchRequest.SearchResponse)localObject2).getAmbiguousLocations();
    if (!((List)localObject1).isEmpty())
    {
      localObject2 = new ArrayList(((List)localObject1).size());
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext()) {
        ((ArrayList)localObject2).add(((Address)((Iterator)localObject1).next()).getFeatureName());
      }
      localObject1 = ChoiceDialog.a(a, 2131165700, (String[])((ArrayList)localObject2).toArray(new String[((ArrayList)localObject2).size()]));
      a.startActivityForResult((Intent)localObject1, 1012);
      return;
    }
    if (!TextUtils.isEmpty(str))
    {
      a.startActivityForResult(DidYouMeanDialog.a(a, 2131165700, str), 1049);
      return;
    }
    SearchBusinessesByMap.a(a, (SearchRequest.SearchResponse)localObject2);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */