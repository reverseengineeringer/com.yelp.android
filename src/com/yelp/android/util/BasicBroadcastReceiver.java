package com.yelp.android.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

public abstract class BasicBroadcastReceiver
  extends BroadcastReceiver
{
  private final Collection<IntentFilter> a;
  private boolean b;
  
  public BasicBroadcastReceiver(IntentFilter... paramVarArgs)
  {
    a = Arrays.asList(paramVarArgs);
  }
  
  public void a(Context paramContext)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      paramContext.registerReceiver(this, (IntentFilter)localIterator.next());
    }
    b = true;
  }
  
  public void b(Context paramContext)
  {
    if (b)
    {
      paramContext.unregisterReceiver(this);
      b = false;
    }
  }
  
  public boolean c()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.BasicBroadcastReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */