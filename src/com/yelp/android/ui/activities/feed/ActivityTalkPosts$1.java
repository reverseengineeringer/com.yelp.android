package com.yelp.android.ui.activities.feed;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.yelp.android.serializable.FeedTalkPostActivity;
import com.yelp.android.ui.activities.feed.viewbinder.p;
import com.yelp.android.ui.activities.talk.TalkViewPost;
import com.yelp.android.ui.util.w;

class ActivityTalkPosts$1
  extends w<FeedTalkPostActivity>
{
  ActivityTalkPosts$1(ActivityTalkPosts paramActivityTalkPosts) {}
  
  public View getView(int paramInt, final View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903344, paramViewGroup, false);
      localView.setTag(new p(localView));
    }
    paramView = (FeedTalkPostActivity)getItem(paramInt);
    paramViewGroup = (p)localView.getTag();
    paramViewGroup.a(paramView.d(), paramView.e());
    paramViewGroup.b(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = paramAnonymousView.getContext();
        paramAnonymousView.startActivity(TalkViewPost.a(paramAnonymousView, paramView.d()));
      }
    });
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.ActivityTalkPosts.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */