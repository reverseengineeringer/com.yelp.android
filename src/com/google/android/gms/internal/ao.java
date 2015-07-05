package com.google.android.gms.internal;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public abstract class ao
{
  private static MessageDigest nS = null;
  protected Object mH = new Object();
  
  protected MessageDigest bf()
  {
    for (;;)
    {
      MessageDigest localMessageDigest;
      int i;
      synchronized (mH)
      {
        if (nS != null)
        {
          localMessageDigest = nS;
          return localMessageDigest;
        }
        i = 0;
        if (i >= 2) {}
      }
      try
      {
        nS = MessageDigest.getInstance("MD5");
        i += 1;
        continue;
        localMessageDigest = nS;
        return localMessageDigest;
        localObject2 = finally;
        throw ((Throwable)localObject2);
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        for (;;) {}
      }
    }
  }
  
  abstract byte[] l(String paramString);
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */