package com.yelp.android.services;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.yelp.android.analytics.h;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.serializable.YelpBusiness;

public final class b
  extends q
{
  private final YelpBusiness a;
  
  public b(YelpBusiness paramYelpBusiness)
  {
    a = paramYelpBusiness;
  }
  
  public Uri a(Context paramContext)
  {
    return a.getYelpUrl(paramContext);
  }
  
  public h a()
  {
    return new h().a(EventIri.BusinessShare).a("business_id", a.getId());
  }
  
  public void a(Context paramContext, o paramo, Intent paramIntent)
  {
    super.a(paramContext, paramo, paramIntent);
    if (paramo.f()) {
      paramIntent.putExtra("android.intent.extra.SUBJECT", paramContext.getString(2131166562, new Object[] { a.getDisplayName() }));
    }
  }
  
  public String b(Context paramContext)
  {
    return a.getShareStringShort();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */