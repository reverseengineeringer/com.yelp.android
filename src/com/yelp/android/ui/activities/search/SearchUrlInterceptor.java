package com.yelp.android.ui.activities.search;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.yelp.android.analytics.o;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.SearchMode;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchOption;
import com.yelp.android.appdata.webrequests.fv;
import com.yelp.android.av.a;
import com.yelp.android.database.m;
import com.yelp.android.serializable.AttributeFilter;
import com.yelp.android.serializable.AttributeFilters;
import com.yelp.android.serializable.Filter;
import com.yelp.android.ui.activities.support.YelpUrlCatcherActivity;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;

public class SearchUrlInterceptor
  extends YelpUrlCatcherActivity
{
  private static String a(String paramString, Uri paramUri)
  {
    paramUri = paramUri.getQueryParameter(paramString);
    paramString = paramUri;
    if (!TextUtils.isEmpty(paramUri)) {
      paramString = URLDecoder.decode(paramUri);
    }
    return paramString;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Object localObject1 = getIntent().getData();
    AppData.b().k().a(new o((Uri)localObject1));
    paramBundle = new fv();
    if ((getIntent().getData() != null) && ("hot_new_businesses".equals(getIntent().getData().getLastPathSegment())))
    {
      paramBundle.a(BusinessSearchRequest.SearchMode.DEFAULT);
      paramBundle.b(AppData.b().getString(2131165930));
    }
    for (;;)
    {
      paramBundle = SearchBusinessesByList.a(this, paramBundle.a());
      paramBundle.putExtra("yelp:external_request", true);
      startActivity(paramBundle);
      finish();
      return;
      paramBundle.b(a("find_desc", (Uri)localObject1));
      paramBundle.a(a("find_loc", (Uri)localObject1));
      Object localObject2 = EnumSet.noneOf(SearchRequest.SearchOption.class);
      if ("1".equalsIgnoreCase(a("check_in_offers", (Uri)localObject1))) {
        ((EnumSet)localObject2).add(SearchRequest.SearchOption.CHECK_IN_OFFERS);
      }
      paramBundle.a((EnumSet)localObject2);
      localObject2 = a("cflt", (Uri)localObject1);
      if (!TextUtils.isEmpty((CharSequence)localObject2)) {
        paramBundle.a(AppData.b().j().a((String)localObject2));
      }
      localObject1 = a("attribs_filter", (Uri)localObject1);
      if (!TextUtils.isEmpty((CharSequence)localObject1))
      {
        localObject1 = ((String)localObject1).split(",");
        if (localObject1.length > 0)
        {
          localObject2 = new ArrayList();
          int j = localObject1.length;
          int i = 0;
          while (i < j)
          {
            ((List)localObject2).add(new AttributeFilter(localObject1[i]));
            i += 1;
          }
          paramBundle.a(new Filter(new AttributeFilters((List)localObject2)));
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchUrlInterceptor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */