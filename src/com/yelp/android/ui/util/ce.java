package com.yelp.android.ui.util;

import android.content.res.Resources;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;

public class ce
  implements TextWatcher
{
  private final int a;
  protected final TextView b;
  protected final int c;
  protected final int d;
  private final int e;
  
  public ce(TextView paramTextView, int paramInt)
  {
    this(paramTextView, paramInt, 50, 2131361808, 2131361970);
  }
  
  public ce(TextView paramTextView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    c = paramInt1;
    b = paramTextView;
    d = paramInt2;
    a = paramInt3;
    e = paramInt4;
  }
  
  public int a()
  {
    return c;
  }
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    paramInt1 = c - paramCharSequence.length();
    if (paramInt1 < d)
    {
      b.setText(String.valueOf(paramInt1));
      paramCharSequence = b;
      Resources localResources = b.getResources();
      if (paramInt1 >= 0) {}
      for (paramInt1 = a;; paramInt1 = e)
      {
        paramCharSequence.setTextColor(localResources.getColor(paramInt1));
        return;
      }
    }
    b.setText("");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */