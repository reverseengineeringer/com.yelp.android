package com.yelp.android.appdata;

import com.yelp.android.serializable.az;

public class RemoteConfigPreferences
  implements Cloneable
{
  public static final az<RemoteConfigPreferences> a = new af();
  private String b;
  private RemoteConfigPreferences.NotificationSchedule c;
  private RemoteConfigPreferences.NotificationLocation d;
  private an e;
  private am f;
  private al g;
  private ak h;
  private ag i;
  private ah j;
  private ai k;
  private boolean l;
  private boolean m;
  private Boolean n;
  private Boolean o;
  
  public RemoteConfigPreferences.NotificationSchedule a()
  {
    return c;
  }
  
  public RemoteConfigPreferences a(RemoteConfigPreferences.NotificationLocation paramNotificationLocation)
  {
    d = paramNotificationLocation;
    return this;
  }
  
  public RemoteConfigPreferences a(RemoteConfigPreferences.NotificationSchedule paramNotificationSchedule)
  {
    c = paramNotificationSchedule;
    return this;
  }
  
  public RemoteConfigPreferences a(ak paramak)
  {
    h = paramak;
    return this;
  }
  
  public RemoteConfigPreferences a(al paramal)
  {
    g = paramal;
    return this;
  }
  
  public RemoteConfigPreferences a(am paramam)
  {
    f = paramam;
    return this;
  }
  
  public RemoteConfigPreferences a(an paraman)
  {
    e = paraman;
    return this;
  }
  
  public RemoteConfigPreferences a(Boolean paramBoolean)
  {
    o = paramBoolean;
    return this;
  }
  
  public RemoteConfigPreferences a(boolean paramBoolean)
  {
    m = paramBoolean;
    return this;
  }
  
  public void a(ag paramag)
  {
    i = paramag;
  }
  
  public void a(ah paramah)
  {
    j = paramah;
  }
  
  public void a(ai paramai)
  {
    k = paramai;
  }
  
  public RemoteConfigPreferences.NotificationLocation b()
  {
    return d;
  }
  
  public RemoteConfigPreferences b(Boolean paramBoolean)
  {
    n = paramBoolean;
    return this;
  }
  
  public RemoteConfigPreferences b(boolean paramBoolean)
  {
    l = paramBoolean;
    return this;
  }
  
  public an c()
  {
    return e;
  }
  
  public al d()
  {
    return g;
  }
  
  public Boolean e()
  {
    return n;
  }
  
  public am f()
  {
    return f;
  }
  
  public ak g()
  {
    return h;
  }
  
  public boolean h()
  {
    return l;
  }
  
  public boolean i()
  {
    return m;
  }
  
  public Boolean j()
  {
    return o;
  }
  
  public ah k()
  {
    return j;
  }
  
  public ag l()
  {
    return i;
  }
  
  public ai m()
  {
    return k;
  }
  
  public RemoteConfigPreferences n()
  {
    try
    {
      RemoteConfigPreferences localRemoteConfigPreferences = (RemoteConfigPreferences)super.clone();
      return localRemoteConfigPreferences;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new RuntimeException(localCloneNotSupportedException);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.RemoteConfigPreferences
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */