package com.yelp.android.ui.activities.search;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BusinessContributionType;
import com.yelp.android.database.q;
import com.yelp.android.database.savedsearch.c;
import com.yelp.android.database.savedsearch.k;
import com.yelp.android.serializable.RichSearchSuggestion;
import com.yelp.android.serializable.RichSearchSuggestion.RichSearchSuggestionType;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.addphoto.PhotoTeaser;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.util.bz;

class ah
  implements AdapterView.OnItemClickListener
{
  ah(SearchOverlay paramSearchOverlay) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    String str1 = ((TextView)paramView.findViewById(2131493901)).getText().toString();
    paramAdapterView = paramAdapterView.getItemAtPosition(paramInt);
    String str2 = SearchOverlay.a(a).getText().toString();
    if ((paramAdapterView instanceof k))
    {
      SearchOverlay.a(a, SearchOverlay.a(a), str1);
      SearchOverlay.i(a);
      a.getIntent().putExtra("extra.search_text", str1);
      a.getIntent().putExtra("extra.location", SearchOverlay.m(a));
      a.setResult(1, a.getIntent());
      a.finish();
      paramView = new Intent("com.yelp.android.search");
      paramView.putExtra("extra.search_text", str1);
      paramView.putExtra("extra.location", SearchOverlay.m(a));
      paramView.setPackage(a.getPackageName());
      a.sendBroadcast(paramView);
      paramAdapterView = (k)paramAdapterView;
      AppData.b().i().b().a(paramAdapterView);
      AppData.a(EventIri.SearchExecuteSaved);
      a.startActivity(SearchBusinessesByList.a(a, paramAdapterView));
      return;
    }
    if (((paramAdapterView instanceof RichSearchSuggestion)) && (((RichSearchSuggestion)paramAdapterView).getRichSearchSuggestionType() == RichSearchSuggestion.RichSearchSuggestionType.BUSINESS))
    {
      paramAdapterView = (RichSearchSuggestion)paramAdapterView;
      if (SearchOverlay.q(a))
      {
        paramAdapterView = paramAdapterView.getBusiness();
        paramView = (BusinessContributionType)a.getIntent().getSerializableExtra("extra.contribution.type");
        bz.a(a, SearchOverlay.n(a), RichSearchSuggestion.RichSearchSuggestionType.BUSINESS.toString(), str1, str2, paramInt);
        switch (aj.a[paramView.ordinal()])
        {
        default: 
          a.startActivity(paramView.getAddIntent(a, paramAdapterView));
          return;
        }
        a.startActivity(PhotoTeaser.a(a, paramAdapterView));
        return;
      }
      bz.a(a, SearchOverlay.n(a), paramAdapterView.getRichSearchSuggestionType().toString(), str1, str2, paramInt);
      a.startActivity(ActivityBusinessPage.a(paramView.getContext(), paramAdapterView.getBusiness().getId()));
      return;
    }
    SearchOverlay.a(a, SearchOverlay.a(a), str1);
    SearchOverlay.i(a);
    if ((paramAdapterView instanceof RichSearchSuggestion)) {}
    for (paramAdapterView = ((RichSearchSuggestion)paramAdapterView).getRichSearchSuggestionType().toString();; paramAdapterView = RichSearchSuggestion.RichSearchSuggestionType.COMMON.toString())
    {
      bz.a(a, SearchOverlay.n(a), paramAdapterView, str1, str2, paramInt);
      SearchOverlay.a(a, str1, SearchOverlay.m(a), null);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */