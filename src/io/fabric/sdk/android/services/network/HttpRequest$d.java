package io.fabric.sdk.android.services.network;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;

public class HttpRequest$d
  extends BufferedOutputStream
{
  private final CharsetEncoder a;
  
  public HttpRequest$d(OutputStream paramOutputStream, String paramString, int paramInt)
  {
    super(paramOutputStream, paramInt);
    a = Charset.forName(HttpRequest.e(paramString)).newEncoder();
  }
  
  public d a(String paramString)
    throws IOException
  {
    paramString = a.encode(CharBuffer.wrap(paramString));
    super.write(paramString.array(), 0, paramString.limit());
    return this;
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.network.HttpRequest.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */