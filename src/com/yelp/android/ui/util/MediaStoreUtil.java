package com.yelp.android.ui.util;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.provider.MediaStore.Files;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Video.Media;
import android.support.v4.content.i;
import android.text.TextUtils;
import com.yelp.android.appdata.n;
import com.yelp.android.util.YelpLog;
import java.util.ArrayList;
import java.util.List;

public class MediaStoreUtil
{
  private static final String[] a = { "DISTINCT bucket_id", "bucket_display_name" };
  
  @TargetApi(11)
  public static Uri a(MediaStoreUtil.MediaType paramMediaType)
  {
    if (MediaStoreUtil.MediaType.PHOTO.equals(paramMediaType)) {
      return MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
    }
    if (MediaStoreUtil.MediaType.VIDEO.equals(paramMediaType)) {
      return MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
    }
    if (n.a(11)) {
      return MediaStore.Files.getContentUri("external");
    }
    YelpLog.e("MediaStoreUtil", "Api < 11 requested mixed Photos and Videos, which is not supported, returning just photos");
    return MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
  }
  
  public static i a(Context paramContext, MediaStoreUtil.MediaType paramMediaType)
  {
    return a(paramContext, paramMediaType, 0);
  }
  
  public static i a(Context paramContext, MediaStoreUtil.MediaType paramMediaType, int paramInt)
  {
    return new i(paramContext, a(paramMediaType), b(paramMediaType), c(paramMediaType), null, a(paramInt));
  }
  
  public static i a(Context paramContext, MediaStoreUtil.MediaType paramMediaType, String paramString)
  {
    Uri localUri = a(paramMediaType);
    String[] arrayOfString = b(paramMediaType);
    paramMediaType = d(paramMediaType);
    String str = a(0);
    return new i(paramContext, localUri, arrayOfString, paramMediaType, new String[] { paramString }, str);
  }
  
  public static MediaStoreUtil.MediaType a(Uri paramUri, ContentResolver paramContentResolver)
  {
    paramUri = paramContentResolver.getType(paramUri);
    if (TextUtils.isEmpty(paramUri)) {}
    do
    {
      return null;
      if (paramUri.startsWith("video/")) {
        return MediaStoreUtil.MediaType.VIDEO;
      }
    } while (!paramUri.startsWith("image/"));
    return MediaStoreUtil.MediaType.PHOTO;
  }
  
  private static String a(int paramInt)
  {
    if (paramInt == 0) {
      return "date_added DESC";
    }
    return "date_added DESC LIMIT " + Integer.toString(paramInt);
  }
  
  public static i b(Context paramContext, MediaStoreUtil.MediaType paramMediaType)
  {
    return new i(paramContext, a(paramMediaType), a, c(paramMediaType), null, a(0));
  }
  
  @TargetApi(11)
  private static String[] b(MediaStoreUtil.MediaType paramMediaType)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add("_id");
    localArrayList.add("date_added");
    localArrayList.add("bucket_id");
    if ((n.a(11)) && (MediaStoreUtil.MediaType.PHOTO_AND_VIDEO.equals(paramMediaType))) {
      localArrayList.add("media_type");
    }
    return (String[])localArrayList.toArray(new String[localArrayList.size()]);
  }
  
  @TargetApi(11)
  private static String c(MediaStoreUtil.MediaType paramMediaType)
  {
    if ((n.b(11)) || (!MediaStoreUtil.MediaType.PHOTO_AND_VIDEO.equals(paramMediaType))) {
      return null;
    }
    return "media_type=1 OR media_type=3";
  }
  
  private static String d(MediaStoreUtil.MediaType paramMediaType)
  {
    if ((n.b(11)) || (!MediaStoreUtil.MediaType.PHOTO_AND_VIDEO.equals(paramMediaType))) {
      return "bucket_id=?";
    }
    return "(" + c(paramMediaType) + ")" + " AND " + "bucket_id=?";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.MediaStoreUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */