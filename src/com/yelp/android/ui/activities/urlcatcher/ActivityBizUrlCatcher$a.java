package com.yelp.android.ui.activities.urlcatcher;

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

class ActivityBizUrlCatcher$a
{
  private static String a(Uri paramUri)
  {
    Object localObject1 = null;
    try
    {
      Object localObject2 = paramUri.getQueryParameter("fb_ref");
      paramUri = (Uri)localObject1;
      int i;
      if (!TextUtils.isEmpty((CharSequence)localObject2))
      {
        localObject2 = URLDecoder.decode((String)localObject2, "UTF-8");
        i = ((String)localObject2).indexOf("all__");
        paramUri = (Uri)localObject1;
        if (i != -1)
        {
          localObject2 = ((String)localObject2).substring(i + "all__".length()).split("=|&");
          i = 0;
        }
      }
      for (;;)
      {
        paramUri = (Uri)localObject1;
        if (i < localObject2.length)
        {
          if (!localObject2[i].equals("check_in_id")) {
            break label95;
          }
          paramUri = (Uri)localObject1;
          if (i + 1 < localObject2.length) {
            paramUri = localObject2[(i + 1)];
          }
        }
        return paramUri;
        label95:
        i += 1;
      }
      return null;
    }
    catch (UnsupportedEncodingException paramUri)
    {
      YelpLog.remoteError(a.class, "Unsupported character set: UTF-8", paramUri);
    }
  }
  
  private static Intent b(Context paramContext, Uri paramUri, Bundle paramBundle)
  {
    String str1 = paramUri.getLastPathSegment();
    if (!TextUtils.isEmpty(str1)) {}
    for (Intent localIntent = ActivityBusinessPage.b(paramContext, str1);; localIntent = null)
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
 * Qualified Name:     com.yelp.android.ui.activities.urlcatcher.ActivityBizUrlCatcher.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */