package com.yelp.android.ui.activities.localissue;

import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.LocalIssue;
import com.yelp.android.serializable.LocalIssueSponsor;
import com.yelp.android.ui.activities.support.WebViewActivity;
import com.yelp.android.ui.activities.support.WebViewActivity.BackBehavior;
import com.yelp.android.ui.activities.support.WebViewActivity.Feature;
import java.util.EnumSet;

class ActivityLocalIssue$1
  implements View.OnClickListener
{
  ActivityLocalIssue$1(ActivityLocalIssue paramActivityLocalIssue) {}
  
  public void onClick(View paramView)
  {
    paramView = Uri.parse(ActivityLocalIssue.a(a).i().c());
    AppData.a(EventIri.LocalIssueSponsorClicked, ActivityLocalIssue.b(a));
    a.startActivity(WebViewActivity.getWebIntent(a, paramView, "", ViewIri.OpenURL, EnumSet.noneOf(WebViewActivity.Feature.class), WebViewActivity.BackBehavior.NONE, false));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.localissue.ActivityLocalIssue.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */