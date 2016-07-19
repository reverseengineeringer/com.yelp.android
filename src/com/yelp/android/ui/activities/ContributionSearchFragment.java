package com.yelp.android.ui.activities;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BusinessContributionType;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.FormatMode;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.SearchMode;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.database.g;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.addphoto.PhotoTeaser;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.support.ActivitySingleSearchBar;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.activities.support.b.e;
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
  private String f;
  private String g;
  private String i;
  private final k.b<SearchRequest.SearchResponse> j = new ContributionSearchFragment.1(this);
  private b.e k = new ContributionSearchFragment.2(this);
  
  public static ContributionSearchFragment a(BusinessContributionType paramBusinessContributionType, Uri paramUri)
  {
    ContributionSearchFragment localContributionSearchFragment = new ContributionSearchFragment();
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("contribution_type", paramBusinessContributionType);
    localBundle.putParcelable("contribution", paramUri);
    localContributionSearchFragment.setArguments(localBundle);
    return localContributionSearchFragment;
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = (YelpBusiness)paramListView.getItemAtPosition(paramInt);
    d = paramListView;
    if (a != null)
    {
      if (a == BusinessContributionType.CHECK_IN)
      {
        AppData.a(EventIri.SearchCheckInSelect, "id", paramListView.aD());
        startActivityForResult(ActivityCheckIn.a(getActivity(), paramListView, i), 1012);
      }
    }
    else {
      return;
    }
    if (a.isMedia())
    {
      AppData.a(EventIri.SearchAddPhotoSelect, "id", paramListView.aD());
      startActivityForResult(PhotoTeaser.a(getActivity(), paramListView, a, (Uri)getArguments().getParcelable("contribution")), 1041);
      return;
    }
    paramListView = a.getAddIntent(getActivity(), paramListView);
    paramListView.addFlags(268435456);
    startActivity(paramListView);
  }
  
  public void a(String paramString1, String paramString2, String paramString3)
  {
    if ((paramString1.equals(e)) && (paramString2.equals(f)) && (h == null)) {
      return;
    }
    if (c != null)
    {
      c.a(null);
      c.a(true);
    }
    e = paramString1;
    f = paramString2;
    g = paramString3;
    p_();
  }
  
  protected void b()
  {
    super.b();
    if ((c != null) && ((c.u()) || (c.d()))) {
      return;
    }
    com.yelp.android.ca.a locala = AppData.b().i().e();
    if (c != null)
    {
      c.a(null);
      c.a(true);
      c = c.B().a(j);
      if ((a != BusinessContributionType.CHECK_IN) && (!TextUtils.equals(f, getString(2131165745)))) {
        break label206;
      }
      c.b(null);
      c.a(BusinessSearchRequest.SearchMode.DEFAULT);
    }
    for (;;)
    {
      c.g(e);
      c.a(p());
      if (p() == 0) {
        a(c);
      }
      c.y();
      return;
      c = new BusinessSearchRequest(locala, j);
      c.a(BusinessSearchRequest.FormatMode.SHORT);
      break;
      label206:
      c.a(null);
      c.e(f);
    }
  }
  
  public com.yelp.android.analytics.iris.a getIri()
  {
    if (a.isMedia()) {
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
    c = ((BusinessSearchRequest)a("search", c, j));
    if ((c != null) && ((c.u()) || (c.d())) && (p() == 0)) {
      H_();
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      if (paramInt2 == -1)
      {
        BusinessContributionType localBusinessContributionType = BusinessContributionType.getType(paramIntent);
        paramIntent = localBusinessContributionType.getContribution(paramIntent);
        Intent localIntent = ActivityBusinessPage.b(getActivity(), d);
        localBusinessContributionType.writeToIntent(localIntent, paramIntent);
        startActivity(localIntent);
        i = "";
        return;
      }
      i = ActivityCheckIn.a(paramIntent);
      return;
      if (paramInt2 == -1) {
        getActivity().finish();
      }
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = ((BusinessContributionType)getArguments().getSerializable("contribution_type"));
    if (paramBundle != null)
    {
      d = ((YelpBusiness)paramBundle.getParcelable("selected_business"));
      e = paramBundle.getString("search_term");
      f = paramBundle.getString("search_location");
      i = paramBundle.getString("contribution_text");
    }
    if (f == null) {
      f = getString(2131165745);
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
    paramBundle.putString("search_location", f);
    paramBundle.putString("contribution_text", i);
    b.a(paramBundle);
  }
  
  public void onStop()
  {
    super.onStop();
    a("search", c);
  }
  
  public void p_()
  {
    c = null;
    z();
    b(0);
    b.clear();
    b(false);
    b();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ContributionSearchFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */