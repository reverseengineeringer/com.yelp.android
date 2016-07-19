package com.brightcove.player.management;

import android.util.Log;
import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.ListensFor;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Properties;

@Emits(events={})
@ListensFor(events={"registerPlugin"})
public class BrightcovePluginManager
  extends AbstractComponent
{
  private static final String CRASHLYTICS_LOG = "log";
  private static final String TAG = BrightcovePluginManager.class.getSimpleName();
  private static String commitIdentifier = "";
  private static String releaseIdentifier = "";
  private Class<?> crashlyticsClass;
  private Method crashlyticsLogMethod;
  private boolean isCrashlyticsAvailable;
  OnRegisterPluginListener onRegisterPluginListener;
  private List<String> pluginsInUse;
  
  public BrightcovePluginManager(EventEmitter paramEventEmitter)
  {
    super(paramEventEmitter, BrightcovePluginManager.class);
    loadPropertiesInfo();
    Log.d(TAG, "BrightcovePluginManager: git commit SHA: + " + commitIdentifier + ", release: " + releaseIdentifier);
    pluginsInUse = new ArrayList();
    initializeListeners();
    checkForCrashlytics();
    generateCrashlyticsMethods();
    crashlyticsLog("Git Commit SHA: " + commitIdentifier);
    crashlyticsLog("Release Number: " + releaseIdentifier);
  }
  
  protected void checkForCrashlytics()
  {
    try
    {
      crashlyticsClass = Class.forName("com.yelp.android.au.a");
      isCrashlyticsAvailable = true;
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      Log.i(TAG, "Crashlytics was not found. Logging to console only.");
      isCrashlyticsAvailable = false;
    }
  }
  
  public void crashlyticsLog(String paramString)
  {
    Log.d(TAG, "crashlyticsLog: " + paramString);
    if ((isCrashlyticsAvailable) && (crashlyticsLogMethod != null)) {}
    try
    {
      crashlyticsLogMethod.invoke(null, new Object[] { paramString });
      return;
    }
    catch (IllegalArgumentException paramString)
    {
      Log.i(TAG, "crashlyticsLog: Illegal argument exception occurred.");
      return;
    }
    catch (IllegalAccessException paramString)
    {
      Log.i(TAG, "crashlyticsLog: Illegal access exception occurred.");
      return;
    }
    catch (InvocationTargetException paramString)
    {
      Log.i(TAG, "crashlyticsLog: Invocation target exception occurred.");
    }
  }
  
  protected void generateCrashlyticsMethods()
  {
    if (isCrashlyticsAvailable) {}
    try
    {
      crashlyticsLogMethod = crashlyticsClass.getMethod("log", new Class[] { String.class });
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      Log.i(TAG, "Failed to wrap crashlytics methods.");
    }
  }
  
  public String getCommitIdentifier()
  {
    return commitIdentifier;
  }
  
  public List<String> getPluginsInUse()
  {
    return pluginsInUse;
  }
  
  public String getReleaseIdentifier()
  {
    return releaseIdentifier;
  }
  
  protected void initializeListeners()
  {
    onRegisterPluginListener = new OnRegisterPluginListener();
    addListener("registerPlugin", onRegisterPluginListener);
  }
  
  protected void loadPropertiesInfo()
  {
    Properties localProperties = new Properties();
    Object localObject5 = null;
    Object localObject1 = null;
    Object localObject3 = null;
    for (;;)
    {
      try
      {
        localInputStream = BrightcovePluginManager.class.getClassLoader().getResourceAsStream("build-version.properties");
        localObject3 = localInputStream;
        localObject5 = localInputStream;
        localObject1 = localInputStream;
        localProperties.load(localInputStream);
        localObject3 = localInputStream;
        localObject5 = localInputStream;
        localObject1 = localInputStream;
        commitIdentifier = localProperties.getProperty("commitSHA");
        localObject3 = localInputStream;
        localObject5 = localInputStream;
        localObject1 = localInputStream;
        releaseIdentifier = localProperties.getProperty("buildVersion");
      }
      catch (IOException localIOException6)
      {
        InputStream localInputStream;
        Object localObject2 = localObject3;
        Log.e(TAG, "Failed to load build version properties. Commit and Release numbers will be empty.", localIOException6);
        if (localObject3 == null) {
          continue;
        }
        try
        {
          ((InputStream)localObject3).close();
          return;
        }
        catch (IOException localIOException2)
        {
          Log.e(TAG, "Failed to close stream.", localIOException2);
          return;
        }
      }
      catch (NullPointerException localNullPointerException)
      {
        IOException localIOException3 = localIOException6;
        Log.e(TAG, "Failed to load build-version.properties", localNullPointerException);
        if (localIOException6 == null) {
          continue;
        }
        try
        {
          localIOException6.close();
          return;
        }
        catch (IOException localIOException4)
        {
          Log.e(TAG, "Failed to close stream.", localIOException4);
          return;
        }
      }
      finally
      {
        if (localIOException4 == null) {
          break label181;
        }
      }
      try
      {
        localInputStream.close();
        return;
      }
      catch (IOException localIOException1)
      {
        Log.e(TAG, "Failed to close stream.", localIOException1);
        return;
      }
    }
    try
    {
      localIOException4.close();
      label181:
      throw ((Throwable)localObject4);
    }
    catch (IOException localIOException5)
    {
      for (;;)
      {
        Log.e(TAG, "Failed to close stream.", localIOException5);
      }
    }
  }
  
  protected class OnRegisterPluginListener
    implements EventListener
  {
    protected OnRegisterPluginListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      if (properties.containsKey("pluginName"))
      {
        paramEvent = (String)properties.get("pluginName");
        Log.v(BrightcovePluginManager.TAG, "OnRegisterPluginListener: plugin: " + paramEvent);
        if (!pluginsInUse.contains(paramEvent)) {
          pluginsInUse.add(paramEvent);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.management.BrightcovePluginManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */