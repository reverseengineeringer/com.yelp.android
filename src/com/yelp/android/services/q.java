package com.yelp.android.services;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import com.yelp.android.analytics.h;

public abstract class q
{
  protected abstract Uri a(Context paramContext);
  
  public abstract h a();
  
  public void a(Context paramContext, o paramo, Intent paramIntent)
  {
    if (paramo.a())
    {
      paramIntent.putExtra("android.intent.extra.TEXT", String.valueOf(c(paramContext)));
      return;
    }
    paramIntent.putExtra("android.intent.extra.TEXT", TextUtils.join("\n", new Object[] { b(paramContext), c(paramContext) }));
  }
  
  public abstract String b(Context paramContext);
  
  public final Uri c(Context paramContext)
  {
    Uri localUri = a(paramContext);
    paramContext = localUri;
    if (!"yelp-android".equals(localUri.getQueryParameter("ref"))) {
      paramContext = localUri.buildUpon().appendQueryParameter("ref", "yelp-android").build();
    }
    return paramContext;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */