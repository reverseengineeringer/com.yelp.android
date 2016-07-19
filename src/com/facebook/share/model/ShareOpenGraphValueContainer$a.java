package com.facebook.share.model;

import android.os.Bundle;

public abstract class ShareOpenGraphValueContainer$a<P extends ShareOpenGraphValueContainer, E extends a>
{
  private Bundle a = new Bundle();
  
  public E a(P paramP)
  {
    if (paramP != null) {
      a.putAll(paramP.b());
    }
    return this;
  }
  
  public E a(String paramString1, String paramString2)
  {
    a.putString(paramString1, paramString2);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.model.ShareOpenGraphValueContainer.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */