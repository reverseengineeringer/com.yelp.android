package com.yelp.android.appdata;

import android.content.Context;
import com.yelp.android.analytics.adjust.AdjustManager;
import java.util.Locale;

public class q
  extends f
{
  public q(Context paramContext, Locale paramLocale, String paramString)
  {
    super(paramContext, paramLocale, paramString);
  }
  
  protected float j()
  {
    return 1.3F;
  }
  
  protected String k()
  {
    String str = super.k();
    AppData.b().l().a(str);
    return str;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */