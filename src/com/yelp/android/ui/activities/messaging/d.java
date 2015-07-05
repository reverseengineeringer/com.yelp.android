package com.yelp.android.ui.activities.messaging;

import android.widget.EditText;
import android.widget.TextView;
import com.yelp.android.ay.m;
import com.yelp.android.database.x;

class d
  extends x
{
  d(ComposeMessageFragment paramComposeMessageFragment) {}
  
  public void a(Object paramObject)
  {
    if ((ComposeMessageFragment.b(a) != null) && (ComposeMessageFragment.c(a) != null))
    {
      paramObject = (m)paramObject;
      ComposeMessageFragment.b(a).setText(((m)paramObject).b());
      ComposeMessageFragment.c(a).setText(((m)paramObject).c());
    }
  }
  
  public void b() {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */