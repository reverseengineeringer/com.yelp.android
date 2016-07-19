package com.yelp.android.ui.activities.addphoto;

import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import com.yelp.android.util.e;
import com.yelp.android.util.ffmpeg.FFmpeg;
import java.io.File;
import java.lang.ref.WeakReference;

public class b
  extends AsyncTask<Uri, Void, String>
{
  WeakReference<Context> a;
  WeakReference<a> b;
  
  public b(Context paramContext, a parama)
  {
    a = new WeakReference(paramContext);
    b = new WeakReference(parama);
  }
  
  protected String a(Uri... paramVarArgs)
  {
    Object localObject = (Context)a.get();
    if (localObject == null) {
      paramVarArgs = null;
    }
    do
    {
      return paramVarArgs;
      localObject = e.a(paramVarArgs[0], ((Context)localObject).getContentResolver());
      paramVarArgs = (Uri[])localObject;
    } while (FFmpeg.a(new File((String)localObject)));
    return null;
  }
  
  protected void a(String paramString)
  {
    a locala = (a)b.get();
    if (locala == null) {
      return;
    }
    locala.c();
    if (paramString == null)
    {
      locala.b();
      return;
    }
    locala.a(paramString);
  }
  
  protected void onPreExecute()
  {
    a locala = (a)b.get();
    if (locala != null) {
      locala.a();
    }
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(String paramString);
    
    public abstract void b();
    
    public abstract void c();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.addphoto.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */