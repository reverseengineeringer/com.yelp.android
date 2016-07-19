package com.yelp.android.ui.activities.bookmarks;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import com.yelp.android.serializable.RichSearchSuggestion;
import com.yelp.android.serializable.RichSearchSuggestion.RichSearchSuggestionType;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.widgets.EditTextAndClearButton;

class ActivityBookmarks$11
  implements AdapterView.OnItemClickListener
{
  ActivityBookmarks$11(ActivityBookmarks paramActivityBookmarks) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = paramAdapterView.getItemAtPosition(paramInt);
    if ((paramAdapterView instanceof RichSearchSuggestion))
    {
      paramAdapterView = (RichSearchSuggestion)paramAdapterView;
      ActivityBookmarks.a(paramInt, paramAdapterView.i());
    }
    switch (ActivityBookmarks.3.a[paramAdapterView.a().ordinal()])
    {
    default: 
      ActivityBookmarks.a(a, paramAdapterView.m());
      ActivityBookmarks.a(a, paramAdapterView.a().equals(RichSearchSuggestion.RichSearchSuggestionType.CATEGORY));
      ActivityBookmarks.q(a).getEditText().setText(ActivityBookmarks.d(a));
      ActivityBookmarks.u(a);
      return;
    }
    a.startActivity(ActivityBusinessPage.b(paramView.getContext(), paramAdapterView.g().aD()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bookmarks.ActivityBookmarks.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */