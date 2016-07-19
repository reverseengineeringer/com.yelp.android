package com.yelp.android.ui.util;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.view.View;
import com.yelp.android.appdata.AppData;

public class h
{
  public static void a(View paramView, int paramInt, String paramString)
  {
    a(paramView, paramView.getContext().getString(paramInt), paramString);
  }
  
  public static void a(View paramView, String paramString1, String paramString2)
  {
    paramView.setOnLongClickListener(new h.1(paramString1, paramString2));
  }
  
  public static void a(String paramString1, String paramString2)
  {
    AppData localAppData = AppData.b();
    ((ClipboardManager)localAppData.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(paramString1, paramString2));
    as.a(localAppData.getString(2131165734, new Object[] { paramString1 }), 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */