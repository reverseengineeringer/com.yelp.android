package com.facebook.share.internal;

import android.os.Bundle;
import android.util.Log;
import com.facebook.internal.a;
import com.facebook.internal.e;
import com.facebook.internal.e.a;
import com.facebook.internal.f;
import com.facebook.internal.f.a;

class d$a
  extends f<LikeContent, Object>.a
{
  private d$a(d paramd)
  {
    super(paramd);
  }
  
  public boolean a(LikeContent paramLikeContent)
  {
    return (paramLikeContent != null) && (d.e());
  }
  
  public a b(final LikeContent paramLikeContent)
  {
    a locala = b.d();
    e.a(locala, new e.a()
    {
      public Bundle a()
      {
        return d.a(paramLikeContent);
      }
      
      public Bundle b()
      {
        Log.e("LikeDialog", "Attempting to present the Like Dialog with an outdated Facebook app on the device");
        return new Bundle();
      }
    }, d.g());
    return locala;
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */