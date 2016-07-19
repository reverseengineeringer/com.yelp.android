package com.yelp.android.ui.activities.deals;

import android.text.InputFilter;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class c
  implements InputFilter
{
  private final Pattern a = Pattern.compile("[" + Pattern.quote("<") + Pattern.quote(">") + "]*");
  
  public CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4)
  {
    paramSpanned = a.matcher(paramCharSequence).replaceAll("");
    if (((paramCharSequence instanceof Spanned)) || ((paramCharSequence instanceof Spannable)))
    {
      paramSpanned = new SpannableStringBuilder(paramSpanned);
      TextUtils.copySpansFrom((Spanned)paramCharSequence, paramInt1, paramInt2, null, paramSpanned, 0);
      return paramSpanned;
    }
    return paramSpanned;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */