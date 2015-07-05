package com.yelp.android.services;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.yelp.android.analytics.h;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.serializable.YelpDeal;

public final class c
  extends q
{
  private final YelpDeal a;
  
  public c(YelpDeal paramYelpDeal)
  {
    a = paramYelpDeal;
  }
  
  public Uri a(Context paramContext)
  {
    return Uri.parse(a.getShareUrl());
  }
  
  public h a()
  {
    return new h().a(EventIri.DealShare).a("deal_id", a.getId());
  }
  
  public void a(Context paramContext, o paramo, Intent paramIntent)
  {
    if (paramo.e()) {
      paramIntent.putExtra("android.intent.extra.SUBJECT", a.getDealTitleWithBizName(paramContext));
    }
    if (!paramo.d())
    {
      super.a(paramContext, paramo, paramIntent);
      return;
    }
    String str2 = a.getDealTitleWithBizName(paramContext);
    String str1 = str2;
    if (paramo.d())
    {
      str1 = str2;
      if (str2.length() > 130) {
        str1 = a.getTitle();
      }
    }
    paramIntent.putExtra("android.intent.extra.TEXT", paramContext.getString(2131166894, new Object[] { str1, c(paramContext) }));
  }
  
  public String b(Context paramContext)
  {
    return a.getDealTitleWithBizName(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */