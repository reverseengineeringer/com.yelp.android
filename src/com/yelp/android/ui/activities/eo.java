package com.yelp.android.ui.activities;

import android.widget.CompoundButton;
import android.widget.TextView;
import com.yelp.android.ui.util.ce;

class eo
  extends ce
{
  eo(CheckInDialog paramCheckInDialog, TextView paramTextView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super(paramTextView, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    super.onTextChanged(paramCharSequence, paramInt1, paramInt2, paramInt3);
    if ((a() - paramCharSequence.length() >= 0) || (!CheckInDialog.a(a).isChecked()))
    {
      b.setVisibility(8);
      return;
    }
    b.setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.eo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */