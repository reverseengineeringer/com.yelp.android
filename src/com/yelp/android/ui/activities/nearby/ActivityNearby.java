package com.yelp.android.ui.activities.nearby;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.widget.SwipeRefreshLayout;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.SearchMode;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchOption;
import com.yelp.android.appdata.webrequests.fv;
import com.yelp.android.database.q;
import com.yelp.android.serializable.AttributeFilters;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.Filter;
import com.yelp.android.serializable.Filter.BusinessState;
import com.yelp.android.serializable.Filter.Sort;
import com.yelp.android.ui.activities.search.SearchBusinessesByList;
import com.yelp.android.ui.activities.support.ActivitySingleSearchBar;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.ab;
import java.util.ArrayList;
import java.util.EnumSet;

public class ActivityNearby
  extends ActivitySingleSearchBar<NearbyPageFragment>
  implements ac
{
  private ab a;
  
  public static Intent a(Context paramContext)
  {
    paramContext = b(paramContext);
    paramContext.setFlags(268468224);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString)
  {
    return SearchBusinessesByList.a(paramContext, new fv().b(paramString).a());
  }
  
  public static Intent a(Context paramContext, String paramString, Category paramCategory)
  {
    BusinessSearchRequest.SearchMode localSearchMode = BusinessSearchRequest.SearchMode.DEFAULT;
    EnumSet localEnumSet1 = EnumSet.noneOf(SearchRequest.SearchOption.class);
    EnumSet localEnumSet2 = EnumSet.noneOf(Filter.BusinessState.class);
    ArrayList localArrayList = new ArrayList();
    if (("Everything".equals(paramString)) || (paramContext.getString(2131165475).equals(paramString)))
    {
      paramString = null;
      paramCategory = null;
    }
    for (;;)
    {
      if ((!localEnumSet1.isEmpty()) || (localSearchMode == BusinessSearchRequest.SearchMode.NEARBY) || (!TextUtils.isEmpty(paramString))) {
        paramCategory = null;
      }
      AppData.b().i().g().b();
      return SearchBusinessesByList.a(paramContext, new fv().b(paramString).a(paramCategory).a(localSearchMode).a(localEnumSet1).a(new Filter(localEnumSet2, null, null, Filter.Sort.Default, new AttributeFilters(localArrayList))).a());
      if ("ActiveDeal".equals(paramString))
      {
        paramString = paramContext.getString(2131165681);
      }
      else if ("CheckInOffer".equals(paramString))
      {
        localEnumSet1 = EnumSet.of(SearchRequest.SearchOption.CHECK_IN_OFFERS);
        paramString = null;
      }
      else if ("NewBusiness".equals(paramString))
      {
        paramString = paramContext.getString(2131165930);
      }
      else if ("PlatformDelivery".equals(paramString))
      {
        paramString = paramContext.getString(2131165693);
      }
      else
      {
        paramString = null;
      }
    }
  }
  
  public static Intent b(Context paramContext)
  {
    return new Intent(paramContext, ActivityNearby.class);
  }
  
  private void f()
  {
    View localView1 = findViewById(2131493634);
    View localView2 = findViewById(2131494015);
    ImageView localImageView = (ImageView)findViewById(2131494017);
    SwipeRefreshLayout localSwipeRefreshLayout = ((NearbyPageFragment)e()).k();
    Resources localResources = getResources();
    Drawable localDrawable2 = localResources.getDrawable(2130838194);
    Drawable localDrawable1 = localResources.getDrawable(2130838069);
    localDrawable2.mutate();
    localDrawable1.mutate();
    int i = localResources.getColor(2131361874);
    localDrawable2 = com.yelp.android.a.a.c(localDrawable2);
    localDrawable1 = com.yelp.android.a.a.c(localDrawable1);
    com.yelp.android.a.a.a(localDrawable2, i);
    com.yelp.android.a.a.a(localDrawable1, i);
    localDrawable2 = com.yelp.android.a.a.d(localDrawable2);
    localDrawable1 = com.yelp.android.a.a.d(localDrawable1);
    if (a == null) {
      a = new c(this, localView1, localSwipeRefreshLayout, new View[] { localView2, findViewById(2131493600) }, localResources, localView2, localImageView, localDrawable1, localDrawable2);
    }
    ((NearbyPageFragment)e()).m().setOnTouchListener(a);
  }
  
  public void a()
  {
    ((NearbyPageFragment)e()).m().setOnTouchListener(null);
  }
  
  public void a(ListView paramListView)
  {
    super.a(paramListView);
    int i = getResources().getDimensionPixelSize(2131427370);
    ((NearbyPageFragment)e()).k().a(false, i, getResources().getDimensionPixelSize(2131427434) + i);
  }
  
  public void b()
  {
    f();
  }
  
  protected NearbyPageFragment d()
  {
    return new NearbyPageFragment();
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    ((TextView)findViewById(2131493226)).setOnClickListener(new b(this));
  }
  
  public void onDrawerItemSelected(Intent paramIntent, String paramString)
  {
    super.onDrawerItemSelected(paramIntent, paramString);
    hideLogoInToolbar();
  }
  
  protected void onResume()
  {
    super.onResume();
    setNearbyHotButtonSelected(true);
    showLogoInToolbar();
  }
  
  protected void onStop()
  {
    super.onStop();
    if (a != null) {
      a.b();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.ActivityNearby
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */