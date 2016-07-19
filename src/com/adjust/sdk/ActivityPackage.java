package com.adjust.sdk;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamField;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

public class ActivityPackage
  implements Serializable
{
  private static final ObjectStreamField[] serialPersistentFields = { new ObjectStreamField("path", String.class), new ObjectStreamField("clientSdk", String.class), new ObjectStreamField("parameters", Map.class), new ObjectStreamField("activityKind", ActivityKind.class), new ObjectStreamField("suffix", String.class) };
  private static final long serialVersionUID = -35935556512024097L;
  private ActivityKind activityKind = ActivityKind.UNKNOWN;
  private String clientSdk;
  private transient int hashCode;
  private Map<String, String> parameters;
  private String path;
  private int retries;
  private String suffix;
  
  public ActivityPackage(ActivityKind paramActivityKind)
  {
    activityKind = paramActivityKind;
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
    throws ClassNotFoundException, IOException
  {
    paramObjectInputStream = paramObjectInputStream.readFields();
    path = Util.readStringField(paramObjectInputStream, "path", null);
    clientSdk = Util.readStringField(paramObjectInputStream, "clientSdk", null);
    parameters = ((Map)Util.readObjectField(paramObjectInputStream, "parameters", null));
    activityKind = ((ActivityKind)Util.readObjectField(paramObjectInputStream, "activityKind", ActivityKind.UNKNOWN));
    suffix = Util.readStringField(paramObjectInputStream, "suffix", null);
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
      paramObject = (ActivityPackage)paramObject;
      if (!Util.equalString(path, path)) {
        return false;
      }
      if (!Util.equalString(clientSdk, clientSdk)) {
        return false;
      }
      if (!Util.equalsMap(parameters, parameters)) {
        return false;
      }
      if (!Util.equalEnum(activityKind, activityKind)) {
        return false;
      }
    } while (Util.equalString(suffix, suffix));
    return false;
  }
  
  public ActivityKind getActivityKind()
  {
    return activityKind;
  }
  
  public String getClientSdk()
  {
    return clientSdk;
  }
  
  public String getExtendedString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(String.format(Locale.US, "Path:      %s\n", new Object[] { path }));
    localStringBuilder.append(String.format(Locale.US, "ClientSdk: %s\n", new Object[] { clientSdk }));
    if (parameters != null)
    {
      localStringBuilder.append("Parameters:");
      Iterator localIterator = new TreeMap(parameters).entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localStringBuilder.append(String.format(Locale.US, "\n\t%-16s %s", new Object[] { localEntry.getKey(), localEntry.getValue() }));
      }
    }
    return localStringBuilder.toString();
  }
  
  protected String getFailureMessage()
  {
    return String.format(Locale.US, "Failed to track %s%s", new Object[] { activityKind.toString(), suffix });
  }
  
  public Map<String, String> getParameters()
  {
    return parameters;
  }
  
  public String getPath()
  {
    return path;
  }
  
  public int getRetries()
  {
    return retries;
  }
  
  public String getSuffix()
  {
    return suffix;
  }
  
  public int hashCode()
  {
    if (hashCode == 0)
    {
      hashCode = 17;
      hashCode = (hashCode * 37 + Util.hashString(path));
      hashCode = (hashCode * 37 + Util.hashString(clientSdk));
      hashCode = (hashCode * 37 + Util.hashMap(parameters));
      hashCode = (hashCode * 37 + Util.hashEnum(activityKind));
      hashCode = (hashCode * 37 + Util.hashString(suffix));
    }
    return hashCode;
  }
  
  public int increaseRetries()
  {
    retries += 1;
    return retries;
  }
  
  public void setClientSdk(String paramString)
  {
    clientSdk = paramString;
  }
  
  public void setParameters(Map<String, String> paramMap)
  {
    parameters = paramMap;
  }
  
  public void setPath(String paramString)
  {
    path = paramString;
  }
  
  public void setSuffix(String paramString)
  {
    suffix = paramString;
  }
  
  public String toString()
  {
    return String.format(Locale.US, "%s%s", new Object[] { activityKind.toString(), suffix });
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.ActivityPackage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */