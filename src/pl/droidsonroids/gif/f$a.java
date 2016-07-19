package pl.droidsonroids.gif;

import android.content.res.AssetManager;
import java.io.IOException;

public final class f$a
  extends f
{
  private final AssetManager a;
  private final String b;
  
  public f$a(AssetManager paramAssetManager, String paramString)
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

/* Location:
 * Qualified Name:     pl.droidsonroids.gif.f.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */