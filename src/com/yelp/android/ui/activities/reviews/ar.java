package com.yelp.android.ui.activities.reviews;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.util.z;

class ar
  implements CompoundButton.OnCheckedChangeListener
{
  ar(ReviewOverviewFragment paramReviewOverviewFragment) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    z.a(a.getActivity(), ShareRequest.ShareType.TWITTER, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */