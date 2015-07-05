package com.yelp.android.util.ffmpeg;

import android.graphics.Rect;
import com.yelp.android.appdata.AppData;
import com.yelp.android.util.ai;
import java.io.File;

public class b
  implements e
{
  private final File a;
  private final int b;
  private final int c;
  private final int d;
  private final int e;
  private final int f;
  private final Rect g;
  private final File h;
  private f i;
  
  public b(File paramFile1, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, Rect paramRect, File paramFile2)
  {
    a = paramFile1;
    b = paramInt1;
    c = paramInt2;
    d = paramInt3;
    e = paramInt4;
    f = paramInt5;
    g = paramRect;
    h = paramFile2;
  }
  
  public void a(f paramf)
  {
    i = paramf;
  }
  
  public void run()
  {
    k = 0;
    Object localObject = new d(a, h).a(b).b(c).a(d, e).a(g).b().c(44100).d(62).e(30).a(ai.a).f(4096).a();
    switch (f)
    {
    }
    for (;;)
    {
      localObject = ((d)localObject).a(AppData.b());
      j = k;
      if (localObject != null) {}
      try
      {
        int m = ((Process)localObject).waitFor();
        j = k;
        if (m == 0) {
          j = 1;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          j = k;
        }
      }
      if (i != null)
      {
        if (j == 0) {
          break;
        }
        i.a(h);
      }
      return;
      ((d)localObject).a(FFmpeg.TransposeDirection.CLOCK);
      continue;
      ((d)localObject).a(FFmpeg.TransposeDirection.CLOCK).a(FFmpeg.TransposeDirection.CLOCK);
      continue;
      ((d)localObject).a(FFmpeg.TransposeDirection.CCLOCK);
    }
    i.b(h);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.ffmpeg.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */