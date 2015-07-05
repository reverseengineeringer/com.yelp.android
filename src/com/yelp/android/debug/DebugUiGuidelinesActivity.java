package com.yelp.android.debug;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.ui.activities.support.YelpActivity;

public class DebugUiGuidelinesActivity
  extends YelpActivity
{
  public static Intent a(Context paramContext)
  {
    return a(paramContext, DebugUiGuidelinesActivity.GuidelineType.TEXT_STYLES);
  }
  
  private static Intent a(Context paramContext, DebugUiGuidelinesActivity.GuidelineType paramGuidelineType)
  {
    paramContext = new Intent(paramContext, DebugUiGuidelinesActivity.class);
    paramContext.putExtra("extra.guideline_type", paramGuidelineType);
    return paramContext;
  }
  
  public static Intent b(Context paramContext)
  {
    return a(paramContext, DebugUiGuidelinesActivity.GuidelineType.GAP_SIZES);
  }
  
  public static Intent c(Context paramContext)
  {
    return a(paramContext, DebugUiGuidelinesActivity.GuidelineType.COLORS);
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(DebugUiGuidelinesActivity.GuidelineType.access$000((DebugUiGuidelinesActivity.GuidelineType)getIntent().getSerializableExtra("extra.guideline_type")));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.debug.DebugUiGuidelinesActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */