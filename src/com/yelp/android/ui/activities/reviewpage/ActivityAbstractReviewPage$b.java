package com.yelp.android.ui.activities.reviewpage;

import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.yelp.android.serializable.YelpBusinessReview;

class ActivityAbstractReviewPage$b
  implements AdapterView.OnItemClickListener
{
  private ActivityAbstractReviewPage$b(ActivityAbstractReviewPage paramActivityAbstractReviewPage) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = paramAdapterView.getAdapter().getItem(paramInt);
    if ((paramAdapterView instanceof YelpBusinessReview)) {
      a.startActivity(ActivityAbstractReviewPage.a(a, (YelpBusinessReview)paramAdapterView));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ActivityAbstractReviewPage.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */