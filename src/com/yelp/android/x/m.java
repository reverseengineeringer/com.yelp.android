package com.yelp.android.x;

import android.content.Context;
import android.net.Uri;
import com.yelp.android.r.c;
import com.yelp.android.r.s;
import com.yelp.android.v.e;
import java.io.InputStream;

public class m
  extends com.yelp.android.v.r<InputStream>
  implements h<Uri>
{
  public m(Context paramContext, com.yelp.android.v.m<e, InputStream> paramm)
  {
    super(paramContext, paramm);
  }
  
  protected c<InputStream> a(Context paramContext, Uri paramUri)
  {
    return new s(paramContext, paramUri);
  }
  
  protected c<InputStream> a(Context paramContext, String paramString)
  {
    return new com.yelp.android.r.r(paramContext.getApplicationContext().getAssets(), paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.x.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */