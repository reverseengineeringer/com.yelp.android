package pl.droidsonroids.gif;

import android.content.res.Resources;
import java.io.IOException;

public class f$b
  extends f
{
  private final Resources a;
  private final int b;
  
  public f$b(Resources paramResources, int paramInt)
  {
    a = paramResources;
    b = paramInt;
  }
  
  GifInfoHandle a()
    throws IOException
  {
    return new GifInfoHandle(a.openRawResourceFd(b), false);
  }
}

/* Location:
 * Qualified Name:     pl.droidsonroids.gif.f.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */