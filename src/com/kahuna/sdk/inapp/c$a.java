package com.kahuna.sdk.inapp;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.util.Log;
import com.kahuna.sdk.l;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

class c$a
  extends AsyncTask<String, Void, Boolean>
{
  private RichInAppMessage a;
  
  public c$a(RichInAppMessage paramRichInAppMessage)
  {
    a = paramRichInAppMessage;
  }
  
  protected Boolean a(String... paramVarArgs)
  {
    Iterator localIterator1 = a.d().iterator();
    boolean bool1 = true;
    boolean bool2 = bool1;
    label56:
    Object localObject5;
    int i;
    label98:
    Object localObject1;
    Object localObject6;
    Bitmap localBitmap;
    if (localIterator1.hasNext())
    {
      Iterator localIterator2 = ((d)localIterator1.next()).i().values().iterator();
      for (;;)
      {
        if (localIterator2.hasNext())
        {
          b localb = (b)localIterator2.next();
          if (localb.b() == null)
          {
            localObject5 = null;
            String str = localb.a();
            i = 3;
            if (i > 0)
            {
              if (l.u()) {
                Log.d("Kahuna", "Starting attempt to download In App image: " + str + ". Remaining retries: " + i);
              }
              paramVarArgs = (String[])localObject5;
              localObject1 = localObject5;
              localObject6 = localObject5;
              for (;;)
              {
                try
                {
                  URL localURL = new URL(str);
                  paramVarArgs = (String[])localObject5;
                  localObject1 = localObject5;
                  localObject6 = localObject5;
                  if (l.u())
                  {
                    paramVarArgs = (String[])localObject5;
                    localObject1 = localObject5;
                    localObject6 = localObject5;
                    Log.d("Kahuna", "Beginning download of image url: " + localURL.toString());
                  }
                  paramVarArgs = (String[])localObject5;
                  localObject1 = localObject5;
                  localObject6 = localObject5;
                  localObject5 = localURL.openStream();
                  paramVarArgs = (String[])localObject5;
                  localObject1 = localObject5;
                  localObject6 = localObject5;
                  localBitmap = BitmapFactory.decodeStream((InputStream)localObject5);
                  paramVarArgs = (String[])localObject5;
                  localObject1 = localObject5;
                  localObject6 = localObject5;
                  if (l.u())
                  {
                    paramVarArgs = (String[])localObject5;
                    localObject1 = localObject5;
                    localObject6 = localObject5;
                    Log.d("Kahuna", "Image downloaded at url: " + localURL.toString());
                  }
                  if (localObject5 == null) {
                    break label681;
                  }
                }
                catch (Error localError)
                {
                  localObject6 = paramVarArgs;
                  Log.e("Kahuna", "Error downloading In App Image: " + localError);
                  localObject6 = paramVarArgs;
                  Log.e("Kahuna", "Will not retry downloading image.");
                  j = 0;
                  bool2 = false;
                  localObject5 = paramVarArgs;
                  if (paramVarArgs == null) {
                    break label666;
                  }
                  try
                  {
                    paramVarArgs.close();
                    localObject2 = null;
                    i = 0;
                    bool1 = false;
                  }
                  catch (IOException localIOException1)
                  {
                    localIOException1.printStackTrace();
                    localObject3 = null;
                    i = 0;
                    bool1 = false;
                  }
                  continue;
                }
                catch (Exception paramVarArgs)
                {
                  label332:
                  label344:
                  localObject6 = localObject3;
                  Log.e("Kahuna", "Exception downloading Push Background Image: " + paramVarArgs);
                  localObject5 = localObject3;
                  j = i;
                  bool2 = bool1;
                  if (localObject3 == null) {
                    break label666;
                  }
                  try
                  {
                    ((InputStream)localObject3).close();
                    localObject5 = null;
                    paramVarArgs = (String[])localObject3;
                    localObject3 = localObject5;
                  }
                  catch (IOException paramVarArgs)
                  {
                    paramVarArgs.printStackTrace();
                    localObject5 = null;
                    paramVarArgs = (String[])localObject3;
                    localObject3 = localObject5;
                  }
                  continue;
                }
                finally
                {
                  if (localObject6 == null) {
                    continue;
                  }
                  try
                  {
                    ((InputStream)localObject6).close();
                    throw paramVarArgs;
                  }
                  catch (IOException localIOException2)
                  {
                    localIOException2.printStackTrace();
                    continue;
                  }
                  i -= 1;
                  localObject5 = paramVarArgs;
                }
                try
                {
                  ((InputStream)localObject5).close();
                  localObject1 = localBitmap;
                  paramVarArgs = (String[])localObject5;
                }
                catch (IOException paramVarArgs)
                {
                  paramVarArgs.printStackTrace();
                  localObject1 = localBitmap;
                  paramVarArgs = (String[])localObject5;
                }
              }
              if (localObject1 != null)
              {
                localb.a((Bitmap)localObject1);
                if (i > 0) {
                  break label664;
                }
                bool1 = false;
              }
            }
          }
        }
      }
    }
    for (;;)
    {
      int j;
      if (!bool1)
      {
        bool2 = bool1;
        if (bool2) {
          break label657;
        }
        paramVarArgs = a.d().iterator();
        while (paramVarArgs.hasNext())
        {
          localObject1 = ((d)paramVarArgs.next()).i().values().iterator();
          while (((Iterator)localObject1).hasNext()) {
            ((b)((Iterator)localObject1).next()).a(null);
          }
        }
        Object localObject2;
        Object localObject3;
        break label98;
      }
      break;
      label657:
      return Boolean.valueOf(bool2);
      break label344;
      label664:
      break label56;
      label666:
      Object localObject4 = null;
      i = j;
      bool1 = bool2;
      paramVarArgs = (String[])localObject5;
      break label332;
      label681:
      localObject4 = localBitmap;
      paramVarArgs = (String[])localObject5;
      break label332;
    }
  }
  
  protected void a(Boolean paramBoolean)
  {
    if (paramBoolean == Boolean.TRUE)
    {
      a.h();
      if (c.c(c.e()) != null) {
        c.a(c.e(), c.c(c.e()), a);
      }
    }
    do
    {
      return;
      a.i();
      c.a(a, "Failed to download images.");
    } while (c.a(c.e()) != a);
    c.a(c.e(), null);
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.inapp.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */