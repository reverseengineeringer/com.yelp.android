package com.google.android.gms.internal;

import android.database.CharArrayBuffer;

public final class le
{
  public static void b(String paramString, CharArrayBuffer paramCharArrayBuffer)
  {
    if ((data == null) || (data.length < paramString.length())) {
      data = paramString.toCharArray();
    }
    for (;;)
    {
      sizeCopied = paramString.length();
      return;
      paramString.getChars(0, paramString.length(), data, 0);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.le
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */