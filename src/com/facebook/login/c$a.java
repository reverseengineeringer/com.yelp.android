package com.facebook.login;

import android.app.Activity;
import android.content.Intent;
import com.facebook.internal.v;

class c$a
  implements e
{
  private final Activity a;
  
  c$a(Activity paramActivity)
  {
    v.a(paramActivity, "activity");
    a = paramActivity;
  }
  
  public Activity a()
  {
    return a;
  }
  
  public void a(Intent paramIntent, int paramInt)
  {
    a.startActivityForResult(paramIntent, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.facebook.login.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */