package com.yelp.android.ui.activities.account;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.EditText;

public class EditTextNonPopUpError
  extends EditText
{
  public EditTextNonPopUpError(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public EditTextNonPopUpError(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void setError(CharSequence paramCharSequence)
  {
    if (TextUtils.isEmpty(paramCharSequence))
    {
      setCompoundDrawables(null, null, null, null);
      return;
    }
    setCompoundDrawablesWithIntrinsicBounds(null, null, getContext().getResources().getDrawable(2130838124), null);
    addTextChangedListener(new f(this));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.account.EditTextNonPopUpError
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */