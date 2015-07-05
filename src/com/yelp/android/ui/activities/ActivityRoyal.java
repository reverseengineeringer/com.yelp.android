package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.serializable.RankTitle.Rank;

public class ActivityRoyal
  extends NotificationActivity
{
  public static Intent a(Context paramContext, RankTitle.Rank paramRank, String paramString)
  {
    paramContext = new Intent(paramContext, ActivityRoyal.class);
    paramContext.putExtra("rank", paramRank);
    paramContext.putExtra("loc", paramString);
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
    Object localObject = getIntent();
    boolean bool = AppData.b().m().n();
    paramBundle = (RankTitle.Rank)((Intent)localObject).getSerializableExtra("rank");
    localObject = ((Intent)localObject).getStringExtra("loc");
    b.setBackgroundColor(getResources().getColor(paramBundle.getAwardBackgroundColor()));
    c.setImageDrawable(getResources().getDrawable(paramBundle.getAwardDrawable()));
    d.setText(paramBundle.getTitle(this, (String)localObject, bool));
    setTitle(paramBundle.getAnnouncement(this, (String)localObject, bool));
    ((TextView)a).setText(paramBundle.getDetailText(this, bool, (String)localObject));
    if (paramBundle == RankTitle.Rank.TOP_CITY_USER)
    {
      d.setTextColor(getResources().getColor(2131362069));
      ((TextView)a).setTextColor(getResources().getColor(2131362069));
      return;
    }
    d.setTextColor(getResources().getColor(2131361888));
    ((TextView)a).setTextColor(getResources().getColor(2131361888));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityRoyal
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */