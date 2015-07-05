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
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.av.a;
import com.yelp.android.util.StringUtils;
import java.util.Collections;

public class AnalyticsSpan
  extends URLSpan
{
  private final g mIri;
  
  public AnalyticsSpan(g paramg, String paramString)
  {
    super(preprocessUrl(paramString));
    mIri = paramg;
  }
  
  public AnalyticsSpan(b paramb, String paramString)
  {
    this(new g(paramb, null, Collections.singletonMap("url", preprocessUrl(paramString))), paramString);
  }
  
  public static final Spannable addAnalyticsToSpannedWithUrls(Spanned paramSpanned, b paramb)
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
        ((Spannable)localObject).setSpan(new AnalyticsSpan(paramb, arrayOfURLSpan[i].getURL()), k, m, n);
        i += 1;
      }
    }
    return (Spannable)localObject;
  }
  
  public static final void addAnalyticsToTextViewWithUrls(TextView paramTextView, b paramb)
  {
    CharSequence localCharSequence = paramTextView.getText();
    if ((localCharSequence instanceof Spanned)) {
      paramTextView.setText(addAnalyticsToSpannedWithUrls((Spanned)localCharSequence, paramb));
    }
  }
  
  private static final String preprocessUrl(String paramString)
  {
    Uri localUri2 = Uri.parse(StringUtils.b(paramString));
    Uri localUri1 = localUri2;
    if (TextUtils.isEmpty(localUri2.getScheme())) {
      localUri1 = Uri.parse("http://" + paramString);
    }
    return String.valueOf(localUri1);
  }
  
  public void onClick(View paramView)
  {
    AppData.b().k().a(mIri);
    super.onClick(paramView);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.AnalyticsSpan
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */