package com.yelp.android.ui.activities.feed;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ba.a;
import com.yelp.android.serializable.BizPhotoFeedEntry;
import com.yelp.android.serializable.FeedEntry;
import com.yelp.android.ui.activities.photoviewer.ad;
import com.yelp.android.ui.util.w;
import java.util.HashMap;

public class e
{
  private com.yelp.android.ba.f b;
  private com.yelp.android.ba.e c;
  private a d;
  private FeedType e;
  private final View.OnClickListener f = new f(this);
  private final w g = new g(this);
  private final ad h = new h(this);
  
  public e(d paramd, FeedType paramFeedType, View paramView)
  {
    e = paramFeedType;
    b = new com.yelp.android.ba.f(paramFeedType, paramView, 2131493692);
    c = new com.yelp.android.ba.e(paramView, 2131493681);
    d = new a(paramFeedType, paramView, 2131493518, h, d.a(paramd), d.b(paramd));
  }
  
  private void c()
  {
    HashMap localHashMap = new HashMap();
    AppData.a(FeedEventIriType.FEED_SELECTED.getFeedEventIriByFeedType(e), d.b().setupIriParams(localHashMap));
  }
  
  public BizPhotoFeedEntry a()
  {
    return d.b();
  }
  
  public void a(FeedEntry paramFeedEntry, int paramInt, Context paramContext)
  {
    b.a(paramFeedEntry, paramInt, paramContext);
    c.a(paramFeedEntry, paramContext);
    d.a(paramFeedEntry, paramContext, f, g);
  }
  
  public int b()
  {
    return d.a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */