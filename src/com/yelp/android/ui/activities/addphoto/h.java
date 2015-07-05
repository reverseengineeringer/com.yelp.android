package com.yelp.android.ui.activities.addphoto;

import android.text.SpannableStringBuilder;
import android.widget.MultiAutoCompleteTextView.Tokenizer;

final class h
  implements MultiAutoCompleteTextView.Tokenizer
{
  private h(AddCaptionFragment paramAddCaptionFragment) {}
  
  public int findTokenEnd(CharSequence paramCharSequence, int paramInt)
  {
    int i = paramCharSequence.length();
    while (paramInt < i)
    {
      if (paramCharSequence.charAt(paramInt) == ' ') {
        return paramInt;
      }
      paramInt += 1;
    }
    return i;
  }
  
  public int findTokenStart(CharSequence paramCharSequence, int paramInt)
  {
    while (paramInt > 0)
    {
      if (paramCharSequence.charAt(paramInt - 1) == ' ') {
        return paramInt;
      }
      paramInt -= 1;
    }
    return 0;
  }
  
  public CharSequence terminateToken(CharSequence paramCharSequence)
  {
    Object localObject = paramCharSequence;
    if (paramCharSequence.charAt(paramCharSequence.length() - 1) != ' ')
    {
      localObject = SpannableStringBuilder.valueOf(paramCharSequence);
      ((SpannableStringBuilder)localObject).append(' ');
    }
    return (CharSequence)localObject;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.addphoto.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */