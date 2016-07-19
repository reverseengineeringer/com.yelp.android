package com.facebook.share.widget;

import android.os.Bundle;
import com.facebook.f;
import com.facebook.internal.a;
import com.facebook.share.internal.h;
import com.facebook.share.internal.j;

class a$1
  extends h
{
  public void a(a parama, Bundle paramBundle)
  {
    if ("cancel".equalsIgnoreCase(j.a(paramBundle)))
    {
      a.a();
      return;
    }
    a.a(new a.b(paramBundle));
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.widget.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */