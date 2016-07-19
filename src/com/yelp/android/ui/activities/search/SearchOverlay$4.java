package com.yelp.android.ui.activities.search;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView<*>;
import android.widget.EditText;
import android.widget.TextView;
import com.yelp.android.analytics.GADimensions;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BusinessContributionType;
import com.yelp.android.serializable.PlatformFilter;
import com.yelp.android.serializable.PlatformRSSTermMap;
import com.yelp.android.serializable.RichSearchSuggestion;
import com.yelp.android.serializable.RichSearchSuggestion.RichSearchSuggestionType;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.addphoto.PhotoTeaser;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.reservations.c;
import com.yelp.android.ui.dialogs.PlatformSearchDialogFragment;
import com.yelp.android.ui.util.SuggestionFilter;
import com.yelp.android.ui.util.SuggestionFilter.SuggestionType;
import com.yelp.android.util.StringUtils;
import java.util.List;

class SearchOverlay$4
  implements AdapterView.OnItemClickListener
{
  SearchOverlay$4(SearchOverlay paramSearchOverlay) {}
  
  private void a(RichSearchSuggestion paramRichSearchSuggestion)
  {
    BusinessContributionType localBusinessContributionType = (BusinessContributionType)a.getIntent().getSerializableExtra("extra.contribution.type");
    switch (SearchOverlay.7.b[localBusinessContributionType.ordinal()])
    {
    default: 
      a.startActivity(localBusinessContributionType.getAddIntent(a, paramRichSearchSuggestion.g()));
      return;
    }
    a.startActivityForResult(PhotoTeaser.a(a, paramRichSearchSuggestion.g(), localBusinessContributionType, (Uri)a.getIntent().getParcelableExtra("extra.contribution")), 1041);
  }
  
  private void a(String paramString)
  {
    StringUtils.a(a.d, SearchOverlay.a(a), paramString);
    SearchOverlay.g(a);
    SearchOverlay.a(a, paramString, SearchOverlay.k(a), null);
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Object localObject1 = null;
    String str = ((TextView)paramView.findViewById(2131690786)).getText().toString();
    Object localObject2 = paramAdapterView.getItemAtPosition(paramInt);
    paramAdapterView = SearchOverlay.a(a).getText().toString();
    if ((localObject2 instanceof RichSearchSuggestion))
    {
      localObject2 = (RichSearchSuggestion)localObject2;
      SuggestionFilter.a(a, SearchOverlay.l(a), ((RichSearchSuggestion)localObject2).a().toString(), ((RichSearchSuggestion)localObject2).h(), paramAdapterView, paramInt);
      switch (SearchOverlay.7.a[localObject2.a().ordinal()])
      {
      default: 
        a(str);
        return;
      case 1: 
        if (SearchOverlay.o(a) == SuggestionFilter.SuggestionType.CONTRIBUTION)
        {
          a((RichSearchSuggestion)localObject2);
          return;
        }
        a.startActivity(ActivityBusinessPage.b(paramView.getContext(), ((RichSearchSuggestion)localObject2).g().aD()));
        return;
      case 2: 
        paramAdapterView = ((RichSearchSuggestion)localObject2).o();
        AppData.a(EventIri.SearchBarPlatformOpen);
        paramAdapterView = PlatformSearchDialogFragment.a(((RichSearchSuggestion)localObject2).h(), ((RichSearchSuggestion)localObject2).n(), SearchOverlay.b(a).getText().toString(), paramAdapterView, "search_bar");
        paramAdapterView.a(SearchOverlay.p(a));
        paramAdapterView.show(a.getSupportFragmentManager(), "PLATFORM_DIALOG");
        return;
      case 3: 
        paramView = new PlatformFilter("delivery_current_location", null);
        if (!TextUtils.isEmpty(((RichSearchSuggestion)localObject2).m())) {
          paramAdapterView = ((RichSearchSuggestion)localObject2).m();
        }
        break;
      }
    }
    for (;;)
    {
      MOBILE_VERTICAL_SEARCH_ENTRYvalue = "search_bar_suggest";
      MOBILE_VERTICAL_SEARCH_TYPEvalue = "delivery";
      a.startActivity(SearchBusinessesByList.a(a.c(), paramView, paramAdapterView, null));
      return;
      if (((RichSearchSuggestion)localObject2).n() != null)
      {
        paramAdapterView = ((RichSearchSuggestion)localObject2).n().c();
        continue;
        MOBILE_VERTICAL_SEARCH_ENTRYvalue = "search_bar_suggest";
        MOBILE_VERTICAL_SEARCH_TYPEvalue = "reservation";
        paramAdapterView = SearchOverlay.k(a);
        if (a.l().contains(paramAdapterView)) {
          paramAdapterView = (AdapterView<?>)localObject1;
        }
        for (;;)
        {
          a.startActivity(SearchBusinessesByList.a(a, c.a(), true, ((RichSearchSuggestion)localObject2).m(), paramAdapterView));
          return;
          SuggestionFilter.a(a, SearchOverlay.l(a), RichSearchSuggestion.RichSearchSuggestionType.COMMON.toString(), str, paramAdapterView, paramInt);
          a(str);
          return;
        }
      }
      else
      {
        paramAdapterView = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchOverlay.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */