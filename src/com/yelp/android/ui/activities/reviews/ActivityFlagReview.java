package com.yelp.android.ui.activities.reviews;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.l;
import android.support.v4.app.o;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.activities.reviewpage.FlagReviewExplanationFragment;
import com.yelp.android.ui.activities.reviewpage.FlagReviewExplanationFragment.a;
import com.yelp.android.ui.activities.reviewpage.FlagReviewReasonsFragment;
import com.yelp.android.ui.activities.reviewpage.FlagReviewReasonsFragment.FlagType;
import com.yelp.android.ui.activities.reviewpage.FlagReviewReasonsFragment.a;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.ui.fragments.SimpleLayoutFragment;
import java.util.Locale;

public class ActivityFlagReview
  extends YelpActivity
  implements FlagReviewExplanationFragment.a, FlagReviewReasonsFragment.a
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
      getSupportFragmentManager().a().b(2131689997, SimpleLayoutFragment.a(2130903246)).a(null).a();
      return;
    }
    getSupportFragmentManager().a().b(2131689997, FlagReviewExplanationFragment.a(paramFlagType, a)).a(null).a();
  }
  
  public void a(String paramString)
  {
    hideLoadingDialog();
    paramString = AlertDialogFragment.a(null, paramString);
    paramString.a(new DialogInterface.OnDismissListener()
    {
      public void onDismiss(DialogInterface paramAnonymousDialogInterface)
      {
        finish();
      }
    });
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
    if (getSupportFragmentManager().a(2131689997) == null) {
      getSupportFragmentManager().a().b(2131689997, new FlagReviewReasonsFragment()).a();
    }
    setTitle(2131166456);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ActivityFlagReview
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */