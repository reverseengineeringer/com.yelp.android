package com.facebook.share.internal;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.util.Pair;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.f;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.CallbackManagerImpl.a;
import com.facebook.internal.a;
import com.facebook.internal.o;
import com.facebook.internal.o.a;
import com.facebook.internal.p;
import com.facebook.internal.u;
import com.facebook.internal.u.d;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.widget.LikeView.ObjectType;
import com.yelp.android.ay.a.a;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class j
{
  public static Pair<String, String> a(String paramString)
  {
    Object localObject2 = null;
    int i = paramString.indexOf(':');
    Object localObject1 = localObject2;
    String str = paramString;
    if (i != -1)
    {
      localObject1 = localObject2;
      str = paramString;
      if (paramString.length() > i + 1)
      {
        localObject1 = paramString.substring(0, i);
        str = paramString.substring(i + 1);
      }
    }
    return new Pair(localObject1, str);
  }
  
  private static a a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    paramIntent = p.b(paramIntent);
    if (paramIntent == null) {
      return null;
    }
    return a.a(paramIntent, paramInt1);
  }
  
  public static h a(final f<a.a> paramf)
  {
    new h(paramf)
    {
      public void a(a paramAnonymousa)
      {
        j.b(paramf);
      }
      
      public void a(a paramAnonymousa, Bundle paramAnonymousBundle)
      {
        if (paramAnonymousBundle != null)
        {
          paramAnonymousa = j.a(paramAnonymousBundle);
          if ((paramAnonymousa == null) || ("post".equalsIgnoreCase(paramAnonymousa)))
          {
            paramAnonymousa = j.b(paramAnonymousBundle);
            j.a(paramf, paramAnonymousa);
          }
        }
        else
        {
          return;
        }
        if ("cancel".equalsIgnoreCase(paramAnonymousa))
        {
          j.b(paramf);
          return;
        }
        j.a(paramf, new FacebookException("UnknownError"));
      }
      
      public void a(a paramAnonymousa, FacebookException paramAnonymousFacebookException)
      {
        j.a(paramf, paramAnonymousFacebookException);
      }
    };
  }
  
  public static LikeView.ObjectType a(LikeView.ObjectType paramObjectType1, LikeView.ObjectType paramObjectType2)
  {
    if (paramObjectType1 == paramObjectType2) {}
    do
    {
      return paramObjectType1;
      if (paramObjectType1 == LikeView.ObjectType.UNKNOWN) {
        return paramObjectType2;
      }
    } while (paramObjectType2 == LikeView.ObjectType.UNKNOWN);
    return null;
  }
  
  public static String a(Bundle paramBundle)
  {
    if (paramBundle.containsKey("completionGesture")) {
      return paramBundle.getString("completionGesture");
    }
    return paramBundle.getString("com.facebook.platform.extra.COMPLETION_GESTURE");
  }
  
  public static List<String> a(SharePhotoContent paramSharePhotoContent, UUID paramUUID)
  {
    if (paramSharePhotoContent != null)
    {
      paramSharePhotoContent = paramSharePhotoContent.e();
      if (paramSharePhotoContent != null) {}
    }
    else
    {
      return null;
    }
    paramSharePhotoContent = u.a(paramSharePhotoContent, new u.d()
    {
      public o.a a(SharePhoto paramAnonymousSharePhoto)
      {
        return j.a(a, paramAnonymousSharePhoto);
      }
    });
    paramUUID = u.a(paramSharePhotoContent, new u.d()
    {
      public String a(o.a paramAnonymousa)
      {
        return paramAnonymousa.a();
      }
    });
    o.a(paramSharePhotoContent);
    return paramUUID;
  }
  
  public static JSONArray a(JSONArray paramJSONArray, boolean paramBoolean)
    throws JSONException
  {
    JSONArray localJSONArray = new JSONArray();
    int i = 0;
    if (i < paramJSONArray.length())
    {
      Object localObject2 = paramJSONArray.get(i);
      Object localObject1;
      if ((localObject2 instanceof JSONArray)) {
        localObject1 = a((JSONArray)localObject2, paramBoolean);
      }
      for (;;)
      {
        localJSONArray.put(localObject1);
        i += 1;
        break;
        localObject1 = localObject2;
        if ((localObject2 instanceof JSONObject)) {
          localObject1 = a((JSONObject)localObject2, paramBoolean);
        }
      }
    }
    return localJSONArray;
  }
  
  public static JSONObject a(ShareOpenGraphContent paramShareOpenGraphContent)
    throws JSONException
  {
    g.a(paramShareOpenGraphContent.e(), new g.a()
    {
      public JSONObject a(SharePhoto paramAnonymousSharePhoto)
      {
        paramAnonymousSharePhoto = paramAnonymousSharePhoto.b();
        JSONObject localJSONObject = new JSONObject();
        try
        {
          localJSONObject.put("url", paramAnonymousSharePhoto.toString());
          return localJSONObject;
        }
        catch (JSONException paramAnonymousSharePhoto)
        {
          throw new FacebookException("Unable to attach images", paramAnonymousSharePhoto);
        }
      }
    });
  }
  
  public static JSONObject a(UUID paramUUID, ShareOpenGraphAction paramShareOpenGraphAction)
    throws JSONException
  {
    final ArrayList localArrayList = new ArrayList();
    paramUUID = g.a(paramShareOpenGraphAction, new g.a()
    {
      public JSONObject a(SharePhoto paramAnonymousSharePhoto)
      {
        Object localObject = j.a(a, paramAnonymousSharePhoto);
        if (localObject == null) {
          localObject = null;
        }
        for (;;)
        {
          return (JSONObject)localObject;
          localArrayList.add(localObject);
          JSONObject localJSONObject = new JSONObject();
          try
          {
            localJSONObject.put("url", ((o.a)localObject).a());
            localObject = localJSONObject;
            if (!paramAnonymousSharePhoto.c()) {
              continue;
            }
            localJSONObject.put("user_generated", true);
            return localJSONObject;
          }
          catch (JSONException paramAnonymousSharePhoto)
          {
            throw new FacebookException("Unable to attach images", paramAnonymousSharePhoto);
          }
        }
      }
    });
    o.a(localArrayList);
    return paramUUID;
  }
  
  public static JSONObject a(JSONObject paramJSONObject, boolean paramBoolean)
  {
    if (paramJSONObject == null) {
      return null;
    }
    for (;;)
    {
      JSONObject localJSONObject1;
      JSONObject localJSONObject2;
      int i;
      String str1;
      Object localObject1;
      Object localObject2;
      String str2;
      try
      {
        localJSONObject1 = new JSONObject();
        localJSONObject2 = new JSONObject();
        JSONArray localJSONArray = paramJSONObject.names();
        i = 0;
        if (i >= localJSONArray.length()) {
          break label238;
        }
        str1 = localJSONArray.getString(i);
        localObject1 = paramJSONObject.get(str1);
        if ((localObject1 instanceof JSONObject))
        {
          localObject1 = a((JSONObject)localObject1, true);
          localObject2 = a(str1);
          str2 = (String)first;
          localObject2 = (String)second;
          if (!paramBoolean) {
            break label199;
          }
          if ((str2 != null) && (str2.equals("fbsdk")))
          {
            localJSONObject1.put(str1, localObject1);
            break label262;
          }
        }
        else
        {
          if (!(localObject1 instanceof JSONArray)) {
            break label259;
          }
          localObject1 = a((JSONArray)localObject1, true);
          continue;
        }
        if ((str2 == null) || (str2.equals("og"))) {
          localJSONObject1.put((String)localObject2, localObject1);
        }
      }
      catch (JSONException paramJSONObject)
      {
        throw new FacebookException("Failed to create json object from share content");
      }
      localJSONObject2.put((String)localObject2, localObject1);
      break label262;
      label199:
      if ((str2 != null) && (str2.equals("fb")))
      {
        localJSONObject1.put(str1, localObject1);
      }
      else
      {
        localJSONObject1.put((String)localObject2, localObject1);
        break label262;
        label238:
        if (localJSONObject2.length() > 0) {
          localJSONObject1.put("data", localJSONObject2);
        }
        return localJSONObject1;
        label259:
        continue;
      }
      label262:
      i += 1;
    }
  }
  
  public static void a(int paramInt)
  {
    CallbackManagerImpl.a(paramInt, new CallbackManagerImpl.a()
    {
      public boolean a(int paramAnonymousInt, Intent paramAnonymousIntent)
      {
        return j.a(a, paramAnonymousInt, paramAnonymousIntent, j.a(null));
      }
    });
  }
  
  static void a(f<a.a> paramf, FacebookException paramFacebookException)
  {
    a("error", paramFacebookException.getMessage());
    if (paramf != null) {
      paramf.a(paramFacebookException);
    }
  }
  
  static void a(f<a.a> paramf, String paramString)
  {
    a("succeeded", null);
    if (paramf != null) {
      paramf.a(new a.a(paramString));
    }
  }
  
  private static void a(String paramString1, String paramString2)
  {
    AppEventsLogger localAppEventsLogger = AppEventsLogger.a(com.facebook.g.f());
    Bundle localBundle = new Bundle();
    localBundle.putString("fb_share_dialog_outcome", paramString1);
    if (paramString2 != null) {
      localBundle.putString("error_message", paramString2);
    }
    localAppEventsLogger.a("fb_share_dialog_result", null, localBundle);
  }
  
  public static boolean a(int paramInt1, int paramInt2, Intent paramIntent, h paramh)
  {
    boolean bool = true;
    a locala = a(paramInt1, paramInt2, paramIntent);
    if (locala == null) {
      bool = false;
    }
    do
    {
      return bool;
      o.a(locala.c());
    } while (paramh == null);
    FacebookException localFacebookException = p.a(p.g(paramIntent));
    if (localFacebookException != null)
    {
      if ((localFacebookException instanceof FacebookOperationCanceledException))
      {
        paramh.a(locala);
        return true;
      }
      paramh.a(locala, localFacebookException);
      return true;
    }
    paramh.a(locala, p.e(paramIntent));
    return true;
  }
  
  private static o.a b(UUID paramUUID, SharePhoto paramSharePhoto)
  {
    Bitmap localBitmap = paramSharePhoto.a();
    Uri localUri = paramSharePhoto.b();
    paramSharePhoto = null;
    if (localBitmap != null) {
      paramSharePhoto = o.a(paramUUID, localBitmap);
    }
    while (localUri == null) {
      return paramSharePhoto;
    }
    return o.a(paramUUID, localUri);
  }
  
  public static String b(Bundle paramBundle)
  {
    if (paramBundle.containsKey("postId")) {
      return paramBundle.getString("postId");
    }
    if (paramBundle.containsKey("com.facebook.platform.extra.POST_ID")) {
      return paramBundle.getString("com.facebook.platform.extra.POST_ID");
    }
    return paramBundle.getString("post_id");
  }
  
  static void b(f<a.a> paramf)
  {
    a("cancelled", null);
    if (paramf != null) {
      paramf.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */