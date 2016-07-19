package com.facebook.share.internal;

import android.net.Uri;
import com.facebook.FacebookException;
import com.facebook.share.model.SharePhoto;
import org.json.JSONException;
import org.json.JSONObject;

final class j$6
  implements g.a
{
  public JSONObject a(SharePhoto paramSharePhoto)
  {
    paramSharePhoto = paramSharePhoto.b();
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("url", paramSharePhoto.toString());
      return localJSONObject;
    }
    catch (JSONException paramSharePhoto)
    {
      throw new FacebookException("Unable to attach images", paramSharePhoto);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.j.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */