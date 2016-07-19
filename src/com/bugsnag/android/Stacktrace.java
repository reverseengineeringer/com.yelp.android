package com.bugsnag.android;

import java.io.IOException;

class Stacktrace
  implements JsonStream.Streamable
{
  final Configuration config;
  final StackTraceElement[] stacktrace;
  
  Stacktrace(Configuration paramConfiguration, StackTraceElement[] paramArrayOfStackTraceElement)
  {
    config = paramConfiguration;
    stacktrace = paramArrayOfStackTraceElement;
  }
  
  public void toStream(JsonStream paramJsonStream)
    throws IOException
  {
    paramJsonStream.beginArray();
    StackTraceElement[] arrayOfStackTraceElement = stacktrace;
    int j = arrayOfStackTraceElement.length;
    int i = 0;
    for (;;)
    {
      if (i < j)
      {
        StackTraceElement localStackTraceElement = arrayOfStackTraceElement[i];
        try
        {
          paramJsonStream.beginObject();
          paramJsonStream.name("method").value(localStackTraceElement.getClassName() + "." + localStackTraceElement.getMethodName());
          JsonStream localJsonStream = paramJsonStream.name("file");
          if (localStackTraceElement.getFileName() == null) {}
          for (String str = "Unknown";; str = localStackTraceElement.getFileName())
          {
            localJsonStream.value(str);
            paramJsonStream.name("lineNumber").value(localStackTraceElement.getLineNumber());
            if (config.inProject(localStackTraceElement.getClassName())) {
              paramJsonStream.name("inProject").value(true);
            }
            paramJsonStream.endObject();
            break;
          }
          paramJsonStream.endArray();
        }
        catch (Exception localException)
        {
          localException.printStackTrace(System.err);
        }
      }
      return;
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.bugsnag.android.Stacktrace
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */