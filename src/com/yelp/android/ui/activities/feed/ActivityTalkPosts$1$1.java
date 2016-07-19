package com.yelp.android.ui.activities.feed;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.FeedTalkPostActivity;
import com.yelp.android.ui.activities.talk.TalkViewPost;

class ActivityTalkPosts$1$1
  implements View.OnClickListener
{
  ActivityTalkPosts$1$1(ActivityTalkPosts.1 param1, FeedTalkPostActivity paramFeedTalkPostActivity) {}
  
  public void onClick(View paramView)
  {
    paramView = paramView.getContext();
    paramView.startActivity(TalkViewPost.a(paramView, a.d()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.ActivityTalkPosts.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */