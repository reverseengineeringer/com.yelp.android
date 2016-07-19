package com.yelp.android.w;

import android.content.res.AssetManager;
import android.util.Log;
import com.bumptech.glide.Priority;
import java.io.IOException;

public abstract class a<T>
  implements c<T>
{
  private final String a;
  private final AssetManager b;
  private T c;
  
  public a(AssetManager paramAssetManager, String paramString)
  {
    b = paramAssetManager;
    a = paramString;
  }
  
  protected abstract T a(AssetManager paramAssetManager, String paramString)
    throws IOException;
  
  public T a(Priority paramPriority)
    throws Exception
  {
    c = a(b, a);
    return (T)c;
  }
  
  public void a()
  {
    if (c == null) {}
    do
    {
      return;
      try
      {
        a(c);
        return;
      }
      catch (IOException localIOException) {}
    } while (!Log.isLoggable("AssetUriFetcher", 2));
    Log.v("AssetUriFetcher", "Failed to close data", localIOException);
  }
  
  protected abstract void a(T paramT)
    throws IOException;
  
  public String b()
  {
    return a;
  }
  
  public void c() {}
}

/* Location:
 * Qualified Name:     com.yelp.android.w.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */