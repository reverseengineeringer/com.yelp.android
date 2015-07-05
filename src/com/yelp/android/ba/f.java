package com.yelp.android.ba;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.widget.TextView;
import com.yelp.android.serializable.FeedEntry;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.feed.FeedType;
import com.yelp.android.ui.util.cn;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import java.util.Date;
import java.util.Map;

public class f
{
  protected final FeedType a;
  private final TextView b;
  private final cn c;
  private final View d;
  private final SparseArray<String> e;
  private final TextView f;
  private final View g;
  
  public f(FeedType paramFeedType, View paramView, int paramInt)
  {
    paramView = paramView.findViewById(paramInt);
    b = ((TextView)paramView.findViewById(2131493611));
    e = new SparseArray();
    a = paramFeedType;
    d = paramView.findViewById(2131493693);
    c = new cn(d, false);
    f = ((TextView)paramView.findViewById(2131493695));
    g = paramView.findViewById(2131493694);
  }
  
  private void a(Context paramContext, int paramInt, FeedEntry paramFeedEntry)
  {
    Object localObject1 = (String)e.get(paramInt);
    Object localObject2 = localObject1;
    if (TextUtils.isEmpty((CharSequence)localObject1))
    {
      localObject2 = paramFeedEntry.getDate();
      if (localObject2 != null) {
        localObject1 = StringUtils.a(paramContext, StringUtils.Format.LONG, (Date)localObject2);
      }
      e.append(paramInt, localObject1);
      localObject2 = localObject1;
    }
    b.setText((CharSequence)localObject2);
    localObject1 = b;
    if (TextUtils.isEmpty((CharSequence)localObject2)) {}
    for (paramInt = 8;; paramInt = 0)
    {
      ((TextView)localObject1).setVisibility(paramInt);
      a(paramContext, paramFeedEntry.getUser(), paramFeedEntry.getUserIriParams());
      return;
    }
  }
  
  private void a(Context paramContext, FeedEntry paramFeedEntry)
  {
    f.setText(paramFeedEntry.getActivitySubtitle(paramContext));
    g.setOnClickListener(new h(this, paramFeedEntry, paramContext));
  }
  
  private void a(Context paramContext, User paramUser, Map<String, Object> paramMap)
  {
    c.a(paramContext, paramUser.getUserName(), paramUser.getFriendCount(), paramUser.getReviewCount(), paramUser.getPhotoCount(), paramUser.getVideoCount(), paramUser.getMediaCount(), paramUser.getUserPhotoUrl(), paramUser.isEliteUser());
    d.setOnClickListener(new g(this, paramMap, paramContext, paramUser));
  }
  
  public void a(FeedEntry paramFeedEntry, int paramInt, Context paramContext)
  {
    a(paramContext, paramInt, paramFeedEntry);
    a(paramContext, paramFeedEntry);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ba.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */