package com.yelp.android.ui.activities.friendcheckins;

import android.app.Activity;
import android.content.Intent;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.fo;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.YelpCheckIn;
import java.util.HashMap;
import java.util.Map;

public abstract class p
{
  protected abstract void a(YelpCheckIn paramYelpCheckIn);
  
  public boolean a(Activity paramActivity, int paramInt1, int paramInt2, Intent paramIntent)
  {
    boolean bool2 = false;
    YelpCheckIn localYelpCheckIn = null;
    switch (paramInt1)
    {
    default: 
      return false;
    case 102: 
      if (paramInt2 == -1)
      {
        localYelpCheckIn = (YelpCheckIn)paramIntent.getParcelableExtra("extra.data");
        AppData.a(EventIri.CheckInComment);
        paramActivity.startActivityForResult(CommentOnCheckIn.a(paramActivity, localYelpCheckIn, true), 101);
      }
      break;
    }
    for (;;)
    {
      if (localYelpCheckIn != null) {
        a(localYelpCheckIn);
      }
      return true;
      if (paramInt2 == -1)
      {
        localYelpCheckIn = (YelpCheckIn)paramIntent.getParcelableExtra("extra.data");
        paramActivity = localYelpCheckIn.getId();
        boolean bool1;
        if (!localYelpCheckIn.getFeedback().isLikedByUser())
        {
          bool1 = true;
          label124:
          if (!bool1) {
            break label234;
          }
          localYelpCheckIn.getFeedback().addPositiveFeedback();
        }
        for (;;)
        {
          paramIntent = new HashMap();
          paramIntent.put("business_id", localYelpCheckIn.getBusinessId());
          paramIntent.put("check_in_id", paramActivity);
          paramIntent.put("is_positive", Boolean.valueOf(bool1));
          paramIntent.put("source", "friends_check_ins");
          AppData.a(EventIri.CheckInFeedback, paramIntent);
          new fo(paramActivity, bool1).execute(new Void[0]);
          break;
          bool1 = false;
          break label124;
          label234:
          localYelpCheckIn.getFeedback().removePositiveFeedback();
        }
        if (paramInt2 == -1)
        {
          localYelpCheckIn = (YelpCheckIn)paramIntent.getParcelableExtra("extra.data");
          AppData.a(EventIri.CheckInCommentBubble);
          paramInt1 = localYelpCheckIn.getFeedback().getPositiveFeedbackCount();
          bool1 = bool2;
          if (localYelpCheckIn.getCommentsCount() == 0)
          {
            bool1 = bool2;
            if (paramInt1 == 0) {
              bool1 = true;
            }
          }
          paramActivity.startActivityForResult(CommentOnCheckIn.a(paramActivity, localYelpCheckIn, bool1), 101);
          continue;
          if (paramInt2 == -1) {
            localYelpCheckIn = CommentOnCheckIn.a(paramIntent);
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friendcheckins.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */