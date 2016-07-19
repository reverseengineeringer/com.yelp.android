package com.facebook.share.internal;

import android.content.Intent;
import com.facebook.internal.CallbackManagerImpl.RequestCodeOffset;
import com.facebook.internal.CallbackManagerImpl.a;

final class b$5
  implements CallbackManagerImpl.a
{
  public boolean a(int paramInt, Intent paramIntent)
  {
    return b.a(CallbackManagerImpl.RequestCodeOffset.Like.toRequestCode(), paramInt, paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.b.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */