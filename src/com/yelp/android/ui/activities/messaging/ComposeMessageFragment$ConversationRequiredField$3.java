package com.yelp.android.ui.activities.messaging;

import android.text.TextUtils;
import android.widget.EditText;
import com.yelp.android.util.StringUtils;

 enum ComposeMessageFragment$ConversationRequiredField$3
{
  ComposeMessageFragment$ConversationRequiredField$3(int paramInt1)
  {
    super(paramString, paramInt, paramInt1, null);
  }
  
  public boolean isValid(ComposeMessageFragment paramComposeMessageFragment)
  {
    return !TextUtils.isEmpty(StringUtils.a(ComposeMessageFragment.c(paramComposeMessageFragment).getText().toString()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.ComposeMessageFragment.ConversationRequiredField.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */