package com.crashlytics.android.internal;

import java.io.BufferedOutputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;

public final class ae
  extends BufferedOutputStream
{
  private final CharsetEncoder a;
  
  public ae(OutputStream paramOutputStream, String paramString, int paramInt)
  {
    super(paramOutputStream, paramInt);
    a = Charset.forName(bw.b(paramString)).newEncoder();
  }
  
  public final ae a(String paramString)
  {
    paramString = a.encode(CharBuffer.wrap(paramString));
    super.write(paramString.array(), 0, paramString.limit());
    return this;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */