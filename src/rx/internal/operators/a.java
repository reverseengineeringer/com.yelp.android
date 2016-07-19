package rx.internal.operators;

import java.util.concurrent.atomic.AtomicLong;

public final class a
{
  public static long a(long paramLong1, long paramLong2)
  {
    paramLong2 = paramLong1 + paramLong2;
    paramLong1 = paramLong2;
    if (paramLong2 < 0L) {
      paramLong1 = Long.MAX_VALUE;
    }
    return paramLong1;
  }
  
  public static long a(AtomicLong paramAtomicLong, long paramLong)
  {
    long l;
    do
    {
      l = paramAtomicLong.get();
    } while (!paramAtomicLong.compareAndSet(l, a(l, paramLong)));
    return l;
  }
  
  public static long b(AtomicLong paramAtomicLong, long paramLong)
  {
    long l1;
    long l2;
    do
    {
      l1 = paramAtomicLong.get();
      if (l1 == Long.MAX_VALUE) {
        return Long.MAX_VALUE;
      }
      l2 = l1 - paramLong;
      if (l2 < 0L) {
        throw new IllegalStateException("More produced than requested: " + l2);
      }
    } while (!paramAtomicLong.compareAndSet(l1, l2));
    return l2;
  }
}

/* Location:
 * Qualified Name:     rx.internal.operators.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */