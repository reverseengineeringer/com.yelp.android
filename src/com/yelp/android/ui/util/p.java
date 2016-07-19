package com.yelp.android.ui.util;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.yelp.android.aa.d;
import com.yelp.android.aa.n;
import com.yelp.android.ac.e;
import com.yelp.android.ac.h;
import com.yelp.android.util.StringUtils;
import com.yelp.android.w.c;
import com.yelp.android.w.g;
import java.io.InputStream;

public class p
  implements e<Uri>
{
  private Context a;
  
  public p(Context paramContext)
  {
    a = paramContext;
  }
  
  public c<InputStream> a(Uri paramUri, int paramInt1, int paramInt2)
  {
    paramUri = paramUri.toString();
    if (StringUtils.d(paramUri)) {}
    do
    {
      return null;
      if ((paramUri.startsWith("http://")) || (paramUri.startsWith("https://"))) {
        return new g(new d(paramUri));
      }
    } while (!paramUri.startsWith("bundle://"));
    paramUri = paramUri.substring("bundle://".length());
    int i = ar.a(a, paramUri);
    if (i == 0)
    {
      Intent localIntent = new Intent("com.yelp.android.webimageview.intent.invalid_bundle_url");
      localIntent.putExtra("image_url", paramUri);
      a.sendBroadcast(localIntent);
    }
    return new n(a, new h(a)).a(Integer.valueOf(i), paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */