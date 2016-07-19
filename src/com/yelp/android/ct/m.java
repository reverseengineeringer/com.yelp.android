package com.yelp.android.ct;

import android.content.Context;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.n;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class m
  implements g
{
  private final Context a;
  private final File b;
  private final String c;
  private final File d;
  private n e;
  private File f;
  
  public m(Context paramContext, File paramFile, String paramString1, String paramString2)
    throws IOException
  {
    a = paramContext;
    b = paramFile;
    c = paramString2;
    d = new File(b, paramString1);
    e = new n(d);
    e();
  }
  
  private void a(File paramFile1, File paramFile2)
    throws IOException
  {
    Object localObject2 = null;
    Object localObject1 = null;
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(paramFile1);
      localObject1 = localObject2;
      CommonUtils.a(localFileInputStream, "Failed to close file input stream");
    }
    finally
    {
      try
      {
        paramFile2 = a(paramFile2);
        localObject1 = paramFile2;
        CommonUtils.a(localFileInputStream, paramFile2, new byte['Ѐ']);
        CommonUtils.a(localFileInputStream, "Failed to close file input stream");
        CommonUtils.a(paramFile2, "Failed to close output stream");
        paramFile1.delete();
        return;
      }
      finally
      {
        for (;;) {}
      }
      paramFile2 = finally;
      localFileInputStream = null;
    }
    CommonUtils.a((Closeable)localObject1, "Failed to close output stream");
    paramFile1.delete();
    throw paramFile2;
  }
  
  private void e()
  {
    f = new File(b, c);
    if (!f.exists()) {
      f.mkdirs();
    }
  }
  
  public int a()
  {
    return e.a();
  }
  
  public OutputStream a(File paramFile)
    throws IOException
  {
    return new FileOutputStream(paramFile);
  }
  
  public List<File> a(int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    File[] arrayOfFile = f.listFiles();
    int j = arrayOfFile.length;
    int i = 0;
    for (;;)
    {
      if (i < j)
      {
        localArrayList.add(arrayOfFile[i]);
        if (localArrayList.size() < paramInt) {}
      }
      else
      {
        return localArrayList;
      }
      i += 1;
    }
  }
  
  public void a(String paramString)
    throws IOException
  {
    e.close();
    a(d, new File(f, paramString));
    e = new n(d);
  }
  
  public void a(List<File> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      File localFile = (File)paramList.next();
      CommonUtils.a(a, String.format("deleting sent analytics file %s", new Object[] { localFile.getName() }));
      localFile.delete();
    }
  }
  
  public void a(byte[] paramArrayOfByte)
    throws IOException
  {
    e.a(paramArrayOfByte);
  }
  
  public boolean a(int paramInt1, int paramInt2)
  {
    return e.a(paramInt1, paramInt2);
  }
  
  public boolean b()
  {
    return e.b();
  }
  
  public List<File> c()
  {
    return Arrays.asList(f.listFiles());
  }
  
  public void d()
  {
    try
    {
      e.close();
      d.delete();
      return;
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ct.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */