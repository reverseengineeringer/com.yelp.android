package com.yelp.android.ui.activities.feed;

import android.view.View;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ba.a;
import com.yelp.android.serializable.BizPhotoFeedEntry;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Photo;
import com.yelp.android.ui.activities.photoviewer.ad;
import java.util.HashMap;
import java.util.Map;

class h
  implements ad
{
  h(e parame) {}
  
  public void a() {}
  
  public void a(int paramInt) {}
  
  public void a(View paramView) {}
  
  public void a(Media paramMedia) {}
  
  public void a(Photo paramPhoto) {}
  
  public void a(String paramString) {}
  
  public void a(boolean paramBoolean)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("vote_type", "like");
    localHashMap.put("is_positive", Boolean.valueOf(paramBoolean));
    AppData.a(FeedEventIriType.FEED_VOTED.getFeedEventIriByFeedType(e.b(a)), e.c(a).b().setupIriParams(localHashMap));
  }
  
  public void b(Media paramMedia) {}
  
  public void b(Photo paramPhoto) {}
  
  public void c(Media paramMedia) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */