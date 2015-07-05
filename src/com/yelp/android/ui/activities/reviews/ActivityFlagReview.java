package com.yelp.android.ui.activities.reviews;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.activities.reviewpage.FlagReviewExplanationFragment;
import com.yelp.android.ui.activities.reviewpage.FlagReviewReasonsFragment;
import com.yelp.android.ui.activities.reviewpage.FlagReviewReasonsFragment.FlagType;
import com.yelp.android.ui.activities.reviewpage.aa;
import com.yelp.android.ui.activities.reviewpage.y;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.ui.fragments.SimpleLayoutFragment;
import java.util.Locale;

public class ActivityFlagReview
  extends YelpActivity
  implements aa, y
{
  private YelpBusinessReview a;
  private String b;
  
  public static Intent a(Context paramContext, YelpBusinessReview paramYelpBusinessReview, String paramString)
  {
    paramContext = new Intent(paramContext, ActivityFlagReview.class);
    paramContext.putExtra("extra.review", paramYelpBusinessReview);
    paramContext.putExtra("extra.business_country", paramString);
    return paramContext;
  }
  
  public void a()
  {
    showLoadingDialog();
  }
  
  public void a(FlagReviewReasonsFragment.FlagType paramFlagType)
  {
    if ((b == null) || (b.equalsIgnoreCase(Locale.US.getCountry()))) {}
    for (int i = 1; (paramFlagType == FlagReviewReasonsFragment.FlagType.FalseInformation) && (i != 0); i = 0)
    {
      getSupportFragmentManager().beginTransaction().replace(2131493332, SimpleLayoutFragment.a(2130903220)).addToBackStack(null).commit();
      return;
    }
    getSupportFragmentManager().beginTransaction().replace(2131493332, FlagReviewExplanationFragment.a(paramFlagType, a)).addToBackStack(null).commit();
  }
  
  public void a(String paramString)
  {
    hideLoadingDialog();
    paramString = AlertDialogFragment.a(null, paramString);
    paramString.a(new b(this));
    paramString.show(getSupportFragmentManager(), null);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.FlagReview;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = ((YelpBusinessReview)getIntent().getParcelableExtra("extra.review"));
    b = getIntent().getStringExtra("extra.business_country");
    if (getSupportFragmentManager().findFragmentById(2131493332) == null) {
      getSupportFragmentManager().beginTransaction().replace(2131493332, new FlagReviewReasonsFragment()).commit();
    }
    setTitle(2131166454);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ActivityFlagReview
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */