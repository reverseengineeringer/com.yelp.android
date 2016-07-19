package com.yelp.android.ui.activities.reviews;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.analytics.i;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.KahunaAttributeIri;
import com.yelp.android.appdata.AppData;

class ActivityReviewWrite$2
  implements DialogInterface.OnClickListener
{
  ActivityReviewWrite$2(ActivityReviewWrite paramActivityReviewWrite) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ActivityReviewWrite.a(a, true);
    a.a(false);
    AppData.a(EventIri.ReviewDraftSave, "source", ActivityReviewWrite.b(a).getIriSourceParameter());
    AppData.b().m().a(KahunaAttributeIri.ReviewDraftBusinessId, ActivityReviewWrite.c(a));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ActivityReviewWrite.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */