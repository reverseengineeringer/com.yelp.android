package com.yelp.android.g;

import android.util.Log;
import java.io.Writer;

public class d
  extends Writer
{
  private final String a;
  private StringBuilder b = new StringBuilder(128);
  
  public d(String paramString)
  {
    a = paramString;
  }
  
  private void a()
  {
    if (b.length() > 0)
    {
      Log.d(a, b.toString());
      b.delete(0, b.length());
    }
  }
  
  public void close()
  {
    a();
  }
  
  public void flush()
  {
    a();
  }
  
  public void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    int i = 0;
    if (i < paramInt2)
    {
      char c = paramArrayOfChar[(paramInt1 + i)];
      if (c == '\n') {
        a();
      }
      for (;;)
      {
        i += 1;
        break;
        b.append(c);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.g.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */