package com.yelp.android.appdata.experiment;

public class g
{
  private static f a;
  
  public static f a()
  {
    if (a == null) {
      throw new IllegalStateException("Experiment.DATA should have been initialized by AppData!");
    }
    return a;
  }
  
  public static void a(f paramf)
  {
    a = paramf;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.experiment.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */