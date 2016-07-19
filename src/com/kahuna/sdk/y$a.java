package com.kahuna.sdk;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

class y$a
  extends AsyncTask<String, Void, Bitmap>
{
  private x a;
  
  public y$a(x paramx)
  {
    a = paramx;
  }
  
  protected Bitmap a(String... paramVarArgs)
  {
    if ((paramVarArgs == null) || (w.a(paramVarArgs[0])))
    {
      localObject10 = null;
      return (Bitmap)localObject10;
    }
    i = 3;
    localObject9 = null;
    localObject6 = null;
    for (;;)
    {
      localObject10 = localObject6;
      if (i <= 0) {
        break;
      }
      if (l.a) {
        Log.d("Kahuna", "Starting attempt to download backgroud push image. Remaining retries: " + i);
      }
      localObject6 = localObject9;
      Object localObject1 = localObject9;
      localObject10 = localObject9;
      for (;;)
      {
        try
        {
          Object localObject11 = new URL(paramVarArgs[0]);
          localObject6 = localObject9;
          localObject1 = localObject9;
          localObject10 = localObject9;
          Log.d("Kahuna", "Beginning download of background image url: " + ((URL)localObject11).toString());
          localObject6 = localObject9;
          localObject1 = localObject9;
          localObject10 = localObject9;
          localObject9 = ((URL)localObject11).openStream();
          localObject6 = localObject9;
          localObject1 = localObject9;
          localObject10 = localObject9;
          localObject11 = BitmapFactory.decodeStream((InputStream)localObject9);
          localObject6 = localObject11;
          if (localObject9 == null) {
            continue;
          }
        }
        catch (Error localError)
        {
          Object localObject2;
          localObject10 = localObject6;
          Log.e("Kahuna", "Error downloading Push Background Image: " + localError);
          localObject10 = localObject6;
          Log.e("Kahuna", "Will not retry downloading image.");
          if (localObject6 == null) {
            continue;
          }
          try
          {
            ((InputStream)localObject6).close();
            Object localObject3 = localObject6;
            localObject6 = null;
            i = 0;
          }
          catch (IOException localIOException2)
          {
            localIOException2.printStackTrace();
            localObject4 = localObject6;
            localObject6 = null;
            i = 0;
          }
          continue;
        }
        catch (Exception localException)
        {
          Object localObject4;
          localObject10 = localObject4;
          Log.e("Kahuna", "Exception downloading Push Background Image: " + localException);
          if (localObject4 == null) {
            continue;
          }
          try
          {
            ((InputStream)localObject4).close();
            Object localObject7 = null;
          }
          catch (IOException localIOException4)
          {
            localIOException4.printStackTrace();
            localObject8 = null;
          }
          continue;
        }
        finally
        {
          if (localObject10 == null) {
            continue;
          }
          try
          {
            ((InputStream)localObject10).close();
            throw paramVarArgs;
          }
          catch (IOException localIOException3)
          {
            localIOException3.printStackTrace();
            continue;
          }
          Object localObject8 = null;
          continue;
          Object localObject5 = localObject8;
          localObject8 = null;
          i = 0;
          continue;
          localObject5 = localObject9;
          continue;
        }
        try
        {
          ((InputStream)localObject9).close();
          localObject1 = localObject9;
        }
        catch (IOException localIOException1)
        {
          localIOException1.printStackTrace();
          localObject2 = localObject9;
        }
      }
      localObject10 = localObject6;
      if (localObject6 != null) {
        break;
      }
      i -= 1;
      localObject9 = localObject1;
    }
  }
  
  protected void a(Bitmap paramBitmap)
  {
    a.a(paramBitmap);
    y.a(a);
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.y.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */