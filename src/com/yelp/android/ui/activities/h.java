package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.friendcheckins.CommentOnCheckIn;
import com.yelp.android.ui.activities.reviewpage.ActivityReviewPager;
import com.yelp.android.ui.activities.tips.TipComplimentsLikes;
import com.yelp.android.util.YelpLog;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;

class h
{
  private static String a(Uri paramUri)
  {
    try
    {
      paramUri = paramUri.getQueryParameter("fb_ref");
      if (!TextUtils.isEmpty(paramUri))
      {
        Object localObject = URLDecoder.decode(paramUri, "UTF-8");
        paramUri = new HashMap();
        int i = ((String)localObject).indexOf("all__");
        if (i != -1)
        {
          localObject = ((String)localObject).substring(i + "all__".length()).split("=");
          i = 0;
          while (i < localObject.length)
          {
            paramUri.put(localObject[i], localObject[(i + 1)]);
            i += 2;
          }
        }
        paramUri = (String)paramUri.get("check_in_id");
        return paramUri;
      }
    }
    catch (UnsupportedEncodingException paramUri)
    {
      YelpLog.error(h.class, "Unsupported character set: UTF-8", paramUri);
    }
    return null;
  }
  
  private static Intent b(Context paramContext, Uri paramUri, Bundle paramBundle)
  {
    String str1 = paramUri.getLastPathSegment();
    if (!TextUtils.isEmpty(str1)) {}
    for (Intent localIntent = ActivityBusinessPage.a(paramContext, str1);; localIntent = null)
    {
      String str2 = a(paramUri);
      if (!TextUtils.isEmpty(str2))
      {
        localIntent = CommentOnCheckIn.a(paramContext, str2);
        localIntent.putExtra("yelp:return_to_biz_id", str1);
      }
      str2 = paramUri.getQueryParameter("hrid");
      if (!TextUtils.isEmpty(str2))
      {
        localIntent = ActivityReviewPager.a(paramContext, str2, str1);
        localIntent.putExtra("yelp:return_to_biz_id", str1);
      }
      str2 = paramUri.getQueryParameter("tip_id");
      if (!TextUtils.isEmpty(str2))
      {
        localIntent = TipComplimentsLikes.a(paramContext, str2, null);
        localIntent.putExtra("yelp:return_to_biz_id", str1);
      }
      if (localIntent != null)
      {
        if (paramBundle != null) {
          localIntent.putExtras(paramBundle);
        }
        localIntent.putExtra("yelp:external_request", true);
        localIntent.addFlags(67108864);
        localIntent.setData(paramUri);
      }
      return localIntent;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */