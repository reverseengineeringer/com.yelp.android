package com.yelp.android.ui.panels.businesssearch;

import android.content.Context;
import android.content.res.Resources;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.TextView;

public class SpellingSuggestPanel
  extends FrameLayout
{
  private TextView a;
  private String b;
  
  public SpellingSuggestPanel(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public SpellingSuggestPanel(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public static CharSequence a(Context paramContext, String paramString)
  {
    SpannableStringBuilder localSpannableStringBuilder = null;
    if (!TextUtils.isEmpty(paramString))
    {
      localSpannableStringBuilder = new SpannableStringBuilder(Html.fromHtml(String.valueOf(paramContext.getResources().getText(2131166510))));
      int i = localSpannableStringBuilder.nextSpanTransition(0, localSpannableStringBuilder.length(), StyleSpan.class);
      localSpannableStringBuilder.replace(i, localSpannableStringBuilder.nextSpanTransition(i, localSpannableStringBuilder.length(), StyleSpan.class), paramString);
      int j = paramString.length();
      localSpannableStringBuilder.setSpan(new ForegroundColorSpan(-16776961), i, j + i, 17);
    }
    return localSpannableStringBuilder;
  }
  
  private void a()
  {
    LayoutInflater.from(getContext()).inflate(2130903459, this);
    a = ((TextView)findViewById(2131689641));
  }
  
  public String getSuggestion()
  {
    return b;
  }
  
  public void setSuggestion(String paramString)
  {
    CharSequence localCharSequence = a(getContext(), paramString);
    a.setText(localCharSequence);
    b = paramString;
  }
  
  public void setVisibility(int paramInt)
  {
    a.setVisibility(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.businesssearch.SpellingSuggestPanel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */