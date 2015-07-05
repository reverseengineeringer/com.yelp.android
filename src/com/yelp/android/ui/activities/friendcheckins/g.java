package com.yelp.android.ui.activities.friendcheckins;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;

class g
  implements View.OnClickListener
{
  g(CommentOnCheckIn paramCommentOnCheckIn, YelpBusiness paramYelpBusiness) {}
  
  public void onClick(View paramView)
  {
    paramView.getContext().startActivity(ActivityBusinessPage.b(paramView.getContext(), a));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friendcheckins.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */