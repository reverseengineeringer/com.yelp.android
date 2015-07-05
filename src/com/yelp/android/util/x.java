package com.yelp.android.util;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.text.TextUtils;
import com.adjust.sdk.e;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.KahunaEventIri;
import com.yelp.android.analytics.j;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.serializable.Photo.TempPhoto;
import com.yelp.android.services.ShareService;
import com.yelp.android.services.ShareService.ShareObjectType;
import com.yelp.android.ui.util.ImageInputHelper.ImageSource;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class x
{
  public static void a(String paramString1, ImageInputHelper.ImageSource paramImageSource, String paramString2, String paramString3)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("id", paramString1);
    if (paramImageSource == null)
    {
      paramString1 = "unknown";
      localHashMap.put("source", paramString1);
      if (TextUtils.isEmpty(paramString2)) {
        break label103;
      }
    }
    label103:
    for (boolean bool = true;; bool = false)
    {
      localHashMap.put("has_caption", Boolean.valueOf(bool));
      a(localHashMap, paramString3);
      b(localHashMap, paramString3);
      AppData.a(EventIri.BusinessPhotoSave, localHashMap);
      e.a("x8cc7k");
      j.a(KahunaEventIri.BusinessPhotoSave);
      return;
      paramString1 = paramImageSource.name().toLowerCase(Locale.US);
      break;
    }
  }
  
  public static void a(String paramString1, String paramString2, long paramLong)
  {
    HashMap localHashMap = new HashMap();
    a(localHashMap, paramString2, System.currentTimeMillis() - paramLong);
    a(localHashMap, paramString1);
    b(localHashMap, paramString1);
    AppData.a(EventIri.UploadPhotoFailure, localHashMap);
  }
  
  public static void a(String paramString1, String paramString2, String paramString3)
  {
    new ObjectDirtyEvent(new Photo.TempPhoto(l.b(paramString1), paramString2, paramString3), "com.yelp.android.media.add").a(AppData.b());
  }
  
  public static void a(String paramString1, String paramString2, String paramString3, long paramLong)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("photo_id", paramString3);
    a(localHashMap, paramString2, paramLong);
    a(localHashMap, paramString1);
    b(localHashMap, paramString1);
    AppData.a(EventIri.UploadPhotoSuccess, localHashMap);
  }
  
  public static void a(List<ShareRequest.ShareType> paramList, String paramString)
  {
    if ((paramList == null) || (paramList.isEmpty())) {
      return;
    }
    AppData localAppData = AppData.b();
    localAppData.startService(ShareService.a(localAppData, ShareService.ShareObjectType.PHOTO, paramString, paramList, false));
  }
  
  private static void a(Map<String, Object> paramMap, String paramString)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    inJustDecodeBounds = true;
    BitmapFactory.decodeFile(paramString, localOptions);
    paramMap.put("width_pixels", Integer.valueOf(outWidth));
    paramMap.put("height_pixels", Integer.valueOf(outHeight));
    paramMap.put("size_bytes", Long.valueOf(new File(paramString).length()));
  }
  
  private static void a(Map<String, Object> paramMap, String paramString, long paramLong)
  {
    paramMap.put("duration_sec", Long.valueOf((System.currentTimeMillis() - paramLong) / 1000L));
    paramMap.put("business_id", paramString);
  }
  
  private static void b(Map<String, Object> paramMap, String paramString)
  {
    paramMap.put("wifi", Boolean.valueOf(s.a(AppData.b())));
    paramMap.put("md5_hash", f.a(paramString));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */