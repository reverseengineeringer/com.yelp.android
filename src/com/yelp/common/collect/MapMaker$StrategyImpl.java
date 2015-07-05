package com.yelp.common.collect;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.Timer;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.TimeUnit;

class MapMaker$StrategyImpl<K, V>
  implements b<K, V, f<K, V>>, Serializable
{
  private static final long serialVersionUID = 0L;
  final long expirationNanos;
  c<K, V, f<K, V>> internals;
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
  
  MapMaker$StrategyImpl(MapMaker paramMapMaker, com.yelp.common.base.g<? super K, ? extends V> paramg)
  {
    keyStrength = MapMaker.access$100(paramMapMaker);
    valueStrength = MapMaker.access$200(paramMapMaker);
    expirationNanos = MapMaker.access$300(paramMapMaker);
    map = MapMaker.access$400(paramMapMaker).buildComputingMap(this, paramg);
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    try
    {
      MapMaker.StrategyImpl.Fields.keyStrength.set(this, paramObjectInputStream.readObject());
      MapMaker.StrategyImpl.Fields.valueStrength.set(this, paramObjectInputStream.readObject());
      MapMaker.StrategyImpl.Fields.expirationNanos.set(this, Long.valueOf(paramObjectInputStream.readLong()));
      MapMaker.StrategyImpl.Fields.internals.set(this, paramObjectInputStream.readObject());
      MapMaker.StrategyImpl.Fields.map.set(this, paramObjectInputStream.readObject());
      return;
    }
    catch (IllegalAccessException paramObjectInputStream)
    {
      throw new AssertionError(paramObjectInputStream);
    }
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.writeObject(keyStrength);
    paramObjectOutputStream.writeObject(valueStrength);
    paramObjectOutputStream.writeLong(expirationNanos);
    paramObjectOutputStream.writeObject(internals);
    paramObjectOutputStream.writeObject(map);
  }
  
  public V compute(K paramK, f<K, V> paramf, com.yelp.common.base.g<? super K, ? extends V> paramg)
  {
    Object localObject;
    try
    {
      localObject = paramg.a(paramK);
      if (localObject == null)
      {
        paramK = paramg + " returned null for key " + paramK + ".";
        setValueReference(paramf, new MapMaker.NullOutputExceptionReference(paramK));
        throw new NullOutputException(paramK);
      }
    }
    catch (ComputationException paramK)
    {
      setValueReference(paramf, new MapMaker.ComputationExceptionReference(paramK.getCause()));
      throw paramK;
    }
    catch (Throwable paramK)
    {
      setValueReference(paramf, new MapMaker.ComputationExceptionReference(paramK));
      throw new ComputationException(paramK);
    }
    setValue(paramf, localObject);
    return (V)localObject;
  }
  
  public f<K, V> copyEntry(K paramK, f<K, V> paramf1, f<K, V> paramf2)
  {
    g localg = paramf1.getValueReference();
    if (localg == MapMaker.access$500())
    {
      paramK = newEntry(paramK, paramf1.getHash(), paramf2);
      paramK.setValueReference(new MapMaker.StrategyImpl.FutureValueReference(this, paramf1, paramK));
      return paramK;
    }
    paramK = newEntry(paramK, paramf1.getHash(), paramf2);
    paramK.setValueReference(localg.copyFor(paramK));
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
  
  public int getHash(f<K, V> paramf)
  {
    return paramf.getHash();
  }
  
  public K getKey(f<K, V> paramf)
  {
    return (K)paramf.getKey();
  }
  
  public f<K, V> getNext(f<K, V> paramf)
  {
    return paramf.getNext();
  }
  
  public V getValue(f<K, V> paramf)
  {
    return (V)paramf.getValueReference().get();
  }
  
  public int hashKey(Object paramObject)
  {
    return keyStrength.hash(paramObject);
  }
  
  public f<K, V> newEntry(K paramK, int paramInt, f<K, V> paramf)
  {
    return keyStrength.newEntry(internals, paramK, paramInt, paramf);
  }
  
  void scheduleRemoval(K paramK, V paramV)
  {
    paramK = new WeakReference(paramK);
    paramV = new WeakReference(paramV);
    ExpirationTimer.instance.schedule(new MapMaker.StrategyImpl.1(this, paramK, paramV), TimeUnit.NANOSECONDS.toMillis(expirationNanos));
  }
  
  public void setInternals(c<K, V, f<K, V>> paramc)
  {
    internals = paramc;
  }
  
  public void setValue(f<K, V> paramf, V paramV)
  {
    setValueReference(paramf, valueStrength.referenceValue(paramf, paramV));
    if (expirationNanos > 0L) {
      scheduleRemoval(paramf.getKey(), paramV);
    }
  }
  
  void setValueReference(f<K, V> paramf, g<K, V> paramg)
  {
    if (paramf.getValueReference() == MapMaker.access$500()) {}
    for (int i = 1;; i = 0)
    {
      paramf.setValueReference(paramg);
      if (i != 0) {
        try
        {
          paramf.notifyAll();
          return;
        }
        finally {}
      }
      return;
    }
  }
  
  public V waitForValue(f<K, V> paramf)
  {
    g localg2 = paramf.getValueReference();
    g localg1 = localg2;
    if (localg2 == MapMaker.access$500()) {
      try
      {
        for (;;)
        {
          localg1 = paramf.getValueReference();
          if (localg1 != MapMaker.access$500()) {
            break;
          }
          paramf.wait();
        }
      }
      finally {}
    }
    return (V)((g)localObject).waitForValue();
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.MapMaker.StrategyImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */