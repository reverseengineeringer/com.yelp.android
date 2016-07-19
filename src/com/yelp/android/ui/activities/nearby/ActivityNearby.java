package com.yelp.android.ui.activities.nearby;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.widget.SwipeRefreshLayout;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.j;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.SearchMode;
import com.yelp.android.appdata.webrequests.eo;
import com.yelp.android.cm.c;
import com.yelp.android.database.g;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.Filter;
import com.yelp.android.serializable.Sort;
import com.yelp.android.ui.activities.search.SearchBusinessesByList;
import com.yelp.android.ui.activities.search.SearchOverlay;
import com.yelp.android.ui.activities.support.ActivitySingleSearchBar;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.SuggestionFilter.SuggestionType;
import com.yelp.android.ui.util.r;
import java.util.Collections;

public class ActivityNearby
  extends ActivitySingleSearchBar<NearbyPageFragment>
  implements NearbyPageFragment.a
{
  private r a;
  
  public static Intent a(Context paramContext)
  {
    paramContext = b(paramContext);
    paramContext.setFlags(268468224);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString)
  {
    return SearchBusinessesByList.a(paramContext, new eo().b(paramString).a());
  }
  
  public static Intent a(Context paramContext, String paramString, Category paramCategory)
  {
    BusinessSearchRequest.SearchMode localSearchMode = BusinessSearchRequest.SearchMode.DEFAULT;
    if (("Everything".equals(paramString)) || (paramContext.getString(2131165605).equalsIgnoreCase(paramString)))
    {
      paramString = null;
      paramCategory = null;
    }
    for (;;)
    {
      if ((localSearchMode == BusinessSearchRequest.SearchMode.NEARBY) || (!TextUtils.isEmpty(paramString))) {
        paramCategory = null;
      }
      AppData.b().i().e().b();
      return SearchBusinessesByList.a(paramContext, new eo().b(paramString).a(paramCategory).a(localSearchMode).a(new Filter(null, Sort.Default)).a());
      if ("ActiveDeal".equals(paramString)) {
        paramString = paramContext.getString(2131165756);
      } else if ("CheckInOffer".equals(paramString)) {
        paramString = paramContext.getString(2131165617);
      } else if ("NewBusiness".equals(paramString)) {
        paramString = paramContext.getString(2131165995);
      } else if ("PlatformDelivery".equals(paramString)) {
        paramString = paramContext.getString(2131165771);
      } else {
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
    View localView1 = findViewById(2131690378);
    final View localView2 = findViewById(2131690886);
    final ImageView localImageView = (ImageView)findViewById(2131690888);
    SwipeRefreshLayout localSwipeRefreshLayout = ((NearbyPageFragment)e()).k();
    final Resources localResources = getResources();
    final Object localObject = new c(this, j.a().d());
    final Drawable localDrawable = localResources.getDrawable(2130838674);
    ((Drawable)localObject).mutate();
    localDrawable.mutate();
    int i = localResources.getColor(2131624076);
    localObject = com.yelp.android.d.a.c((Drawable)localObject);
    localDrawable = com.yelp.android.d.a.c(localDrawable);
    com.yelp.android.d.a.a((Drawable)localObject, i);
    com.yelp.android.d.a.a(localDrawable, i);
    localObject = (c)com.yelp.android.d.a.d((Drawable)localObject);
    localDrawable = com.yelp.android.d.a.d(localDrawable);
    if (a == null) {
      a = new r(localView1, localSwipeRefreshLayout, new View[] { localView2, findViewById(2131690311) })
      {
        float a = localResources.getDimension(2131362070);
        float b = a / 2.0F;
        float c = getResources().getDimension(2131361892);
        
        protected void a()
        {
          super.a();
          localImageView.setImageDrawable(localObject);
          localImageView.setOnClickListener(new ActivityNearby.2.1(this));
        }
        
        protected void a(float paramAnonymousFloat)
        {
          super.a(paramAnonymousFloat);
          float f1 = (c - paramAnonymousFloat) / c;
          f1 = b - f1 * b;
          float f2 = a;
          localView2.setPadding(localView2.getPaddingLeft(), (int)f1, localView2.getPaddingRight(), (int)(f2 - f1));
          if ((paramAnonymousFloat != c) && (localImageView.getDrawable() != localDrawable))
          {
            localImageView.setImageDrawable(localDrawable);
            localImageView.setOnClickListener(null);
          }
        }
      };
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
    int i = getResources().getDimensionPixelSize(2131361892);
    ((NearbyPageFragment)e()).k().a(false, i, getResources().getDimensionPixelSize(2131361962) + i);
  }
  
  public void b()
  {
    f();
  }
  
  protected NearbyPageFragment c()
  {
    return NearbyPageFragment.a(getIntent().getBooleanExtra("show_location_permission", false));
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    ((TextView)findViewById(2131690889)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        AppData.a(EventIri.SearchBar, IriSource.Nearby.getMapWithParameter());
        paramAnonymousView = Collections.singletonList(getResources().getString(2131165745));
        startActivity(SearchOverlay.a(ActivityNearby.this, paramAnonymousView, "", "", SuggestionFilter.SuggestionType.SEARCH, IriSource.Nearby));
      }
    });
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