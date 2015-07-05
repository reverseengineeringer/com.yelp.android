package com.google.android.gms.internal;

import java.util.ArrayList;

public class os
{
  private final ArrayList<os.a> amZ = new ArrayList();
  private int ana;
  
  public os()
  {
    this(100);
  }
  
  public os(int paramInt)
  {
    ana = paramInt;
  }
  
  private void oq()
  {
    while (getSize() > getCapacity()) {
      amZ.remove(0);
    }
  }
  
  public void a(ov paramov, or paramor)
  {
    amZ.add(new os.a(paramov, paramor, null));
    oq();
  }
  
  public void clear()
  {
    amZ.clear();
  }
  
  public int getCapacity()
  {
    return ana;
  }
  
  public int getSize()
  {
    return amZ.size();
  }
  
  public boolean isEmpty()
  {
    return amZ.isEmpty();
  }
  
  public ArrayList<os.a> op()
  {
    return amZ;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.os
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */