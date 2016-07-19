package com.yelp.common.collect;

import com.yelp.common.base.d;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.TimeUnit;

class MapMaker$StrategyImpl<K, V>
  implements CustomConcurrentHashMap.a<K, V, MapMaker.a<K, V>>, Serializable
{
  private static final long serialVersionUID = 0L;
  final long expirationNanos;
  CustomConcurrentHashMap.b<K, V, MapMaker.a<K, V>> internals;
  final MapMaker.Strength keyStrength;
  final ConcurrentMap<K, V> map;
  final MapMaker.Strength valueStrength;
  
  MapMaker$StrategyImpl(MapMaker paramMapMaker)
  {
    keyStrength = MapMaker.access$100(paramMapMaker);
    valueStrength = MapMaker.access$200(paramMapMaker);
    expirationNanos = MapMaker.access$300(paramMapMaker);
    map = MapMaker.access$400(paramMapMaker).buildMap(this);
  }
  
  MapMaker$StrategyImpl(MapMaker paramMapMaker, d<? super K, ? extends V> paramd)
  {
    keyStrength = MapMaker.access$100(paramMapMaker);
    valueStrength = MapMaker.access$200(paramMapMaker);
    expirationNanos = MapMaker.access$300(paramMapMaker);
    map = MapMaker.access$400(paramMapMaker).buildComputingMap(this, paramd);
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
    throws IOException, ClassNotFoundException
  {
    try
    {
      Fields.keyStrength.set(this, paramObjectInputStream.readObject());
      Fields.valueStrength.set(this, paramObjectInputStream.readObject());
      Fields.expirationNanos.set(this, Long.valueOf(paramObjectInputStream.readLong()));
      Fields.internals.set(this, paramObjectInputStream.readObject());
      Fields.map.set(this, paramObjectInputStream.readObject());
      return;
    }
    catch (IllegalAccessException paramObjectInputStream)
    {
      throw new AssertionError(paramObjectInputStream);
    }
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
    throws IOException
  {
    paramObjectOutputStream.writeObject(keyStrength);
    paramObjectOutputStream.writeObject(valueStrength);
    paramObjectOutputStream.writeLong(expirationNanos);
    paramObjectOutputStream.writeObject(internals);
    paramObjectOutputStream.writeObject(map);
  }
  
  public V compute(K paramK, MapMaker.a<K, V> parama, d<? super K, ? extends V> paramd)
  {
    Object localObject;
    try
    {
      localObject = paramd.a(paramK);
      if (localObject == null)
      {
        paramK = paramd + " returned null for key " + paramK + ".";
        setValueReference(parama, new MapMaker.NullOutputExceptionReference(paramK));
        throw new NullOutputException(paramK);
      }
    }
    catch (ComputationException paramK)
    {
      setValueReference(parama, new MapMaker.ComputationExceptionReference(paramK.getCause()));
      throw paramK;
    }
    catch (Throwable paramK)
    {
      setValueReference(parama, new MapMaker.ComputationExceptionReference(paramK));
      throw new ComputationException(paramK);
    }
    setValue(parama, localObject);
    return (V)localObject;
  }
  
  public MapMaker.a<K, V> copyEntry(K paramK, MapMaker.a<K, V> parama1, MapMaker.a<K, V> parama2)
  {
    MapMaker.b localb = parama1.getValueReference();
    if (localb == MapMaker.access$500())
    {
      paramK = newEntry(paramK, parama1.getHash(), parama2);
      paramK.setValueReference(new FutureValueReference(parama1, paramK));
      return paramK;
    }
    paramK = newEntry(paramK, parama1.getHash(), parama2);
    paramK.setValueReference(localb.copyFor(paramK));
    return paramK;
  }
  
  public boolean equalKeys(K paramK, Object paramObject)
  {
    return keyStrength.equal(paramK, paramObject);
  }
  
  public boolean equalValues(V paramV, Object paramObject)
  {
    return valueStrength.equal(paramV, paramObject);
  }
  
  public int getHash(MapMaker.a<K, V> parama)
  {
    return parama.getHash();
  }
  
  public K getKey(MapMaker.a<K, V> parama)
  {
    return (K)parama.getKey();
  }
  
  public MapMaker.a<K, V> getNext(MapMaker.a<K, V> parama)
  {
    return parama.getNext();
  }
  
  public V getValue(MapMaker.a<K, V> parama)
  {
    return (V)parama.getValueReference().get();
  }
  
  public int hashKey(Object paramObject)
  {
    return keyStrength.hash(paramObject);
  }
  
  public MapMaker.a<K, V> newEntry(K paramK, int paramInt, MapMaker.a<K, V> parama)
  {
    return keyStrength.newEntry(internals, paramK, paramInt, parama);
  }
  
  void scheduleRemoval(final K paramK, final V paramV)
  {
    paramK = new WeakReference(paramK);
    paramV = new WeakReference(paramV);
    ExpirationTimer.instance.schedule(new TimerTask()
    {
      public void run()
      {
        Object localObject = paramK.get();
        if (localObject != null) {
          map.remove(localObject, paramV.get());
        }
      }
    }, TimeUnit.NANOSECONDS.toMillis(expirationNanos));
  }
  
  public void setInternals(CustomConcurrentHashMap.b<K, V, MapMaker.a<K, V>> paramb)
  {
    internals = paramb;
  }
  
  public void setValue(MapMaker.a<K, V> parama, V paramV)
  {
    setValueReference(parama, valueStrength.referenceValue(parama, paramV));
    if (expirationNanos > 0L) {
      scheduleRemoval(parama.getKey(), paramV);
    }
  }
  
  void setValueReference(MapMaker.a<K, V> parama, MapMaker.b<K, V> paramb)
  {
    if (parama.getValueReference() == MapMaker.access$500()) {}
    for (int i = 1;; i = 0)
    {
      parama.setValueReference(paramb);
      if (i != 0) {
        try
        {
          parama.notifyAll();
          return;
        }
        finally {}
      }
      return;
    }
  }
  
  public V waitForValue(MapMaker.a<K, V> parama)
    throws InterruptedException
  {
    MapMaker.b localb2 = parama.getValueReference();
    MapMaker.b localb1 = localb2;
    if (localb2 == MapMaker.access$500()) {
      try
      {
        for (;;)
        {
          localb1 = parama.getValueReference();
          if (localb1 != MapMaker.access$500()) {
            break;
          }
          parama.wait();
        }
      }
      finally {}
    }
    return (V)((MapMaker.b)localObject).waitForValue();
  }
  
  private static class Fields
  {
    static final Field expirationNanos = findField("expirationNanos");
    static final Field internals = findField("internals");
    static final Field keyStrength = findField("keyStrength");
    static final Field map = findField("map");
    static final Field valueStrength = findField("valueStrength");
    
    static Field findField(String paramString)
    {
      try
      {
        paramString = MapMaker.StrategyImpl.class.getDeclaredField(paramString);
        paramString.setAccessible(true);
        return paramString;
      }
      catch (NoSuchFieldException paramString)
      {
        throw new AssertionError(paramString);
      }
    }
  }
  
  private class FutureValueReference
    implements MapMaker.b<K, V>
  {
    final MapMaker.a<K, V> newEntry;
    final MapMaker.a<K, V> original;
    
    FutureValueReference(MapMaker.a<K, V> parama)
    {
      original = parama;
      MapMaker.a locala;
      newEntry = locala;
    }
    
    public MapMaker.b<K, V> copyFor(MapMaker.a<K, V> parama)
    {
      return new FutureValueReference(MapMaker.StrategyImpl.this, original, parama);
    }
    
    public V get()
    {
      try
      {
        Object localObject1 = original.getValueReference().get();
        return (V)localObject1;
      }
      finally
      {
        removeEntry();
      }
    }
    
    void removeEntry()
    {
      internals.removeEntry(newEntry);
    }
    
    public V waitForValue()
      throws InterruptedException
    {
      try
      {
        Object localObject1 = waitForValue(original);
        return (V)localObject1;
      }
      finally
      {
        removeEntry();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.MapMaker.StrategyImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */