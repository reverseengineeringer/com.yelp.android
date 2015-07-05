package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.experiment.FirstSearchExperiment;
import com.yelp.android.appdata.experiment.FirstSearchExperiment.Cohort;
import com.yelp.android.appdata.experiment.c;
import com.yelp.android.serializable.Category;
import com.yelp.android.ui.activities.support.YelpActivity;

public class ActivityOnboardingSearch
  extends YelpActivity
{
  public static Intent a(Context paramContext)
  {
    paramContext = new Intent(paramContext, ActivityOnboardingSearch.class);
    paramContext.setFlags(268468224);
    return paramContext;
  }
  
  private void a(View paramView, ActivityOnboardingSearch.SearchCategory paramSearchCategory)
  {
    TextView localTextView = (TextView)paramView.findViewById(2131492996);
    localTextView.setText(paramSearchCategory.getCategory().getName());
    localTextView.setCompoundDrawablesWithIntrinsicBounds(paramSearchCategory.getIconResId(), 0, 0, 0);
    paramView.setOnClickListener(new dc(this, paramSearchCategory));
  }
  
  public ViewIri getIri()
  {
    return ViewIri.OnboardingFirstSearch;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903098);
    paramBundle = (TextView)findViewById(2131493233);
    if (c.b.a() == FirstSearchExperiment.Cohort.search_step_ready) {
      paramBundle.setText(2131166393);
    }
    for (;;)
    {
      a(findViewById(2131493234), ActivityOnboardingSearch.SearchCategory.RESTAURANTS);
      a(findViewById(2131493235), ActivityOnboardingSearch.SearchCategory.BARS);
      a(findViewById(2131493236), ActivityOnboardingSearch.SearchCategory.COFFEE);
      overridePendingTransition(2130968587, 2130968586);
      return;
      paramBundle.setText(2131166332);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityOnboardingSearch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */