package com.yelp.android.database;

import android.content.Context;
import android.content.res.AssetManager;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.yelp.android.services.v;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;
import java.util.Iterator;

class o
{
  private final String a;
  private final Collection<String> b;
  private final String c;
  private final File d;
  
  public o(Context paramContext, String paramString, Collection<String> paramCollection)
  {
    a = paramString;
    d = paramContext.getFileStreamPath(a(a, 3));
    c = ("database_category/" + a + ".sqlite");
    b = paramCollection;
  }
  
  private boolean b(Context paramContext)
  {
    try
    {
      v localv = new v();
      paramContext = paramContext.getAssets().open(c);
      long l1 = localv.a(paramContext);
      paramContext.close();
      paramContext = new FileInputStream(d);
      long l2 = localv.a(paramContext);
      paramContext.close();
      return l2 != l1;
    }
    catch (IOException paramContext)
    {
      return true;
    }
    catch (FileNotFoundException paramContext) {}
    return true;
  }
  
  private void c(Context paramContext)
  {
    Object localObject1 = paramContext.getAssets().open(c, 0);
    Object localObject2 = paramContext.openFileOutput(a(a, 3), 0);
    Object localObject3 = new byte['Ѐ'];
    int i;
    for (;;)
    {
      i = ((InputStream)localObject1).read((byte[])localObject3);
      if (i <= 0) {
        break;
      }
      ((FileOutputStream)localObject2).write((byte[])localObject3, 0, i);
    }
    ((FileOutputStream)localObject2).flush();
    ((FileOutputStream)localObject2).getFD().sync();
    ((FileOutputStream)localObject2).close();
    ((InputStream)localObject1).close();
    localObject1 = b.iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (String)((Iterator)localObject1).next();
      i = 0;
      while (i <= 3)
      {
        if ((i != 3) || (!TextUtils.equals((CharSequence)localObject2, a)))
        {
          localObject3 = paramContext.getFileStreamPath(a((String)localObject2, i));
          if (((File)localObject3).exists()) {
            ((File)localObject3).delete();
          }
        }
        i += 1;
      }
    }
  }
  
  public SQLiteDatabase a()
  {
    return SQLiteDatabase.openDatabase(d.getAbsolutePath(), null, 16);
  }
  
  String a(String paramString, int paramInt)
  {
    if (paramInt == 0) {
      return paramString + ".sqlite";
    }
    return paramString + "-" + paramInt + ".sqlite";
  }
  
  public void a(Context paramContext)
  {
    if ((!d.exists()) || (b(paramContext))) {
      c(paramContext);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */