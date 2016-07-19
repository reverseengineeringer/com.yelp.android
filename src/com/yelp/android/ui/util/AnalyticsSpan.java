package com.yelp.android.ui.util;

import android.net.Uri;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.URLSpan;
import android.view.View;
import android.widget.TextView;
import com.yelp.android.analytics.g;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.util.StringUtils;
import java.util.Collections;

public class AnalyticsSpan
  extends URLSpan
{
  private final g a;
  
  public AnalyticsSpan(g paramg, String paramString)
  {
    super(a(paramString));
    a = paramg;
  }
  
  public AnalyticsSpan(a parama, String paramString)
  {
    this(new g(parama, null, Collections.singletonMap("url", a(paramString))), paramString);
  }
  
  public static final Spannable a(Spanned paramSpanned, a parama)
  {
    int i = 0;
    if ((paramSpanned instanceof Spannable)) {}
    for (Object localObject = (Spannable)paramSpanned;; localObject = new SpannableString(paramSpanned))
    {
      URLSpan[] arrayOfURLSpan = (URLSpan[])paramSpanned.getSpans(0, paramSpanned.length(), URLSpan.class);
      int j = arrayOfURLSpan.length;
      while (i < j)
      {
        int k = paramSpanned.getSpanStart(arrayOfURLSpan[i]);
        int m = paramSpanned.getSpanEnd(arrayOfURLSpan[i]);
        int n = paramSpanned.getSpanFlags(arrayOfURLSpan[i]);
        ((Spannable)localObject).removeSpan(arrayOfURLSpan[i]);
        ((Spannable)localObject).setSpan(new AnalyticsSpan(parama, arrayOfURLSpan[i].getURL()), k, m, n);
        i += 1;
      }
    }
    return (Spannable)localObject;
  }
  
  private static final String a(String paramString)
  {
    Uri localUri2 = Uri.parse(StringUtils.b(paramString));
    Uri localUri1 = localUri2;
    if (TextUtils.isEmpty(localUri2.getScheme())) {
      localUri1 = Uri.parse("http://" + paramString);
    }
    return String.valueOf(localUri1);
  }
  
  public static final void a(TextView paramTextView, a parama)
  {
    CharSequence localCharSequence = paramTextView.getText();
    if ((localCharSequence instanceof Spanned)) {
      paramTextView.setText(a((Spanned)localCharSequence, parama));
    }
  }
  
  public void onClick(View paramView)
  {
    AppData.b().k().a(a);
    super.onClick(paramView);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.AnalyticsSpan
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */