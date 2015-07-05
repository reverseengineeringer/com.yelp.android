package com.brightcove.player.event;

import java.util.ArrayList;

public class EventLogger
{
  private static final String DEFAULT_TAG = "EventLogger";
  private int currentListenerToken = 0;
  private EventEmitter emitter;
  private ArrayList<String> excludeList = new ArrayList();
  private EventListener genericListener;
  private String tag;
  private boolean verbose;
  
  public EventLogger(EventEmitter paramEventEmitter, boolean paramBoolean)
  {
    this(paramEventEmitter, paramBoolean, "EventLogger");
  }
  
  public EventLogger(EventEmitter paramEventEmitter, boolean paramBoolean, String paramString)
  {
    emitter = paramEventEmitter;
    verbose = paramBoolean;
    tag = paramString;
    excludeList.add("bufferedUpdate");
    excludeList.add("progress");
    start();
  }
  
  public void addExclude(String paramString)
  {
    if (!excludeList.contains(paramString)) {
      excludeList.add(paramString);
    }
  }
  
  public void clearExcludes()
  {
    excludeList.clear();
  }
  
  public void removeExclude(String paramString)
  {
    excludeList.remove(paramString);
  }
  
  public void setVerbose(boolean paramBoolean)
  {
    verbose = paramBoolean;
  }
  
  public void start()
  {
    stop();
    genericListener = new EventLogger.1(this);
    currentListenerToken = emitter.on("*", genericListener);
  }
  
  public void stop()
  {
    if (currentListenerToken > 0)
    {
      emitter.off("*", currentListenerToken);
      currentListenerToken = 0;
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.event.EventLogger
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */