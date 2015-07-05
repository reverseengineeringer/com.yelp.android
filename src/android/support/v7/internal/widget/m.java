package android.support.v7.internal.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.text.TextUtils;
import com.yelp.android.c.a;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class m
  extends DataSetObservable
{
  private static final String a = m.class.getSimpleName();
  private static final Object b = new Object();
  private static final Map<String, m> c = new HashMap();
  private final Object d;
  private final List<o> e;
  private final List<q> f;
  private final Context g;
  private final String h;
  private Intent i;
  private p j;
  private int k;
  private boolean l;
  private boolean m;
  private boolean n;
  private boolean o;
  private r p;
  
  private boolean a(q paramq)
  {
    boolean bool = f.add(paramq);
    if (bool)
    {
      n = true;
      j();
      e();
      g();
      notifyChanged();
    }
    return bool;
  }
  
  private void e()
  {
    if (!m) {
      throw new IllegalStateException("No preceding call to #readHistoricalData");
    }
    if (!n) {}
    do
    {
      return;
      n = false;
    } while (TextUtils.isEmpty(h));
    a.a(new s(this, null), new Object[] { f, h });
  }
  
  private void f()
  {
    boolean bool1 = h();
    boolean bool2 = i();
    j();
    if ((bool1 | bool2))
    {
      g();
      notifyChanged();
    }
  }
  
  private boolean g()
  {
    if ((j != null) && (i != null) && (!e.isEmpty()) && (!f.isEmpty()))
    {
      j.a(i, e, Collections.unmodifiableList(f));
      return true;
    }
    return false;
  }
  
  private boolean h()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (o)
    {
      bool1 = bool2;
      if (i != null)
      {
        o = false;
        e.clear();
        List localList = g.getPackageManager().queryIntentActivities(i, 0);
        int i2 = localList.size();
        int i1 = 0;
        while (i1 < i2)
        {
          ResolveInfo localResolveInfo = (ResolveInfo)localList.get(i1);
          e.add(new o(this, localResolveInfo));
          i1 += 1;
        }
        bool1 = true;
      }
    }
    return bool1;
  }
  
  private boolean i()
  {
    if ((l) && (n) && (!TextUtils.isEmpty(h)))
    {
      l = false;
      m = true;
      k();
      return true;
    }
    return false;
  }
  
  private void j()
  {
    int i2 = f.size() - k;
    if (i2 <= 0) {}
    for (;;)
    {
      return;
      n = true;
      int i1 = 0;
      while (i1 < i2)
      {
        q localq = (q)f.remove(0);
        i1 += 1;
      }
    }
  }
  
  /* Error */
  private void k()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 59	android/support/v7/internal/widget/m:g	Landroid/content/Context;
    //   4: aload_0
    //   5: getfield 86	android/support/v7/internal/widget/m:h	Ljava/lang/String;
    //   8: invokevirtual 185	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   11: astore_2
    //   12: invokestatic 191	android/util/Xml:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   15: astore_3
    //   16: aload_3
    //   17: aload_2
    //   18: aconst_null
    //   19: invokeinterface 197 3 0
    //   24: iconst_0
    //   25: istore_1
    //   26: iload_1
    //   27: iconst_1
    //   28: if_icmpeq +18 -> 46
    //   31: iload_1
    //   32: iconst_2
    //   33: if_icmpeq +13 -> 46
    //   36: aload_3
    //   37: invokeinterface 200 1 0
    //   42: istore_1
    //   43: goto -17 -> 26
    //   46: ldc -54
    //   48: aload_3
    //   49: invokeinterface 205 1 0
    //   54: invokevirtual 210	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   57: ifne +53 -> 110
    //   60: new 179	org/xmlpull/v1/XmlPullParserException
    //   63: dup
    //   64: ldc -44
    //   66: invokespecial 213	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   69: athrow
    //   70: astore_3
    //   71: getstatic 43	android/support/v7/internal/widget/m:a	Ljava/lang/String;
    //   74: new 215	java/lang/StringBuilder
    //   77: dup
    //   78: invokespecial 216	java/lang/StringBuilder:<init>	()V
    //   81: ldc -38
    //   83: invokevirtual 222	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   86: aload_0
    //   87: getfield 86	android/support/v7/internal/widget/m:h	Ljava/lang/String;
    //   90: invokevirtual 222	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: invokevirtual 225	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   96: aload_3
    //   97: invokestatic 230	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   100: pop
    //   101: aload_2
    //   102: ifnull +7 -> 109
    //   105: aload_2
    //   106: invokevirtual 235	java/io/FileInputStream:close	()V
    //   109: return
    //   110: aload_0
    //   111: getfield 65	android/support/v7/internal/widget/m:f	Ljava/util/List;
    //   114: astore 4
    //   116: aload 4
    //   118: invokeinterface 139 1 0
    //   123: aload_3
    //   124: invokeinterface 200 1 0
    //   129: istore_1
    //   130: iload_1
    //   131: iconst_1
    //   132: if_icmpne +14 -> 146
    //   135: aload_2
    //   136: ifnull -27 -> 109
    //   139: aload_2
    //   140: invokevirtual 235	java/io/FileInputStream:close	()V
    //   143: return
    //   144: astore_2
    //   145: return
    //   146: iload_1
    //   147: iconst_3
    //   148: if_icmpeq -25 -> 123
    //   151: iload_1
    //   152: iconst_4
    //   153: if_icmpeq -30 -> 123
    //   156: ldc -19
    //   158: aload_3
    //   159: invokeinterface 205 1 0
    //   164: invokevirtual 210	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   167: ifne +55 -> 222
    //   170: new 179	org/xmlpull/v1/XmlPullParserException
    //   173: dup
    //   174: ldc -17
    //   176: invokespecial 213	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   179: athrow
    //   180: astore_3
    //   181: getstatic 43	android/support/v7/internal/widget/m:a	Ljava/lang/String;
    //   184: new 215	java/lang/StringBuilder
    //   187: dup
    //   188: invokespecial 216	java/lang/StringBuilder:<init>	()V
    //   191: ldc -38
    //   193: invokevirtual 222	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   196: aload_0
    //   197: getfield 86	android/support/v7/internal/widget/m:h	Ljava/lang/String;
    //   200: invokevirtual 222	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   203: invokevirtual 225	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   206: aload_3
    //   207: invokestatic 230	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   210: pop
    //   211: aload_2
    //   212: ifnull -103 -> 109
    //   215: aload_2
    //   216: invokevirtual 235	java/io/FileInputStream:close	()V
    //   219: return
    //   220: astore_2
    //   221: return
    //   222: aload 4
    //   224: new 175	android/support/v7/internal/widget/q
    //   227: dup
    //   228: aload_3
    //   229: aconst_null
    //   230: ldc -15
    //   232: invokeinterface 245 3 0
    //   237: aload_3
    //   238: aconst_null
    //   239: ldc -9
    //   241: invokeinterface 245 3 0
    //   246: invokestatic 253	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   249: aload_3
    //   250: aconst_null
    //   251: ldc -1
    //   253: invokeinterface 245 3 0
    //   258: invokestatic 261	java/lang/Float:parseFloat	(Ljava/lang/String;)F
    //   261: invokespecial 264	android/support/v7/internal/widget/q:<init>	(Ljava/lang/String;JF)V
    //   264: invokeinterface 71 2 0
    //   269: pop
    //   270: goto -147 -> 123
    //   273: astore_3
    //   274: aload_2
    //   275: ifnull +7 -> 282
    //   278: aload_2
    //   279: invokevirtual 235	java/io/FileInputStream:close	()V
    //   282: aload_3
    //   283: athrow
    //   284: astore_2
    //   285: return
    //   286: astore_2
    //   287: goto -5 -> 282
    //   290: astore_2
    //   291: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	292	0	this	m
    //   25	129	1	i1	int
    //   11	129	2	localFileInputStream	java.io.FileInputStream
    //   144	72	2	localIOException1	java.io.IOException
    //   220	59	2	localIOException2	java.io.IOException
    //   284	1	2	localIOException3	java.io.IOException
    //   286	1	2	localIOException4	java.io.IOException
    //   290	1	2	localFileNotFoundException	java.io.FileNotFoundException
    //   15	34	3	localXmlPullParser	org.xmlpull.v1.XmlPullParser
    //   70	89	3	localXmlPullParserException	org.xmlpull.v1.XmlPullParserException
    //   180	70	3	localIOException5	java.io.IOException
    //   273	10	3	localObject	Object
    //   114	109	4	localList	List
    // Exception table:
    //   from	to	target	type
    //   12	24	70	org/xmlpull/v1/XmlPullParserException
    //   36	43	70	org/xmlpull/v1/XmlPullParserException
    //   46	70	70	org/xmlpull/v1/XmlPullParserException
    //   110	123	70	org/xmlpull/v1/XmlPullParserException
    //   123	130	70	org/xmlpull/v1/XmlPullParserException
    //   156	180	70	org/xmlpull/v1/XmlPullParserException
    //   222	270	70	org/xmlpull/v1/XmlPullParserException
    //   139	143	144	java/io/IOException
    //   12	24	180	java/io/IOException
    //   36	43	180	java/io/IOException
    //   46	70	180	java/io/IOException
    //   110	123	180	java/io/IOException
    //   123	130	180	java/io/IOException
    //   156	180	180	java/io/IOException
    //   222	270	180	java/io/IOException
    //   215	219	220	java/io/IOException
    //   12	24	273	finally
    //   36	43	273	finally
    //   46	70	273	finally
    //   71	101	273	finally
    //   110	123	273	finally
    //   123	130	273	finally
    //   156	180	273	finally
    //   181	211	273	finally
    //   222	270	273	finally
    //   105	109	284	java/io/IOException
    //   278	282	286	java/io/IOException
    //   0	12	290	java/io/FileNotFoundException
  }
  
  public int a()
  {
    synchronized (d)
    {
      f();
      int i1 = e.size();
      return i1;
    }
  }
  
  public int a(ResolveInfo paramResolveInfo)
  {
    for (;;)
    {
      int i1;
      synchronized (d)
      {
        f();
        List localList = e;
        int i2 = localList.size();
        i1 = 0;
        if (i1 < i2)
        {
          if (geta == paramResolveInfo) {
            return i1;
          }
        }
        else {
          return -1;
        }
      }
      i1 += 1;
    }
  }
  
  public ResolveInfo a(int paramInt)
  {
    synchronized (d)
    {
      f();
      ResolveInfo localResolveInfo = e.get(paramInt)).a;
      return localResolveInfo;
    }
  }
  
  public Intent b(int paramInt)
  {
    synchronized (d)
    {
      if (i == null) {
        return null;
      }
      f();
      Object localObject2 = (o)e.get(paramInt);
      localObject2 = new ComponentName(a.activityInfo.packageName, a.activityInfo.name);
      Intent localIntent1 = new Intent(i);
      localIntent1.setComponent((ComponentName)localObject2);
      if (p != null)
      {
        Intent localIntent2 = new Intent(localIntent1);
        if (p.a(this, localIntent2)) {
          return null;
        }
      }
      a(new q((ComponentName)localObject2, System.currentTimeMillis(), 1.0F));
      return localIntent1;
    }
  }
  
  public ResolveInfo b()
  {
    synchronized (d)
    {
      f();
      if (!e.isEmpty())
      {
        ResolveInfo localResolveInfo = e.get(0)).a;
        return localResolveInfo;
      }
      return null;
    }
  }
  
  public int c()
  {
    synchronized (d)
    {
      f();
      int i1 = f.size();
      return i1;
    }
  }
  
  public void c(int paramInt)
  {
    for (;;)
    {
      synchronized (d)
      {
        f();
        o localo1 = (o)e.get(paramInt);
        o localo2 = (o)e.get(0);
        if (localo2 != null)
        {
          f1 = b - b + 5.0F;
          a(new q(new ComponentName(a.activityInfo.packageName, a.activityInfo.name), System.currentTimeMillis(), f1));
          return;
        }
      }
      float f1 = 1.0F;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */