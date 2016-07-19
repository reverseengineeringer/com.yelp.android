package com.yelp.android.dk;

import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

public class d
{
  static final a a = new a() {};
  private static final d b = new d();
  private final AtomicReference<a> c = new AtomicReference();
  private final AtomicReference<b> d = new AtomicReference();
  private final AtomicReference<Object> e = new AtomicReference();
  private final AtomicReference<e> f = new AtomicReference();
  
  public static d a()
  {
    return b;
  }
  
  static Object a(Class<?> paramClass, Properties paramProperties)
  {
    Properties localProperties = (Properties)paramProperties.clone();
    String str1 = paramClass.getSimpleName();
    paramProperties = localProperties.getProperty("rxjava.plugin." + str1 + ".implementation");
    if (paramProperties == null)
    {
      Object localObject = localProperties.entrySet().iterator();
      for (;;)
      {
        if (((Iterator)localObject).hasNext())
        {
          Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
          String str2 = localEntry.getKey().toString();
          if ((str2.startsWith("rxjava.plugin.")) && (str2.endsWith(".class")) && (str1.equals(localEntry.getValue().toString())))
          {
            paramProperties = str2.substring(0, str2.length() - ".class".length()).substring("rxjava.plugin.".length());
            localObject = "rxjava.plugin." + paramProperties + ".impl";
            paramProperties = localProperties.getProperty((String)localObject);
            if (paramProperties == null) {
              throw new RuntimeException("Implementing class declaration for " + str1 + " missing: " + (String)localObject);
            }
          }
        }
      }
    }
    for (;;)
    {
      if (paramProperties != null) {
        try
        {
          paramClass = Class.forName(paramProperties).asSubclass(paramClass).newInstance();
          return paramClass;
        }
        catch (ClassCastException paramClass)
        {
          throw new RuntimeException(str1 + " implementation is not an instance of " + str1 + ": " + paramProperties);
        }
        catch (ClassNotFoundException paramClass)
        {
          throw new RuntimeException(str1 + " implementation class not found: " + paramProperties, paramClass);
        }
        catch (InstantiationException paramClass)
        {
          throw new RuntimeException(str1 + " implementation not able to be instantiated: " + paramProperties, paramClass);
        }
        catch (IllegalAccessException paramClass)
        {
          throw new RuntimeException(str1 + " implementation not able to be accessed: " + paramProperties, paramClass);
        }
      }
      return null;
    }
  }
  
  public a b()
  {
    Object localObject;
    if (c.get() == null)
    {
      localObject = a(a.class, System.getProperties());
      if (localObject != null) {
        break label46;
      }
      c.compareAndSet(null, a);
    }
    for (;;)
    {
      return (a)c.get();
      label46:
      c.compareAndSet(null, (a)localObject);
    }
  }
  
  public b c()
  {
    Object localObject;
    if (d.get() == null)
    {
      localObject = a(b.class, System.getProperties());
      if (localObject != null) {
        break label46;
      }
      d.compareAndSet(null, c.a());
    }
    for (;;)
    {
      return (b)d.get();
      label46:
      d.compareAndSet(null, (b)localObject);
    }
  }
  
  public e d()
  {
    Object localObject;
    if (f.get() == null)
    {
      localObject = a(e.class, System.getProperties());
      if (localObject != null) {
        break label46;
      }
      f.compareAndSet(null, e.d());
    }
    for (;;)
    {
      return (e)f.get();
      label46:
      f.compareAndSet(null, (e)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.dk.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */