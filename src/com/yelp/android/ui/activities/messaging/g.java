package com.yelp.android.ui.activities.messaging;

import android.view.View;
import android.widget.EditText;
import com.yelp.android.analytics.d;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.ui.util.cr;

class g
  extends d
{
  g(ConversationThreadFragment paramConversationThreadFragment, EventIri paramEventIri)
  {
    super(paramEventIri);
  }
  
  public void a(View paramView)
  {
    ConversationThreadFragment.a(a);
    ConversationThreadFragment.e(a).d().b(ConversationThreadFragment.b(a), ConversationThreadFragment.c(a).getText().toString(), ConversationThreadFragment.d(a));
    cr.b(ConversationThreadFragment.c(a));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */