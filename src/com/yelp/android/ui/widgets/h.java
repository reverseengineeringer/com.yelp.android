package com.yelp.android.ui.widgets;

import android.text.Editable;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;

class h
  implements View.OnClickListener
{
  h(EditTextAndClearButton paramEditTextAndClearButton) {}
  
  public void onClick(View paramView)
  {
    EditTextAndClearButton.b(a).getText().clear();
    EditTextAndClearButton.b(a).requestFocus();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */