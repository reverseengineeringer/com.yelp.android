package com.yelp.android.ui.activities.messaging;

import android.widget.EditText;
import com.yelp.android.ay.t;
import com.yelp.android.database.x;

class y
  extends x
{
  y(MessageTheBusinessFragment paramMessageTheBusinessFragment) {}
  
  public void a(Object paramObject)
  {
    if (a.getActivity() != null)
    {
      paramObject = (t)paramObject;
      MessageTheBusinessFragment.a(a).setText(((t)paramObject).b());
    }
  }
  
  public void b() {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */