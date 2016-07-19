package com.crashlytics.android.answers;

import com.yelp.android.cs.a;
import java.util.Random;

class h
  implements a
{
  final a a;
  final Random b;
  final double c;
  
  public h(a parama, double paramDouble)
  {
    this(parama, paramDouble, new Random());
  }
  
  public h(a parama, double paramDouble, Random paramRandom)
  {
    if ((paramDouble < 0.0D) || (paramDouble > 1.0D)) {
      throw new IllegalArgumentException("jitterPercent must be between 0.0 and 1.0");
    }
    if (parama == null) {
      throw new NullPointerException("backoff must not be null");
    }
    if (paramRandom == null) {
      throw new NullPointerException("random must not be null");
    }
    a = parama;
    c = paramDouble;
    b = paramRandom;
  }
  
  double a()
  {
    double d = 1.0D - c;
    return d + (c + 1.0D - d) * b.nextDouble();
  }
  
  public long a(int paramInt)
  {
    return (a() * a.a(paramInt));
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.answers.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */