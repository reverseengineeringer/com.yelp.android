package com.yelp.android.ui.activities.messaging;

import com.yelp.android.ui.widgets.RecipientBoxView;

 enum ComposeMessageFragment$ConversationRequiredField$1
{
  ComposeMessageFragment$ConversationRequiredField$1(int paramInt1)
  {
    super(paramString, paramInt, paramInt1, null);
  }
  
  public boolean isValid(ComposeMessageFragment paramComposeMessageFragment)
  {
    return ComposeMessageFragment.a(paramComposeMessageFragment).getRecipient() != null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.ComposeMessageFragment.ConversationRequiredField.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */