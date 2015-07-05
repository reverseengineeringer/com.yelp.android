package com.comscore.utils;

import com.yelp.android.al.b;
import java.util.concurrent.ConcurrentLinkedQueue;

@Deprecated
public class DispatchQueue
  extends ConcurrentLinkedQueue<Runnable>
{
  public static final int LIVE_TRANSMISSION_MODE = 0;
  public static final int MEASUREMENT_LABEL_ORDER = 3;
  public static final int OFFLINE_TRANSMISSION_MODE = 1;
  public static final int SECURE_MODE = 2;
  private com.comscore.analytics.a b;
  
  public DispatchQueue(com.comscore.analytics.a parama)
  {
    b = parama;
  }
  
  @Deprecated
  public void enqueue(b paramb)
  {
    offer(paramb);
  }
  
  @Deprecated
  public void enqueueSettingChange(int paramInt, Object paramObject)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      b.a((TransmissionMode)paramObject, true);
      return;
    case 1: 
      b.b((TransmissionMode)paramObject, true);
      return;
    case 2: 
      b.a(((Boolean)paramObject).booleanValue(), true);
      return;
    }
    b.a((String[])paramObject, true);
  }
  
  @Deprecated
  public boolean offer(b paramb)
  {
    c.a(this, "offer(): " + paramb.a(b.ag()));
    return b.t().a(paramb, true);
  }
  
  @Deprecated
  public boolean offer(Runnable paramRunnable)
  {
    return b.s().a(paramRunnable, true);
  }
  
  @Deprecated
  public void processAggregateData(b paramb)
  {
    b.t().c(paramb);
  }
  
  @Deprecated
  public void processEventCounter(b paramb)
  {
    b.t().b(paramb);
  }
  
  @Deprecated
  public void stop()
  {
    b.s().c();
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.DispatchQueue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */