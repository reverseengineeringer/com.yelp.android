package com.yelp.android.ui.activities.feed;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.serializable.FeedTalkPostActivity;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.feed.viewbinder.p;
import com.yelp.android.ui.activities.talk.TalkViewPost;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.w;
import java.util.ArrayList;

public class ActivityTalkPosts
  extends YelpListActivity
{
  private final w<FeedTalkPostActivity> a = new w()
  {
    public View getView(int paramAnonymousInt, final View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
    {
      View localView = paramAnonymousView;
      if (paramAnonymousView == null)
      {
        localView = LayoutInflater.from(paramAnonymousViewGroup.getContext()).inflate(2130903344, paramAnonymousViewGroup, false);
        localView.setTag(new p(localView));
      }
      paramAnonymousView = (FeedTalkPostActivity)getItem(paramAnonymousInt);
      paramAnonymousViewGroup = (p)localView.getTag();
      paramAnonymousViewGroup.a(paramAnonymousView.d(), paramAnonymousView.e());
      paramAnonymousViewGroup.b(new View.OnClickListener()
      {
        public void onClick(View paramAnonymous2View)
        {
          paramAnonymous2View = paramAnonymous2View.getContext();
          paramAnonymous2View.startActivity(TalkViewPost.a(paramAnonymous2View, paramAnonymousView.d()));
        }
      });
      return localView;
    }
  };
  
  public static Intent a(Context paramContext, User paramUser, ArrayList<FeedTalkPostActivity> paramArrayList)
  {
    paramContext = new Intent(paramContext, ActivityTalkPosts.class);
    paramContext.putExtra("talk_posts", paramArrayList);
    paramContext.putExtra("user_first_name", paramUser.Z());
    return paramContext;
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle(getString(2131166775, new Object[] { getIntent().getStringExtra("user_first_name") }));
    paramBundle = getIntent().getParcelableArrayListExtra("talk_posts");
    a.a(paramBundle, true);
    r().setAdapter(a);
    r().f();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.ActivityTalkPosts
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */