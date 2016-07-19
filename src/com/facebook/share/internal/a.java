package com.facebook.share.internal;

import android.os.Bundle;
import com.facebook.FacebookException;
import com.facebook.internal.u;
import com.facebook.internal.v;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideoContent;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

public class a
{
  private static Bundle a(ShareContent paramShareContent, boolean paramBoolean)
  {
    Bundle localBundle = new Bundle();
    u.a(localBundle, "com.facebook.platform.extra.LINK", paramShareContent.a());
    u.a(localBundle, "com.facebook.platform.extra.PLACE", paramShareContent.c());
    u.a(localBundle, "com.facebook.platform.extra.REF", paramShareContent.d());
    localBundle.putBoolean("com.facebook.platform.extra.DATA_FAILURES_FATAL", paramBoolean);
    paramShareContent = paramShareContent.b();
    if (!u.a(paramShareContent)) {
      localBundle.putStringArrayList("com.facebook.platform.extra.FRIENDS", new ArrayList(paramShareContent));
    }
    return localBundle;
  }
  
  private static Bundle a(ShareLinkContent paramShareLinkContent, boolean paramBoolean)
  {
    Bundle localBundle = a(paramShareLinkContent, paramBoolean);
    u.a(localBundle, "com.facebook.platform.extra.TITLE", paramShareLinkContent.f());
    u.a(localBundle, "com.facebook.platform.extra.DESCRIPTION", paramShareLinkContent.e());
    u.a(localBundle, "com.facebook.platform.extra.IMAGE", paramShareLinkContent.g());
    return localBundle;
  }
  
  private static Bundle a(ShareOpenGraphContent paramShareOpenGraphContent, JSONObject paramJSONObject, boolean paramBoolean)
  {
    Bundle localBundle = a(paramShareOpenGraphContent, paramBoolean);
    u.a(localBundle, "com.facebook.platform.extra.PREVIEW_PROPERTY_NAME", paramShareOpenGraphContent.f());
    u.a(localBundle, "com.facebook.platform.extra.ACTION_TYPE", paramShareOpenGraphContent.e().a());
    u.a(localBundle, "com.facebook.platform.extra.ACTION", paramJSONObject.toString());
    return localBundle;
  }
  
  private static Bundle a(SharePhotoContent paramSharePhotoContent, List<String> paramList, boolean paramBoolean)
  {
    paramSharePhotoContent = a(paramSharePhotoContent, paramBoolean);
    paramSharePhotoContent.putStringArrayList("com.facebook.platform.extra.PHOTOS", new ArrayList(paramList));
    return paramSharePhotoContent;
  }
  
  private static Bundle a(ShareVideoContent paramShareVideoContent, boolean paramBoolean)
  {
    return null;
  }
  
  public static Bundle a(UUID paramUUID, ShareContent paramShareContent, boolean paramBoolean)
  {
    v.a(paramShareContent, "shareContent");
    v.a(paramUUID, "callId");
    Object localObject = null;
    if ((paramShareContent instanceof ShareLinkContent)) {
      localObject = a((ShareLinkContent)paramShareContent, paramBoolean);
    }
    do
    {
      return (Bundle)localObject;
      if ((paramShareContent instanceof SharePhotoContent))
      {
        paramShareContent = (SharePhotoContent)paramShareContent;
        return a(paramShareContent, j.a(paramShareContent, paramUUID), paramBoolean);
      }
      if ((paramShareContent instanceof ShareVideoContent)) {
        return a((ShareVideoContent)paramShareContent, paramBoolean);
      }
    } while (!(paramShareContent instanceof ShareOpenGraphContent));
    paramShareContent = (ShareOpenGraphContent)paramShareContent;
    localObject = paramShareContent.e();
    try
    {
      paramUUID = a(paramShareContent, j.a(paramUUID, (ShareOpenGraphAction)localObject), paramBoolean);
      return paramUUID;
    }
    catch (JSONException paramUUID)
    {
      throw new FacebookException("Unable to create a JSON Object from the provided ShareOpenGraphContent: " + paramUUID.getMessage());
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */