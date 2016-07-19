package com.bugsnag.android;

import java.io.File;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;

class Notification
  implements JsonStream.Streamable
{
  private final Configuration config;
  private final Collection<File> errorFiles;
  private final Collection<Error> errors;
  
  Notification(Configuration paramConfiguration)
  {
    config = paramConfiguration;
    errors = new LinkedList();
    errorFiles = new LinkedList();
  }
  
  void addError(Error paramError)
  {
    errors.add(paramError);
  }
  
  void addError(File paramFile)
  {
    errorFiles.add(paramFile);
  }
  
  int deliver()
    throws HttpClient.NetworkException, HttpClient.BadResponseException
  {
    HttpClient.post(config.getNotifyEndpoint(), this);
    return errors.size() + errorFiles.size();
  }
  
  public void toStream(JsonStream paramJsonStream)
    throws IOException
  {
    paramJsonStream.beginObject();
    paramJsonStream.name("apiKey").value(config.apiKey);
    paramJsonStream.name("notifier").value(Notifier.getInstance());
    paramJsonStream.name("events").beginArray();
    Iterator localIterator = errors.iterator();
    while (localIterator.hasNext()) {
      paramJsonStream.value((Error)localIterator.next());
    }
    localIterator = errorFiles.iterator();
    while (localIterator.hasNext()) {
      paramJsonStream.value((File)localIterator.next());
    }
    paramJsonStream.endArray();
    paramJsonStream.endObject();
  }
}

/* Location:
 * Qualified Name:     com.bugsnag.android.Notification
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */