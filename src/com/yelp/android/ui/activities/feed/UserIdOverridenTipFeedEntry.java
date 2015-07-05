package com.yelp.android.ui.activities.feed;

import android.content.Context;
import android.text.TextUtils;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.TipFeedEntry;

public class UserIdOverridenTipFeedEntry
  extends TipFeedEntry
{
  private final String mUserId;
  
  public UserIdOverridenTipFeedEntry(String paramString, Tip paramTip, ApiRequest<?, ?, ?> paramApiRequest)
  {
    super(paramTip, paramApiRequest);
    mUserId = paramString;
  }
  
  public String getSubTitle(Context paramContext, FeedType paramFeedType)
  {
    return paramContext.getString(2131166709);
  }
  
  protected String getUserIdForTip()
  {
    if (TextUtils.isEmpty(mUserId)) {
      return super.getUserIdForTip();
    }
    return mUserId;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.UserIdOverridenTipFeedEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */