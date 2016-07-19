package com.facebook.internal;

import com.facebook.LoggingBehavior;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

final class i$g
{
  static JSONObject a(InputStream paramInputStream)
    throws IOException
  {
    int k = 0;
    if (paramInputStream.read() != 0) {
      return null;
    }
    int i = 0;
    int j = 0;
    while (i < 3)
    {
      int m = paramInputStream.read();
      if (m == -1)
      {
        n.a(LoggingBehavior.CACHE, i.a, "readHeader: stream.read returned -1 while reading header size");
        return null;
      }
      j = (j << 8) + (m & 0xFF);
      i += 1;
    }
    byte[] arrayOfByte = new byte[j];
    i = k;
    while (i < arrayOfByte.length)
    {
      j = paramInputStream.read(arrayOfByte, i, arrayOfByte.length - i);
      if (j < 1)
      {
        n.a(LoggingBehavior.CACHE, i.a, "readHeader: stream.read stopped at " + Integer.valueOf(i) + " when expected " + arrayOfByte.length);
        return null;
      }
      i += j;
    }
    paramInputStream = new JSONTokener(new String(arrayOfByte));
    try
    {
      paramInputStream = paramInputStream.nextValue();
      if (!(paramInputStream instanceof JSONObject))
      {
        n.a(LoggingBehavior.CACHE, i.a, "readHeader: expected JSONObject, got " + paramInputStream.getClass().getCanonicalName());
        return null;
      }
      paramInputStream = (JSONObject)paramInputStream;
      return paramInputStream;
    }
    catch (JSONException paramInputStream)
    {
      throw new IOException(paramInputStream.getMessage());
    }
  }
  
  static void a(OutputStream paramOutputStream, JSONObject paramJSONObject)
    throws IOException
  {
    paramJSONObject = paramJSONObject.toString().getBytes();
    paramOutputStream.write(0);
    paramOutputStream.write(paramJSONObject.length >> 16 & 0xFF);
    paramOutputStream.write(paramJSONObject.length >> 8 & 0xFF);
    paramOutputStream.write(paramJSONObject.length >> 0 & 0xFF);
    paramOutputStream.write(paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.i.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */