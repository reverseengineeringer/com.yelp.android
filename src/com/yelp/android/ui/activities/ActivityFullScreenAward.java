package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.support.YelpActivity;

public class ActivityFullScreenAward
  extends YelpActivity
{
  public static Intent a(Context paramContext, ActivityFullScreenAward.AwardType paramAwardType, String paramString)
  {
    paramContext = new Intent(paramContext, ActivityFullScreenAward.class);
    paramContext.putExtra("extra.award_type", paramAwardType);
    paramContext.putExtra("extra.business_name", paramString);
    paramContext.putExtra("extra.user_name", AppData.b().m().s().getNameWithoutPeriod());
    paramContext.addFlags(268435456);
    paramContext.addFlags(8388608);
    paramContext.addFlags(1073741824);
    return paramContext;
  }
  
  private ActivityFullScreenAward.AwardType a()
  {
    return (ActivityFullScreenAward.AwardType)getIntent().getSerializableExtra("extra.award_type");
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  protected int getStatusBarColor(int paramInt)
  {
    return getResources().getColor(abackgroundColorId);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903093);
    paramBundle = a();
    ((TextView)findViewById(2131493207)).setText(String.format(getString(awardTitle), new Object[] { getIntent().getStringExtra("extra.business_name") }));
    ((ImageView)findViewById(2131493208)).setImageResource(iconId);
    ((TextView)findViewById(2131493209)).setText(getString(titleId, new Object[] { getIntent().getStringExtra("extra.user_name") }));
    ((TextView)findViewById(2131493210)).setText(paramBundle.getBodyText(getResources()));
    findViewById(2131493205).setBackgroundResource(backgroundColorId);
    findViewById(2131493211).setOnClickListener(new cf(this));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityFullScreenAward
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */