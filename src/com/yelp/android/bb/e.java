package com.yelp.android.bb;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.Conversation;
import com.yelp.android.ui.activities.reviewpage.ActivityReviewPager;

class e
  implements View.OnClickListener
{
  e(d paramd, Context paramContext) {}
  
  public void onClick(View paramView)
  {
    a.startActivity(ActivityReviewPager.a(a, d.a(b).getReviewId(), d.a(b).getBusinessId()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bb.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */