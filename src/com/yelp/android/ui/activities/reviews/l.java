package com.yelp.android.ui.activities.reviews;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.analytics.iris.KahunaAttributeIri;
import com.yelp.android.analytics.iris.ReviewEventIri;
import com.yelp.android.analytics.j;
import com.yelp.android.appdata.AppData;

class l
  implements DialogInterface.OnClickListener
{
  l(ActivityReviewWrite paramActivityReviewWrite) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ActivityReviewWrite.a(a);
    AppData.a(ReviewEventIri.ReviewDraftDelete);
    j.a(KahunaAttributeIri.ReviewDraftBusinessId, "cleared");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */