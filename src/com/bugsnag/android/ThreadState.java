package com.bugsnag.android;

import java.io.IOException;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Map;
import java.util.Set;

class ThreadState
  implements JsonStream.Streamable
{
  final Configuration config;
  
  ThreadState(Configuration paramConfiguration)
  {
    config = paramConfiguration;
  }
  
  public void toStream(JsonStream paramJsonStream)
    throws IOException
  {
    long l = Thread.currentThread().getId();
    Map localMap = Thread.getAllStackTraces();
    Object[] arrayOfObject = localMap.keySet().toArray();
    Arrays.sort(arrayOfObject, new Comparator()
    {
      public int compare(Object paramAnonymousObject1, Object paramAnonymousObject2)
      {
        return Long.valueOf(((Thread)paramAnonymousObject1).getId()).compareTo(Long.valueOf(((Thread)paramAnonymousObject2).getId()));
      }
    });
    paramJsonStream.beginArray();
    int i = 0;
    while (i < arrayOfObject.length)
    {
      Thread localThread = (Thread)arrayOfObject[i];
      if (localThread.getId() != l)
      {
        StackTraceElement[] arrayOfStackTraceElement = (StackTraceElement[])localMap.get(localThread);
        paramJsonStream.beginObject();
        paramJsonStream.name("id").value(localThread.getId());
        paramJsonStream.name("name").value(localThread.getName());
        paramJsonStream.name("stacktrace").value(new Stacktrace(config, arrayOfStackTraceElement));
        paramJsonStream.endObject();
      }
      i += 1;
    }
    paramJsonStream.endArray();
  }
}

/* Location:
 * Qualified Name:     com.bugsnag.android.ThreadState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */