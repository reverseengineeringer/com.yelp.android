package com.yelp.android.ui.util;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.text.format.DateFormat;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.yelp.android.analytics.g;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Map;

public class as
{
  public static int a(List<? extends com.yelp.android.serializable.b> paramList, com.yelp.android.serializable.b paramb)
  {
    paramList = paramList.listIterator();
    while (paramList.hasNext())
    {
      int i = paramList.nextIndex();
      if (((com.yelp.android.serializable.b)paramList.next()).a(paramb)) {
        return i;
      }
    }
    return -1;
  }
  
  public static Dialog a(Activity paramActivity, int paramInt)
  {
    Object localObject = Collections.singletonMap("reason_code", String.valueOf(paramInt));
    localObject = new g(EventIri.GooglePlayServicesUnavailable, null, (Map)localObject);
    AppData.b().k().a((com.yelp.android.analytics.b)localObject);
    return GooglePlayServicesUtil.getErrorDialog(paramInt, paramActivity, 1026);
  }
  
  public static String a(String paramString, Locale paramLocale)
  {
    return DateFormat.getBestDateTimePattern(paramLocale, paramString);
  }
  
  public static void a(int paramInt1, int paramInt2)
  {
    AppData.b().A().a(paramInt1, paramInt2);
  }
  
  public static void a(View paramView)
  {
    InputMethodManager localInputMethodManager = (InputMethodManager)paramView.getContext().getSystemService("input_method");
    paramView.requestFocus();
    localInputMethodManager.showSoftInput(paramView, 2);
  }
  
  public static void a(CharSequence paramCharSequence, int paramInt)
  {
    AppData.b().A().a(paramCharSequence, paramInt);
  }
  
  public static void b(View paramView)
  {
    ((InputMethodManager)paramView.getContext().getSystemService("input_method")).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */