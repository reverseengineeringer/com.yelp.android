package com.yelp.android.ui.activities.categorypicker;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.text.TextUtils;
import com.yelp.android.appdata.BaseYelpApplication;
import com.yelp.android.co.a.j;
import com.yelp.android.serializable.BizCategory;
import java.util.ArrayList;
import java.util.Locale;

public class e
{
  private static final String[] a = { "cs", "da", "de", "en", "es", "fi", "fr", "it", "nb", "nl", "pl", "pt", "sv", "tr" };
  
  public static <SingleCategory extends BizCategory> Intent a(ArrayList<SingleCategory> paramArrayList)
  {
    Intent localIntent = new Intent();
    localIntent.putParcelableArrayListExtra("extra.category", paramArrayList);
    return localIntent;
  }
  
  public static String a(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1)) {
      return paramString2;
    }
    return BaseYelpApplication.K().getString(a.j.display_category_subcategory_format, new Object[] { paramString1, paramString2 });
  }
  
  public static boolean a(Context paramContext)
  {
    boolean bool2 = false;
    paramContext = getResourcesgetConfigurationlocale.getLanguage();
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < a.length)
      {
        if (paramContext.equals(a[i])) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.categorypicker.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */