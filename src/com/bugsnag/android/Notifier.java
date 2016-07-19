package com.bugsnag.android;

import java.io.IOException;

class Notifier
  implements JsonStream.Streamable
{
  private static final Notifier instance = new Notifier();
  
  public static Notifier getInstance()
  {
    return instance;
  }
  
  public void toStream(JsonStream paramJsonStream)
    throws IOException
  {
    paramJsonStream.beginObject();
    paramJsonStream.name("name").value("Android Bugsnag Notifier");
    paramJsonStream.name("version").value("3.3.0");
    paramJsonStream.name("url").value("https://bugsnag.com");
    paramJsonStream.endObject();
  }
}

/* Location:
 * Qualified Name:     com.bugsnag.android.Notifier
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */