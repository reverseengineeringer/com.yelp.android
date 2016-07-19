package com.adjust.sdk;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamField;
import java.io.Serializable;
import java.util.Calendar;
import java.util.Locale;

public class ActivityState
  implements Serializable, Cloneable
{
  private static final ObjectStreamField[] serialPersistentFields = { new ObjectStreamField("uuid", String.class), new ObjectStreamField("enabled", Boolean.TYPE), new ObjectStreamField("askingAttribution", Boolean.TYPE), new ObjectStreamField("eventCount", Integer.TYPE), new ObjectStreamField("sessionCount", Integer.TYPE), new ObjectStreamField("subsessionCount", Integer.TYPE), new ObjectStreamField("sessionLength", Long.TYPE), new ObjectStreamField("timeSpent", Long.TYPE), new ObjectStreamField("lastActivity", Long.TYPE), new ObjectStreamField("lastInterval", Long.TYPE) };
  private static final long serialVersionUID = 9039439291143138148L;
  protected boolean askingAttribution = false;
  protected boolean enabled = true;
  protected int eventCount = 0;
  protected long lastActivity = -1L;
  protected long lastInterval = -1L;
  private transient ILogger logger = AdjustFactory.getLogger();
  protected int sessionCount = 0;
  protected long sessionLength = -1L;
  protected int subsessionCount = -1;
  protected long timeSpent = -1L;
  protected String uuid = Util.createUuid();
  
  private void readObject(ObjectInputStream paramObjectInputStream)
    throws IOException, ClassNotFoundException
  {
    paramObjectInputStream = paramObjectInputStream.readFields();
    eventCount = Util.readIntField(paramObjectInputStream, "eventCount", 0);
    sessionCount = Util.readIntField(paramObjectInputStream, "sessionCount", 0);
    subsessionCount = Util.readIntField(paramObjectInputStream, "subsessionCount", -1);
    sessionLength = Util.readLongField(paramObjectInputStream, "sessionLength", -1L);
    timeSpent = Util.readLongField(paramObjectInputStream, "timeSpent", -1L);
    lastActivity = Util.readLongField(paramObjectInputStream, "lastActivity", -1L);
    lastInterval = Util.readLongField(paramObjectInputStream, "lastInterval", -1L);
    uuid = Util.readStringField(paramObjectInputStream, "uuid", null);
    enabled = Util.readBooleanField(paramObjectInputStream, "enabled", true);
    askingAttribution = Util.readBooleanField(paramObjectInputStream, "askingAttribution", false);
    if (uuid == null) {
      uuid = Util.createUuid();
    }
  }
  
  private static String stamp(long paramLong)
  {
    Calendar.getInstance().setTimeInMillis(paramLong);
    return String.format(Locale.US, "%02d:%02d:%02d", new Object[] { Integer.valueOf(11), Integer.valueOf(12), Integer.valueOf(13) });
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
    throws IOException
  {
    paramObjectOutputStream.defaultWriteObject();
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (getClass() != paramObject.getClass()) {
        return false;
      }
      paramObject = (ActivityState)paramObject;
      if (!Util.equalString(uuid, uuid)) {
        return false;
      }
      if (!Util.equalBoolean(Boolean.valueOf(enabled), Boolean.valueOf(enabled))) {
        return false;
      }
      if (!Util.equalBoolean(Boolean.valueOf(askingAttribution), Boolean.valueOf(askingAttribution))) {
        return false;
      }
      if (!Util.equalInt(Integer.valueOf(eventCount), Integer.valueOf(eventCount))) {
        return false;
      }
      if (!Util.equalInt(Integer.valueOf(sessionCount), Integer.valueOf(sessionCount))) {
        return false;
      }
      if (!Util.equalInt(Integer.valueOf(subsessionCount), Integer.valueOf(subsessionCount))) {
        return false;
      }
      if (!Util.equalLong(Long.valueOf(sessionLength), Long.valueOf(sessionLength))) {
        return false;
      }
      if (!Util.equalLong(Long.valueOf(timeSpent), Long.valueOf(timeSpent))) {
        return false;
      }
    } while (Util.equalLong(Long.valueOf(lastInterval), Long.valueOf(lastInterval)));
    return false;
  }
  
  public int hashCode()
  {
    return ((((((((Util.hashString(uuid) + 629) * 37 + Util.hashBoolean(Boolean.valueOf(enabled))) * 37 + Util.hashBoolean(Boolean.valueOf(askingAttribution))) * 37 + eventCount) * 37 + sessionCount) * 37 + subsessionCount) * 37 + Util.hashLong(Long.valueOf(sessionLength))) * 37 + Util.hashLong(Long.valueOf(timeSpent))) * 37 + Util.hashLong(Long.valueOf(lastInterval));
  }
  
  protected void resetSessionAttributes(long paramLong)
  {
    subsessionCount = 1;
    sessionLength = 0L;
    timeSpent = 0L;
    lastActivity = paramLong;
    lastInterval = -1L;
  }
  
  public ActivityState shallowCopy()
  {
    try
    {
      ActivityState localActivityState = (ActivityState)super.clone();
      return localActivityState;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException) {}
    return null;
  }
  
  public String toString()
  {
    return String.format(Locale.US, "ec:%d sc:%d ssc:%d sl:%.1f ts:%.1f la:%s uuid:%s", new Object[] { Integer.valueOf(eventCount), Integer.valueOf(sessionCount), Integer.valueOf(subsessionCount), Double.valueOf(sessionLength / 1000.0D), Double.valueOf(timeSpent / 1000.0D), stamp(lastActivity), uuid });
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.ActivityState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */