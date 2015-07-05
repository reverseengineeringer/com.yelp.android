package com.yelp.android.ui.activities.reviews;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.analytics.iris.KahunaAttributeIri;
import com.yelp.android.analytics.iris.ReviewEventIri;
import com.yelp.android.analytics.j;
import com.yelp.android.appdata.AppData;

class m
  implements DialogInterface.OnClickListener
{
  m(ActivityReviewWrite paramActivityReviewWrite) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ActivityReviewWrite.a(a, true);
    a.a(false);
    AppData.a(ReviewEventIri.ReviewDraftSave);
    j.a(KahunaAttributeIri.ReviewDraftBusinessId, ActivityReviewWrite.b(a));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */