package com.yelp.android.ui.activities.events;

import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.ui.activities.support.WebViewActivity;
import com.yelp.android.ui.activities.support.WebViewActivity.Feature;
import java.util.EnumSet;

class ag
  implements View.OnClickListener
{
  ag(af paramaf) {}
  
  public void onClick(View paramView)
  {
    af.a(a).startActivity(WebViewActivity.getWebIntent(af.a(a).getActivity(), Uri.parse(af.a(a).getString(2131165749)), af.a(a).getString(2131166015), ViewIri.ReviewPostedEliteLearnMore, EnumSet.noneOf(WebViewActivity.Feature.class)));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */