package com.yelp.android.ui.util;

import android.content.Context;
import android.text.ClipboardManager;
import android.view.View;
import com.yelp.android.util.YelpLog;

public class k
{
  public static void a(View paramView, int paramInt, String paramString)
  {
    a(paramView, paramView.getContext().getString(paramInt), paramString);
  }
  
  public static void a(View paramView, String paramString1, String paramString2)
  {
    paramView.setOnLongClickListener(new l(paramString1, paramString2));
  }
  
  public static void b(View paramView, String paramString1, String paramString2)
  {
    paramView = paramView.getContext();
    try
    {
      ((ClipboardManager)paramView.getSystemService("clipboard")).setText(paramString2);
      cr.a(paramView.getString(2131165657, new Object[] { paramString1 }), 0);
      return;
    }
    catch (Exception paramString1)
    {
      YelpLog.error(paramView, "Exception thrown in ClipboardManager.setText().This is a known issue with some versions of Jelly Bean (4.3)", paramString1);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */