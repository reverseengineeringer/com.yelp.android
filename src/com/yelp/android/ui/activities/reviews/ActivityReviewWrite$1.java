package com.yelp.android.ui.activities.reviews;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.analytics.i;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.KahunaAttributeIri;
import com.yelp.android.appdata.AppData;

class ActivityReviewWrite$1
  implements DialogInterface.OnClickListener
{
  ActivityReviewWrite$1(ActivityReviewWrite paramActivityReviewWrite) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ActivityReviewWrite.a(a);
    AppData.a(EventIri.ReviewDraftDelete, "source", "write_a_review");
    AppData.b().m().a(KahunaAttributeIri.ReviewDraftBusinessId, "cleared");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ActivityReviewWrite.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */