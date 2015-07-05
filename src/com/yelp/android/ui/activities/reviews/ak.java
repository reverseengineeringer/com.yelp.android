package com.yelp.android.ui.activities.reviews;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;

class ak
  implements TextWatcher
{
  ak(ReviewComposeFragment paramReviewComposeFragment) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    ReviewComposeFragment.g(a);
    paramCharSequence = ReviewComposeFragment.b(a).getText().toString().trim();
    paramInt1 = paramCharSequence.length();
    a.d.a(paramCharSequence.toString());
    a.d.c(false);
    if (paramInt1 == 1) {
      a.d.a(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */