package com.yelp.android.ui.activities;

import android.text.Editable;
import android.text.TextWatcher;
import java.util.concurrent.atomic.AtomicBoolean;

class bf
  implements TextWatcher
{
  bf(ActivityCreateAccount paramActivityCreateAccount) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    ActivityCreateAccount.h(a).getAndSet(false);
    ActivityCreateAccount.a(a, true);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */