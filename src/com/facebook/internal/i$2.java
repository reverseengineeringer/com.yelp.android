package com.facebook.internal;

import java.io.File;

class i$2
  implements Runnable
{
  i$2(i parami, File[] paramArrayOfFile) {}
  
  public void run()
  {
    File[] arrayOfFile = a;
    int j = arrayOfFile.length;
    int i = 0;
    while (i < j)
    {
      arrayOfFile[i].delete();
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.i.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */