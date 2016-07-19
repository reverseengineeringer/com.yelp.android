package com.facebook.share.widget;

import android.os.Bundle;
import android.util.Log;
import com.facebook.internal.e.a;
import com.facebook.share.model.AppInviteContent;

class a$a$1
  implements e.a
{
  a$a$1(a.a parama, AppInviteContent paramAppInviteContent) {}
  
  public Bundle a()
  {
    return a.a(a);
  }
  
  public Bundle b()
  {
    Log.e("AppInviteDialog", "Attempting to present the AppInviteDialog with an outdated Facebook app on the device");
    return new Bundle();
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.widget.a.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */