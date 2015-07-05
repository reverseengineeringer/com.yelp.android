package com.yelp.android.r;

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
  
  protected abstract T a(AssetManager paramAssetManager, String paramString);
  
  public T a(Priority paramPriority)
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
  
  protected abstract void a(T paramT);
  
  public String b()
  {
    return a;
  }
  
  public void c() {}
}

/* Location:
 * Qualified Name:     com.yelp.android.r.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */