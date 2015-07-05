package com.yelp.android.ui.activities.messaging;

import android.widget.EditText;
import com.yelp.android.ay.r;
import com.yelp.android.database.x;

class o
  extends x
{
  o(ConversationThreadFragment paramConversationThreadFragment) {}
  
  public void a(Object paramObject)
  {
    if (ConversationThreadFragment.c(a) != null)
    {
      paramObject = (r)paramObject;
      ConversationThreadFragment.c(a).setText(((r)paramObject).b());
    }
  }
  
  public void b() {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */