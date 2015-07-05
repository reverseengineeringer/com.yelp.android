package com.yelp.android.ui.activities.businesspage;

import android.content.Context;
import android.view.View;
import com.yelp.android.analytics.d;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.serializable.YelpBusiness;

class ce
  extends d
{
  ce(FromThisBusinessPanel paramFromThisBusinessPanel, EventIri paramEventIri, YelpBusiness paramYelpBusiness)
  {
    super(paramEventIri);
  }
  
  public void a(View paramView)
  {
    b.getContext().startActivity(ActivityMoreInfoPage.a(b.getContext(), a, false));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.ce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */