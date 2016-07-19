package com.yelp.android.ui.activities.reviews;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.Display;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.WindowManager;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.ui.activities.support.WebViewActivity;
import com.yelp.android.ui.activities.support.WebViewActivity.BackBehavior;
import com.yelp.android.ui.activities.support.WebViewActivity.Feature;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.ar;
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
    startActivity(WebViewActivity.getWebIntent(this, Uri.parse(getString(2131165829)), getString(2131166073), ViewIri.ReviewPostedEliteLearnMore, EnumSet.noneOf(WebViewActivity.Feature.class), WebViewActivity.BackBehavior.NONE));
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903097);
    setTitle(2131166876);
    ((TextView)findViewById(2131689850)).setText(getString(2131165828, new Object[] { getIntent().getStringExtra("eliteprompt_user_name") }));
  }
  
  protected void onResume()
  {
    final View localView = findViewById(2131689852);
    localView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener()
    {
      public void onGlobalLayout()
      {
        View localView1 = findViewById(2131689854);
        View localView2 = findViewById(2131689853);
        int i = getWindowManager().getDefaultDisplay().getHeight();
        if (i < localView1.getMeasuredHeight() + ActivityElitePrompt.a(ActivityElitePrompt.this, localView2))
        {
          findViewById(2131689851).setLayoutParams(new LinearLayout.LayoutParams(-1, localView.getMeasuredHeight()));
          localView2.setVisibility(8);
          localView1.setVisibility(0);
        }
        for (;;)
        {
          findViewById(2131689849).setPadding(0, 0, 0, i - ActivityElitePrompt.a(ActivityElitePrompt.this, localView) - localView.getMeasuredHeight() * 3 / 4);
          ar.a(localView, this);
          return;
          localView2.setVisibility(0);
          localView1.setVisibility(8);
        }
      }
    });
    super.onResume();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ActivityElitePrompt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */