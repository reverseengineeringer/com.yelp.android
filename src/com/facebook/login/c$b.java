package com.facebook.login;

import android.app.Activity;
import android.content.Intent;
import android.support.v4.app.Fragment;
import com.facebook.internal.v;

class c$b
  implements e
{
  private final Fragment a;
  
  c$b(Fragment paramFragment)
  {
    v.a(paramFragment, "fragment");
    a = paramFragment;
  }
  
  public Activity a()
  {
    return a.getActivity();
  }
  
  public void a(Intent paramIntent, int paramInt)
  {
    a.startActivityForResult(paramIntent, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.facebook.login.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */