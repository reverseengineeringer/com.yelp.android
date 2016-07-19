package com.bugsnag.android;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.Writer;

class JsonStream
  extends JsonWriter
{
  private final Writer out;
  
  JsonStream(Writer paramWriter)
  {
    super(paramWriter);
    out = paramWriter;
  }
  
  public JsonStream name(String paramString)
    throws IOException
  {
    super.name(paramString);
    return this;
  }
  
  public JsonWriter value(Number paramNumber)
    throws IOException
  {
    if (paramNumber == null) {
      return nullValue();
    }
    return super.value(paramNumber);
  }
  
  public JsonWriter value(String paramString)
    throws IOException
  {
    if (paramString == null) {
      return nullValue();
    }
    return super.value(paramString);
  }
  
  public void value(Streamable paramStreamable)
    throws IOException
  {
    paramStreamable.toStream(this);
  }
  
  public void value(File paramFile)
    throws IOException
  {
    super.flush();
    try
    {
      FileReader localFileReader = new FileReader(paramFile);
      IOUtils.closeQuietly(localFileReader);
    }
    finally
    {
      try
      {
        IOUtils.copy(localFileReader, out);
        IOUtils.closeQuietly(localFileReader);
        out.flush();
        return;
      }
      finally {}
      paramFile = finally;
      localFileReader = null;
    }
    throw paramFile;
  }
  
  public void value(Boolean paramBoolean)
    throws IOException
  {
    if (paramBoolean == null)
    {
      nullValue();
      return;
    }
    super.value(paramBoolean.booleanValue());
  }
  
  static abstract interface Streamable
  {
    public abstract void toStream(JsonStream paramJsonStream)
      throws IOException;
  }
}

/* Location:
 * Qualified Name:     com.bugsnag.android.JsonStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */