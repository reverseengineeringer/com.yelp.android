package com.yelp.android.ui.activities;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BusinessContributionType;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.FormatMode;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.SearchMode;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.ax.a;
import com.yelp.android.database.q;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.addphoto.PhotoTeaser;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.support.ActivitySingleSearchBar;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.activities.support.o;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter.DisplayFeature;
import com.yelp.android.ui.util.ScrollToLoadListView;

public class ContributionSearchFragment
  extends YelpListFragment
{
  private BusinessContributionType a;
  private BusinessAdapter<YelpBusiness> b;
  private BusinessSearchRequest c;
  private YelpBusiness d;
  private String e;
  private String g;
  private String h;
  private final j<SearchRequest.SearchResponse> i = new ex(this);
  private o j = new ey(this);
  
  public static ContributionSearchFragment a(BusinessContributionType paramBusinessContributionType)
  {
    ContributionSearchFragment localContributionSearchFragment = new ContributionSearchFragment();
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("extra.contribution_type", paramBusinessContributionType);
    localContributionSearchFragment.setArguments(localBundle);
    return localContributionSearchFragment;
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = (YelpBusiness)paramListView.getItemAtPosition(paramInt);
    if (a != null)
    {
      if (a != BusinessContributionType.CHECK_IN) {
        break label75;
      }
      AppData.a(EventIri.SearchCheckInSelect, "id", paramListView.getId());
    }
    label75:
    while (a != BusinessContributionType.BUSINESS_PHOTO)
    {
      paramView = a.getAddIntent(getActivity(), paramListView);
      if (!a.addIntentReturnsData) {
        break;
      }
      d = paramListView;
      startActivityForResult(paramView, 1006);
      return;
    }
    AppData.a(EventIri.SearchAddPhotoSelect, "id", paramListView.getId());
    startActivity(PhotoTeaser.a(getActivity(), paramListView));
    return;
    paramView.addFlags(268435456);
    startActivity(paramView);
  }
  
  public void a(String paramString1, String paramString2, String paramString3)
  {
    if ((paramString1.equals(e)) && (paramString2.equals(g)) && (f == null)) {
      return;
    }
    if (c != null)
    {
      c.setCallback(null);
      c.cancel(true);
    }
    e = paramString1;
    g = paramString2;
    h = paramString3;
    a_();
  }
  
  public void a_()
  {
    c = null;
    x();
    b(0);
    b.clear();
    a(false);
    b();
  }
  
  protected void b()
  {
    super.b();
    if ((c != null) && ((c.isFetching()) || (c.isWaitingForLocation()))) {
      return;
    }
    a locala = AppData.b().i().g();
    if (c != null)
    {
      c.setCallback(null);
      c.cancel(true);
      c = c.copy().setCallback(i);
      if ((a != BusinessContributionType.CHECK_IN) && (!TextUtils.equals(g, getString(2131165670)))) {
        break label206;
      }
      c.setLocation(null);
      c.setSearchMode(BusinessSearchRequest.SearchMode.DEFAULT);
    }
    for (;;)
    {
      c.setSearchTerms(e);
      c.setOffset(p());
      if (p() == 0) {
        a(c);
      }
      c.search();
      return;
      c = new BusinessSearchRequest(locala, i);
      c.setFormatMode(BusinessSearchRequest.FormatMode.SHORT);
      break;
      label206:
      c.setSearchMode(null);
      c.setTermNear(g);
    }
  }
  
  public b getIri()
  {
    if (a == BusinessContributionType.BUSINESS_PHOTO) {
      return ViewIri.SearchAddPhoto;
    }
    return ViewIri.SearchNearbyCheckIn;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    b = new BusinessAdapter(getActivity(), paramBundle);
    b.a(new BusinessAdapter.DisplayFeature[] { BusinessAdapter.DisplayFeature.ADDRESS });
    m().setAdapter(b);
    m().setItemsCanFocus(true);
    c = ((BusinessSearchRequest)a("search", c, i));
    if ((c != null) && ((c.isFetching()) || (c.isWaitingForLocation())) && (p() == 0)) {
      i_();
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default: 
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
    }
    do
    {
      return;
    } while (paramInt2 != -1);
    BusinessContributionType localBusinessContributionType = BusinessContributionType.getType(paramIntent);
    paramIntent = localBusinessContributionType.getContribution(paramIntent);
    Intent localIntent = ActivityBusinessPage.b(getActivity(), d);
    localBusinessContributionType.writeToIntent(localIntent, paramIntent);
    startActivity(localIntent);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = ((BusinessContributionType)getArguments().getSerializable("extra.contribution_type"));
    if (paramBundle != null)
    {
      d = ((YelpBusiness)paramBundle.getParcelable("selected_business"));
      e = paramBundle.getString("search_term");
      g = paramBundle.getString("search_location");
    }
    if (g == null) {
      g = getString(2131165670);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if ((getActivity() instanceof ActivitySingleSearchBar)) {
      ((ActivitySingleSearchBar)getActivity()).a((ListView)paramLayoutInflater.findViewById(16908298));
    }
    return paramLayoutInflater;
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelable("selected_business", d);
    paramBundle.putString("search_term", e);
    paramBundle.putString("search_location", g);
    b.a(paramBundle);
  }
  
  public void onStop()
  {
    super.onStop();
    a("search", c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ContributionSearchFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */