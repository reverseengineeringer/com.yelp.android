package com.adjust.sdk;

import android.net.Uri;
import android.net.Uri.Builder;
import java.net.URL;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONObject;

public class AttributionHandler
  implements IAttributionHandler
{
  private static final String ATTRIBUTION_TIMER_NAME = "Attribution timer";
  private IActivityHandler activityHandler;
  private ActivityPackage attributionPackage;
  private boolean hasListener;
  public URL lastUrlUsed;
  private ILogger logger = AdjustFactory.getLogger();
  private boolean paused;
  private ScheduledExecutorService scheduler = Executors.newSingleThreadScheduledExecutor();
  private TimerOnce timer;
  
  public AttributionHandler(IActivityHandler paramIActivityHandler, ActivityPackage paramActivityPackage, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (scheduler != null) {
      timer = new TimerOnce(scheduler, new Runnable()
      {
        public void run()
        {
          AttributionHandler.this.getAttributionInternal();
        }
      }, "Attribution timer");
    }
    for (;;)
    {
      init(paramIActivityHandler, paramActivityPackage, paramBoolean1, paramBoolean2);
      return;
      logger.error("Timer not initialized, attribution handler is disabled", new Object[0]);
    }
  }
  
  private Uri buildUri(String paramString, Map<String, String> paramMap)
  {
    Uri.Builder localBuilder = new Uri.Builder();
    localBuilder.scheme("https");
    localBuilder.authority("app.adjust.com");
    localBuilder.appendPath(paramString);
    paramString = paramMap.entrySet().iterator();
    while (paramString.hasNext())
    {
      paramMap = (Map.Entry)paramString.next();
      localBuilder.appendQueryParameter((String)paramMap.getKey(), (String)paramMap.getValue());
    }
    localBuilder.appendQueryParameter("sent_at", Util.dateFormat(System.currentTimeMillis()));
    return localBuilder.build();
  }
  
  private void checkAttributionInternal(ResponseData paramResponseData)
  {
    if (jsonResponse == null) {
      return;
    }
    long l = jsonResponse.optLong("ask_in", -1L);
    if (l >= 0L)
    {
      activityHandler.setAskingAttribution(true);
      getAttribution(l);
      return;
    }
    activityHandler.setAskingAttribution(false);
    attribution = AdjustAttribution.fromJson(jsonResponse.optJSONObject("attribution"));
  }
  
  private void checkAttributionResponse(final AttributionResponseData paramAttributionResponseData)
  {
    scheduler.submit(new Runnable()
    {
      public void run()
      {
        AttributionHandler.this.checkAttributionResponseInternal(paramAttributionResponseData);
      }
    });
  }
  
  private void checkAttributionResponseInternal(AttributionResponseData paramAttributionResponseData)
  {
    checkAttributionInternal(paramAttributionResponseData);
    activityHandler.launchAttributionResponseTasks(paramAttributionResponseData);
  }
  
  private void checkSessionResponseInternal(SessionResponseData paramSessionResponseData)
  {
    checkAttributionInternal(paramSessionResponseData);
    activityHandler.launchSessionResponseTasks(paramSessionResponseData);
  }
  
  private void getAttribution(long paramLong)
  {
    if (timer.getFireIn() > paramLong) {
      return;
    }
    if (paramLong != 0L)
    {
      double d = paramLong / 1000.0D;
      String str = Util.SecondsDisplayFormat.format(d);
      logger.debug("Waiting to query attribution in %s seconds", new Object[] { str });
    }
    timer.startIn(paramLong);
  }
  
  private void getAttributionInternal()
  {
    if (!hasListener) {}
    for (;;)
    {
      return;
      if (paused)
      {
        logger.debug("Attribution handler is paused", new Object[0]);
        return;
      }
      logger.verbose("%s", new Object[] { attributionPackage.getExtendedString() });
      try
      {
        AdjustFactory.URLGetConnection localURLGetConnection = Util.createGETHttpsURLConnection(buildUri(attributionPackage.getPath(), attributionPackage.getParameters()).toString(), attributionPackage.getClientSdk());
        ResponseData localResponseData = Util.readHttpResponse(httpsURLConnection, attributionPackage);
        lastUrlUsed = url;
        if ((localResponseData instanceof AttributionResponseData))
        {
          checkAttributionResponse((AttributionResponseData)localResponseData);
          return;
        }
      }
      catch (Exception localException)
      {
        logger.error("Failed to get attribution (%s)", new Object[] { localException.getMessage() });
      }
    }
  }
  
  public void checkSessionResponse(final SessionResponseData paramSessionResponseData)
  {
    scheduler.submit(new Runnable()
    {
      public void run()
      {
        AttributionHandler.this.checkSessionResponseInternal(paramSessionResponseData);
      }
    });
  }
  
  public void getAttribution()
  {
    getAttribution(0L);
  }
  
  public void init(IActivityHandler paramIActivityHandler, ActivityPackage paramActivityPackage, boolean paramBoolean1, boolean paramBoolean2)
  {
    activityHandler = paramIActivityHandler;
    attributionPackage = paramActivityPackage;
    if (!paramBoolean1) {}
    for (paramBoolean1 = true;; paramBoolean1 = false)
    {
      paused = paramBoolean1;
      hasListener = paramBoolean2;
      return;
    }
  }
  
  public void pauseSending()
  {
    paused = true;
  }
  
  public void resumeSending()
  {
    paused = false;
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.AttributionHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */