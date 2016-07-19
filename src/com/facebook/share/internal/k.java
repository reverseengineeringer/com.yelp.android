package com.facebook.share.internal;

import android.os.Bundle;
import com.facebook.FacebookException;
import com.facebook.internal.u;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphContent;
import org.json.JSONException;
import org.json.JSONObject;

public class k
{
  public static Bundle a(ShareLinkContent paramShareLinkContent)
  {
    Bundle localBundle = new Bundle();
    u.a(localBundle, "href", paramShareLinkContent.a());
    return localBundle;
  }
  
  public static Bundle a(ShareOpenGraphContent paramShareOpenGraphContent)
  {
    Bundle localBundle = new Bundle();
    u.a(localBundle, "action_type", paramShareOpenGraphContent.e().a());
    try
    {
      paramShareOpenGraphContent = j.a(j.a(paramShareOpenGraphContent), false);
      if (paramShareOpenGraphContent != null) {
        u.a(localBundle, "action_properties", paramShareOpenGraphContent.toString());
      }
      return localBundle;
    }
    catch (JSONException paramShareOpenGraphContent)
    {
      throw new FacebookException("Unable to serialize the ShareOpenGraphContent to JSON", paramShareOpenGraphContent);
    }
  }
  
  public static Bundle b(ShareLinkContent paramShareLinkContent)
  {
    Bundle localBundle = new Bundle();
    u.a(localBundle, "name", paramShareLinkContent.f());
    u.a(localBundle, "description", paramShareLinkContent.e());
    u.a(localBundle, "link", u.a(paramShareLinkContent.a()));
    u.a(localBundle, "picture", u.a(paramShareLinkContent.g()));
    return localBundle;
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */