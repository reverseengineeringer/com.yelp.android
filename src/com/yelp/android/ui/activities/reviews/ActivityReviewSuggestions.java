package com.yelp.android.ui.activities.reviews;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Html;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.BusinessContributionType;
import com.yelp.android.ui.activities.search.SearchOverlay;
import com.yelp.android.ui.activities.support.ActivitySingleSearchBar;
import com.yelp.android.ui.util.SuggestionFilter.SuggestionType;
import java.util.Collections;

public class ActivityReviewSuggestions
  extends ActivitySingleSearchBar<ReviewSuggestionsPageFragment>
{
  private EditText a;
  private String b;
  private String c;
  
  public static Intent a(Context paramContext)
  {
    return new Intent(paramContext, ActivityReviewSuggestions.class);
  }
  
  protected ReviewSuggestionsPageFragment a()
  {
    return ReviewSuggestionsPageFragment.f();
  }
  
  public ViewIri getIri()
  {
    return ViewIri.AddReviewPage;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 1055) && (paramInt2 == -1))
    {
      b = paramIntent.getStringExtra("extra.search_text");
      c = paramIntent.getStringExtra("extra.location");
      paramIntent = paramIntent.getStringExtra("extra.search.launch_method");
      a.setText(Html.fromHtml(getString(2131166915, new Object[] { b, c })));
      ((ReviewSuggestionsPageFragment)e()).a(b, c, paramIntent);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = ((EditText)findViewById(2131690889));
    a.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = SearchOverlay.a(ActivityReviewSuggestions.this, Collections.singletonList(getResources().getString(2131165745)), ActivityReviewSuggestions.a(ActivityReviewSuggestions.this), ActivityReviewSuggestions.b(ActivityReviewSuggestions.this), false, BusinessContributionType.REVIEW, SuggestionFilter.SuggestionType.CONTRIBUTION);
        startActivityForResult(paramAnonymousView, 1055);
      }
    });
    a.setHint(2131165732);
    if (paramBundle != null)
    {
      b = paramBundle.getString("search_text");
      c = paramBundle.getString("search_location");
      a.setText(Html.fromHtml(getString(2131166915, new Object[] { b, c })));
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putString("search_text", b);
    paramBundle.putString("search_location", c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ActivityReviewSuggestions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */