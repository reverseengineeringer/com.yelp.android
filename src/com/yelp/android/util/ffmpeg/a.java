package com.yelp.android.util.ffmpeg;

import com.yelp.android.appdata.AppData;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.l;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;

public class a
  implements e
{
  private final File[] a;
  private final File b;
  private final File c;
  private f d;
  
  public a(File[] paramArrayOfFile, File paramFile)
  {
    a = paramArrayOfFile;
    c = paramFile;
    b = new File(l.b(c.getAbsolutePath(), ".txt"));
  }
  
  public void a(f paramf)
  {
    d = paramf;
  }
  
  public void run()
  {
    int i = 0;
    do
    {
      try
      {
        Object localObject1 = new PrintWriter(b);
        File[] arrayOfFile = a;
        int j = arrayOfFile.length;
        while (i < j)
        {
          ((PrintWriter)localObject1).println(String.format("file '%s'", new Object[] { arrayOfFile[i].getName() }));
          i += 1;
        }
        ((PrintWriter)localObject1).close();
        localObject1 = new d(null, c).a(b).a("copy").a().a(AppData.b());
        if (localObject1 == null) {}
        for (i = -1; (d != null) && (i == 0); i = ((Process)localObject1).waitFor())
        {
          d.a(c);
          return;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          YelpLog.e("ConcatenateTask", "Unable to concatenate video chunks together", localInterruptedException);
          b.delete();
        }
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        for (;;)
        {
          YelpLog.e("ConcatenateTask", "Unable to concatenate video chunks together", localFileNotFoundException);
          b.delete();
        }
      }
      finally
      {
        b.delete();
      }
    } while (d == null);
    d.b(c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.ffmpeg.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */