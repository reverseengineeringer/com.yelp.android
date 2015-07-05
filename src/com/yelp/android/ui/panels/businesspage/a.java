package com.yelp.android.ui.panels.businesspage;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.ui.activities.support.WebViewActivity;
import com.yelp.android.ui.activities.support.WebViewActivity.Feature;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.bs;
import com.yelp.android.ui.util.h;
import java.util.EnumSet;
import java.util.Map;

class a
  implements View.OnClickListener
{
  a(ConsumerAlertPanel paramConsumerAlertPanel, Map paramMap) {}
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131493795: 
    case 2131493796: 
      ConsumerAlertPanel.a(b).clear();
      ConsumerAlertPanel.b(b).a(false);
      ConsumerAlertPanel.c(b).c(true);
      ConsumerAlertPanel.d(b).a(EventIri.BusinessSpamAlertDismiss, a);
      return;
    }
    b.getContext().startActivity(WebViewActivity.getWebIntent(b.getContext(), Uri.parse(ConsumerAlertPanel.e(b)), b.getContext().getString(2131165794), ViewIri.BusinessSpamAlertEvidence, EnumSet.of(WebViewActivity.Feature.FINISH_ON_BACK, WebViewActivity.Feature.FULL_SCREEN), false));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.businesspage.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */