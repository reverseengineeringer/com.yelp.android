package com.yelp.android.ui.activities.messaging;

import android.text.TextUtils;
import android.widget.TextView;

 enum ComposeMessageFragment$ConversationRequiredField$2
{
  ComposeMessageFragment$ConversationRequiredField$2(int paramInt1)
  {
    super(paramString, paramInt, paramInt1, null);
  }
  
  public boolean isValid(ComposeMessageFragment paramComposeMessageFragment)
  {
    return !TextUtils.isEmpty(ComposeMessageFragment.b(paramComposeMessageFragment).getText().toString());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.ComposeMessageFragment.ConversationRequiredField.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */