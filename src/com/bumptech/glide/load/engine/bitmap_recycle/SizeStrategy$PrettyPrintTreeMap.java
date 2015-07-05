package com.bumptech.glide.load.engine.bitmap_recycle;

import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

class SizeStrategy$PrettyPrintTreeMap<K, V>
  extends TreeMap<K, V>
{
  public String toString()
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("( ");
    Iterator localIterator = entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      ((StringBuilder)localObject).append('{').append(localEntry.getKey()).append(':').append(localEntry.getValue()).append("}, ");
    }
    if (!isEmpty()) {}
    for (localObject = ((StringBuilder)localObject).substring(0, ((StringBuilder)localObject).length() - 2);; localObject = ((StringBuilder)localObject).toString()) {
      return (String)localObject + " )";
    }
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.bitmap_recycle.SizeStrategy.PrettyPrintTreeMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */