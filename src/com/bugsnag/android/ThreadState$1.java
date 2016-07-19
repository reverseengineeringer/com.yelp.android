package com.bugsnag.android;

import java.util.Comparator;

class ThreadState$1
  implements Comparator<Object>
{
  ThreadState$1(ThreadState paramThreadState) {}
  
  public int compare(Object paramObject1, Object paramObject2)
  {
    return Long.valueOf(((Thread)paramObject1).getId()).compareTo(Long.valueOf(((Thread)paramObject2).getId()));
  }
}

/* Location:
 * Qualified Name:     com.bugsnag.android.ThreadState.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */