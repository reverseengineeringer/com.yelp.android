package com.yelp.android.ui.activities.reviews;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.ui.activities.support.WebViewActivity;
import com.yelp.android.ui.activities.support.WebViewActivity.Feature;
import com.yelp.android.ui.activities.support.YelpActivity;
import java.util.EnumSet;

public class ActivityElitePrompt
  extends YelpActivity
{
  private int a(View paramView)
  {
    int[] arrayOfInt = new int[2];
    paramView.getLocationOnScreen(arrayOfInt);
    return arrayOfInt[1];
  }
  
  public static void a(Intent paramIntent, Context paramContext, String paramString)
  {
    paramIntent.setClass(paramContext, ActivityElitePrompt.class);
    paramIntent.putExtra("eliteprompt_user_name", paramString);
  }
  
  public void continueButton(View paramView)
  {
    startActivity(getIntent().setClass(this, ActivityReviewComplete.class));
    finish();
  }
  
  public ViewIri getIri()
  {
    return ViewIri.ReviewPostedEliteSplash;
  }
  
  public void learnMoreButton(View paramView)
  {
    startActivity(WebViewActivity.getWebIntent(this, Uri.parse(getString(2131165749)), getString(2131166015), ViewIri.ReviewPostedEliteLearnMore, EnumSet.noneOf(WebViewActivity.Feature.class)));
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903087);
    setTitle(2131166924);
    ((TextView)findViewById(2131493181)).setText(getString(2131165747, new Object[] { getIntent().getStringExtra("eliteprompt_user_name") }));
  }
  
  protected void onResume()
  {
    View localView = findViewById(2131493183);
    localView.getViewTreeObserver().addOnGlobalLayoutListener(new a(this, localView));
    super.onResume();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ActivityElitePrompt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */