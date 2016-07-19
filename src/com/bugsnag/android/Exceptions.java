package com.bugsnag.android;

import java.io.IOException;

class Exceptions
  implements JsonStream.Streamable
{
  private final Configuration config;
  private Throwable exception;
  private StackTraceElement[] frames;
  private String message;
  private String name;
  
  Exceptions(Configuration paramConfiguration, String paramString1, String paramString2, StackTraceElement[] paramArrayOfStackTraceElement)
  {
    config = paramConfiguration;
    name = paramString1;
    message = paramString2;
    frames = paramArrayOfStackTraceElement;
  }
  
  Exceptions(Configuration paramConfiguration, Throwable paramThrowable)
  {
    config = paramConfiguration;
    exception = paramThrowable;
  }
  
  private void exceptionToStream(JsonStream paramJsonStream, String paramString1, String paramString2, StackTraceElement[] paramArrayOfStackTraceElement)
    throws IOException
  {
    paramArrayOfStackTraceElement = new Stacktrace(config, paramArrayOfStackTraceElement);
    paramJsonStream.beginObject();
    paramJsonStream.name("errorClass").value(paramString1);
    paramJsonStream.name("message").value(paramString2);
    paramJsonStream.name("stacktrace").value(paramArrayOfStackTraceElement);
    paramJsonStream.endObject();
  }
  
  public void toStream(JsonStream paramJsonStream)
    throws IOException
  {
    paramJsonStream.beginArray();
    if (exception != null) {
      for (Throwable localThrowable = exception; localThrowable != null; localThrowable = localThrowable.getCause()) {
        exceptionToStream(paramJsonStream, localThrowable.getClass().getName(), localThrowable.getLocalizedMessage(), localThrowable.getStackTrace());
      }
    }
    exceptionToStream(paramJsonStream, name, message, frames);
    paramJsonStream.endArray();
  }
}

/* Location:
 * Qualified Name:     com.bugsnag.android.Exceptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */