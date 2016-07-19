package com.yelp.android.ui.activities.account;

import android.text.TextUtils;
import android.widget.TextView;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class a$a
  implements a
{
  static Pattern a = Pattern.compile("^[_\\.\\+0-9a-zA-Z-]+@([0-9a-zA-Z][0-9a-zA-Z-]*\\.)+[a-zA-Z]{2,4}$");
  
  public boolean a(TextView paramTextView)
  {
    paramTextView = paramTextView.getText();
    if (TextUtils.isEmpty(paramTextView)) {
      return false;
    }
    paramTextView = String.valueOf(paramTextView).trim();
    if (paramTextView.length() < 3) {
      return false;
    }
    int j = paramTextView.charAt(0);
    char[] arrayOfChar = new char[2];
    char[] tmp45_43 = arrayOfChar;
    tmp45_43[0] = 64;
    char[] tmp50_45 = tmp45_43;
    tmp50_45[1] = 46;
    tmp50_45;
    int k = arrayOfChar.length;
    int i = 0;
    while (i < k)
    {
      if (j == arrayOfChar[i]) {
        return false;
      }
      i += 1;
    }
    arrayOfChar = paramTextView.toCharArray();
    int m = arrayOfChar.length;
    i = 0;
    for (j = 0; i < m; j = k)
    {
      k = j;
      if (arrayOfChar[i] == '@') {
        k = j + 1;
      }
      i += 1;
    }
    if (j != 1) {
      return false;
    }
    return a.matcher(paramTextView).matches();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.account.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */