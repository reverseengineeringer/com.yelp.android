package com.yelp.android.o;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

class g
  extends ByteArrayOutputStream
{
  g(f paramf, int paramInt)
  {
    super(paramInt);
  }
  
  public String toString()
  {
    if ((count > 0) && (buf[(count - 1)] == 13)) {}
    for (int i = count - 1;; i = count) {
      try
      {
        String str = new String(buf, 0, i, f.a(a).name());
        return str;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw new AssertionError(localUnsupportedEncodingException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.o.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */