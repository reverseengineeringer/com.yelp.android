package pl.droidsonroids.gif;

import android.content.res.AssetManager;
import android.content.res.Resources;
import java.io.IOException;

public abstract class f
{
  abstract GifInfoHandle a()
    throws IOException;
  
  public static final class a
    extends f
  {
    private final AssetManager a;
    private final String b;
    
    public a(AssetManager paramAssetManager, String paramString)
    {
      a = paramAssetManager;
      b = paramString;
    }
    
    GifInfoHandle a()
      throws IOException
    {
      return new GifInfoHandle(a.openFd(b), false);
    }
  }
  
  public static class b
    extends f
  {
    private final Resources a;
    private final int b;
    
    public b(Resources paramResources, int paramInt)
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
}

/* Location:
 * Qualified Name:     pl.droidsonroids.gif.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */