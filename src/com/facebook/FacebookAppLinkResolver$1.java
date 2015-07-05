package com.facebook;

import android.net.Uri;
import bolts.d;
import bolts.j;
import bolts.k;
import java.util.Map;

class FacebookAppLinkResolver$1
  implements j<Map<Uri, d>, d>
{
  FacebookAppLinkResolver$1(FacebookAppLinkResolver paramFacebookAppLinkResolver, Uri paramUri) {}
  
  public d then(k<Map<Uri, d>> paramk)
  {
    return (d)((Map)paramk.e()).get(val$uri);
  }
}

/* Location:
 * Qualified Name:     com.facebook.FacebookAppLinkResolver.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */