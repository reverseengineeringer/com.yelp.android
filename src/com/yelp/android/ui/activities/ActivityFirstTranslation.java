package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.util.StringUtils;

public class ActivityFirstTranslation
  extends NotificationActivity
{
  public static Intent a(Context paramContext, int paramInt)
  {
    paramContext = new Intent(paramContext, ActivityFirstTranslation.class);
    paramContext.putExtra("extra_count", paramInt);
    return paramContext;
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setResult(-1, getIntent());
    ((TextView)a).setText(StringUtils.a(this, 2131230769, getIntent().getIntExtra("extra_count", 1), new Object[0]));
    ((TextView)a).setTextColor(getResources().getColor(2131624108));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityFirstTranslation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */