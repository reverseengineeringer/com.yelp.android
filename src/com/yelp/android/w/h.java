package com.yelp.android.w;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.bumptech.glide.Priority;
import java.io.FileNotFoundException;
import java.io.IOException;

public abstract class h<T>
  implements c<T>
{
  private final Uri a;
  private final Context b;
  private T c;
  
  public h(Context paramContext, Uri paramUri)
  {
    b = paramContext.getApplicationContext();
    a = paramUri;
  }
  
  public final T a(Priority paramPriority)
    throws Exception
  {
    paramPriority = b.getContentResolver();
    c = b(a, paramPriority);
    return (T)c;
  }
  
  public void a()
  {
    if (c != null) {}
    try
    {
      a(c);
      return;
    }
    catch (IOException localIOException)
    {
      while (!Log.isLoggable("LocalUriFetcher", 2)) {}
      Log.v("LocalUriFetcher", "failed to close data", localIOException);
    }
  }
  
  protected abstract void a(T paramT)
    throws IOException;
  
  protected abstract T b(Uri paramUri, ContentResolver paramContentResolver)
    throws FileNotFoundException;
  
  public String b()
  {
    return a.toString();
  }
  
  public void c() {}
}

/* Location:
 * Qualified Name:     com.yelp.android.w.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */