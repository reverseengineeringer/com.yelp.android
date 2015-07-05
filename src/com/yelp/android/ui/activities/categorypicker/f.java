package com.yelp.android.ui.activities.categorypicker;

import android.text.Html;
import android.text.TextUtils;
import com.yelp.android.appdata.AppData;

public class f
{
  public static CharSequence a(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    if (TextUtils.isEmpty(paramCharSequence2)) {
      return paramCharSequence1;
    }
    return Html.fromHtml(AppData.b().getString(2131165708, new Object[] { paramCharSequence1, paramCharSequence2 }));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.categorypicker.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */