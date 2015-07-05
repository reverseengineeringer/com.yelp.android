package com.yelp.android.ui.util;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.text.Spannable;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.yelp.android.analytics.b;
import com.yelp.android.analytics.g;
import com.yelp.android.analytics.iris.AutoIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.av.a;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.ay;
import com.yelp.android.util.StringUtils;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

public class cr
{
  public static int a(List<? extends ay> paramList, ay paramay)
  {
    paramList = paramList.listIterator();
    while (paramList.hasNext())
    {
      int i = paramList.nextIndex();
      if (((ay)paramList.next()).equalsId(paramay)) {
        return i;
      }
    }
    return -1;
  }
  
  public static Dialog a(Activity paramActivity, int paramInt)
  {
    Object localObject = Collections.singletonMap("reason_code", String.valueOf(paramInt));
    localObject = new g(AutoIri.GooglePlayServicesUnavailable, null, (Map)localObject);
    AppData.b().k().a((b)localObject);
    return GooglePlayServicesUtil.getErrorDialog(paramInt, paramActivity, 1022);
  }
  
  public static Spannable a(Context paramContext, Tip paramTip)
  {
    return StringUtils.a(StringUtils.a(paramContext, 2131166721, new Object[] { paramTip.getTipOfTheDayDateFormat(paramContext, false) }), 2131361888, paramContext);
  }
  
  public static void a(int paramInt1, int paramInt2)
  {
    AppData.b().v().a(paramInt1, paramInt2);
  }
  
  public static void a(View paramView)
  {
    InputMethodManager localInputMethodManager = (InputMethodManager)paramView.getContext().getSystemService("input_method");
    paramView.requestFocus();
    localInputMethodManager.showSoftInput(paramView, 2);
  }
  
  public static void a(View paramView, Spannable paramSpannable, Tip paramTip)
  {
    paramView.setVisibility(8);
    if (paramTip.getTipOfTheDayTime() != null)
    {
      paramView.setVisibility(0);
      ((TextView)paramView.findViewById(2131494067)).setText(paramSpannable);
    }
  }
  
  public static void a(CharSequence paramCharSequence, int paramInt)
  {
    AppData.b().v().a(paramCharSequence, paramInt);
  }
  
  public static void b(View paramView)
  {
    ((InputMethodManager)paramView.getContext().getSystemService("input_method")).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.cr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */