package com.facebook.share.widget;

import android.os.Bundle;
import android.util.Log;
import com.facebook.internal.e;
import com.facebook.internal.e.a;
import com.facebook.internal.f;
import com.facebook.internal.f.a;
import com.facebook.share.model.AppInviteContent;

class a$a
  extends f<AppInviteContent, a.b>.a
{
  private a$a(a parama)
  {
    super(parama);
  }
  
  public boolean a(AppInviteContent paramAppInviteContent)
  {
    return a.f();
  }
  
  public com.facebook.internal.a b(final AppInviteContent paramAppInviteContent)
  {
    com.facebook.internal.a locala = b.d();
    e.a(locala, new e.a()
    {
      public Bundle a()
      {
        return a.a(paramAppInviteContent);
      }
      
      public Bundle b()
      {
        Log.e("AppInviteDialog", "Attempting to present the AppInviteDialog with an outdated Facebook app on the device");
        return new Bundle();
      }
    }, a.g());
    return locala;
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.widget.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */