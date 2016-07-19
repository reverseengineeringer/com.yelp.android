package android.support.v7.internal.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.AsyncTask;
import android.support.v4.os.a;
import android.text.TextUtils;
import android.util.Log;
import android.util.Xml;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlSerializer;

public class d
  extends DataSetObservable
{
  private static final String a = d.class.getSimpleName();
  private static final Object b = new Object();
  private static final Map<String, d> c = new HashMap();
  private final Object d;
  private final List<a> e;
  private final List<c> f;
  private final Context g;
  private final String h;
  private Intent i;
  private b j;
  private int k;
  private boolean l;
  private boolean m;
  private boolean n;
  private boolean o;
  private d p;
  
  private boolean a(c paramc)
  {
    boolean bool = f.add(paramc);
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
    a.a(new e(null), new Object[] { new ArrayList(f), h });
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
          e.add(new a(localResolveInfo));
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
        c localc = (c)f.remove(0);
        i1 += 1;
      }
    }
  }
  
  /* Error */
  private void k()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 71	android/support/v7/internal/widget/d:g	Landroid/content/Context;
    //   4: aload_0
    //   5: getfield 98	android/support/v7/internal/widget/d:h	Ljava/lang/String;
    //   8: invokevirtual 194	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   11: astore_2
    //   12: invokestatic 200	android/util/Xml:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   15: astore_3
    //   16: aload_3
    //   17: aload_2
    //   18: ldc -54
    //   20: invokeinterface 208 3 0
    //   25: iconst_0
    //   26: istore_1
    //   27: iload_1
    //   28: iconst_1
    //   29: if_icmpeq +18 -> 47
    //   32: iload_1
    //   33: iconst_2
    //   34: if_icmpeq +13 -> 47
    //   37: aload_3
    //   38: invokeinterface 211 1 0
    //   43: istore_1
    //   44: goto -17 -> 27
    //   47: ldc -43
    //   49: aload_3
    //   50: invokeinterface 216 1 0
    //   55: invokevirtual 221	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   58: ifne +53 -> 111
    //   61: new 188	org/xmlpull/v1/XmlPullParserException
    //   64: dup
    //   65: ldc -33
    //   67: invokespecial 224	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   70: athrow
    //   71: astore_3
    //   72: getstatic 55	android/support/v7/internal/widget/d:a	Ljava/lang/String;
    //   75: new 226	java/lang/StringBuilder
    //   78: dup
    //   79: invokespecial 227	java/lang/StringBuilder:<init>	()V
    //   82: ldc -27
    //   84: invokevirtual 233	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: aload_0
    //   88: getfield 98	android/support/v7/internal/widget/d:h	Ljava/lang/String;
    //   91: invokevirtual 233	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: invokevirtual 236	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   97: aload_3
    //   98: invokestatic 241	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   101: pop
    //   102: aload_2
    //   103: ifnull +7 -> 110
    //   106: aload_2
    //   107: invokevirtual 246	java/io/FileInputStream:close	()V
    //   110: return
    //   111: aload_0
    //   112: getfield 74	android/support/v7/internal/widget/d:f	Ljava/util/List;
    //   115: astore 4
    //   117: aload 4
    //   119: invokeinterface 152 1 0
    //   124: aload_3
    //   125: invokeinterface 211 1 0
    //   130: istore_1
    //   131: iload_1
    //   132: iconst_1
    //   133: if_icmpne +14 -> 147
    //   136: aload_2
    //   137: ifnull -27 -> 110
    //   140: aload_2
    //   141: invokevirtual 246	java/io/FileInputStream:close	()V
    //   144: return
    //   145: astore_2
    //   146: return
    //   147: iload_1
    //   148: iconst_3
    //   149: if_icmpeq -25 -> 124
    //   152: iload_1
    //   153: iconst_4
    //   154: if_icmpeq -30 -> 124
    //   157: ldc -8
    //   159: aload_3
    //   160: invokeinterface 216 1 0
    //   165: invokevirtual 221	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   168: ifne +55 -> 223
    //   171: new 188	org/xmlpull/v1/XmlPullParserException
    //   174: dup
    //   175: ldc -6
    //   177: invokespecial 224	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   180: athrow
    //   181: astore_3
    //   182: getstatic 55	android/support/v7/internal/widget/d:a	Ljava/lang/String;
    //   185: new 226	java/lang/StringBuilder
    //   188: dup
    //   189: invokespecial 227	java/lang/StringBuilder:<init>	()V
    //   192: ldc -27
    //   194: invokevirtual 233	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   197: aload_0
    //   198: getfield 98	android/support/v7/internal/widget/d:h	Ljava/lang/String;
    //   201: invokevirtual 233	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   204: invokevirtual 236	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   207: aload_3
    //   208: invokestatic 241	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   211: pop
    //   212: aload_2
    //   213: ifnull -103 -> 110
    //   216: aload_2
    //   217: invokevirtual 246	java/io/FileInputStream:close	()V
    //   220: return
    //   221: astore_2
    //   222: return
    //   223: aload 4
    //   225: new 14	android/support/v7/internal/widget/d$c
    //   228: dup
    //   229: aload_3
    //   230: aconst_null
    //   231: ldc -4
    //   233: invokeinterface 256 3 0
    //   238: aload_3
    //   239: aconst_null
    //   240: ldc_w 258
    //   243: invokeinterface 256 3 0
    //   248: invokestatic 264	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   251: aload_3
    //   252: aconst_null
    //   253: ldc_w 266
    //   256: invokeinterface 256 3 0
    //   261: invokestatic 272	java/lang/Float:parseFloat	(Ljava/lang/String;)F
    //   264: invokespecial 275	android/support/v7/internal/widget/d$c:<init>	(Ljava/lang/String;JF)V
    //   267: invokeinterface 80 2 0
    //   272: pop
    //   273: goto -149 -> 124
    //   276: astore_3
    //   277: aload_2
    //   278: ifnull +7 -> 285
    //   281: aload_2
    //   282: invokevirtual 246	java/io/FileInputStream:close	()V
    //   285: aload_3
    //   286: athrow
    //   287: astore_2
    //   288: return
    //   289: astore_2
    //   290: goto -5 -> 285
    //   293: astore_2
    //   294: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	295	0	this	d
    //   26	129	1	i1	int
    //   11	130	2	localFileInputStream	java.io.FileInputStream
    //   145	72	2	localIOException1	IOException
    //   221	61	2	localIOException2	IOException
    //   287	1	2	localIOException3	IOException
    //   289	1	2	localIOException4	IOException
    //   293	1	2	localFileNotFoundException	FileNotFoundException
    //   15	35	3	localXmlPullParser	org.xmlpull.v1.XmlPullParser
    //   71	89	3	localXmlPullParserException	org.xmlpull.v1.XmlPullParserException
    //   181	71	3	localIOException5	IOException
    //   276	10	3	localObject	Object
    //   115	109	4	localList	List
    // Exception table:
    //   from	to	target	type
    //   12	25	71	org/xmlpull/v1/XmlPullParserException
    //   37	44	71	org/xmlpull/v1/XmlPullParserException
    //   47	71	71	org/xmlpull/v1/XmlPullParserException
    //   111	124	71	org/xmlpull/v1/XmlPullParserException
    //   124	131	71	org/xmlpull/v1/XmlPullParserException
    //   157	181	71	org/xmlpull/v1/XmlPullParserException
    //   223	273	71	org/xmlpull/v1/XmlPullParserException
    //   140	144	145	java/io/IOException
    //   12	25	181	java/io/IOException
    //   37	44	181	java/io/IOException
    //   47	71	181	java/io/IOException
    //   111	124	181	java/io/IOException
    //   124	131	181	java/io/IOException
    //   157	181	181	java/io/IOException
    //   223	273	181	java/io/IOException
    //   216	220	221	java/io/IOException
    //   12	25	276	finally
    //   37	44	276	finally
    //   47	71	276	finally
    //   72	102	276	finally
    //   111	124	276	finally
    //   124	131	276	finally
    //   157	181	276	finally
    //   182	212	276	finally
    //   223	273	276	finally
    //   106	110	287	java/io/IOException
    //   281	285	289	java/io/IOException
    //   0	12	293	java/io/FileNotFoundException
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
      Object localObject2 = (a)e.get(paramInt);
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
      a(new c((ComponentName)localObject2, System.currentTimeMillis(), 1.0F));
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
        a locala1 = (a)e.get(paramInt);
        a locala2 = (a)e.get(0);
        if (locala2 != null)
        {
          f1 = b - b + 5.0F;
          a(new c(new ComponentName(a.activityInfo.packageName, a.activityInfo.name), System.currentTimeMillis(), f1));
          return;
        }
      }
      float f1 = 1.0F;
    }
  }
  
  public final class a
    implements Comparable<a>
  {
    public final ResolveInfo a;
    public float b;
    
    public a(ResolveInfo paramResolveInfo)
    {
      a = paramResolveInfo;
    }
    
    public int a(a parama)
    {
      return Float.floatToIntBits(b) - Float.floatToIntBits(b);
    }
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {}
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (a)paramObject;
      } while (Float.floatToIntBits(b) == Float.floatToIntBits(b));
      return false;
    }
    
    public int hashCode()
    {
      return Float.floatToIntBits(b) + 31;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("[");
      localStringBuilder.append("resolveInfo:").append(a.toString());
      localStringBuilder.append("; weight:").append(new BigDecimal(b));
      localStringBuilder.append("]");
      return localStringBuilder.toString();
    }
  }
  
  public static abstract interface b
  {
    public abstract void a(Intent paramIntent, List<d.a> paramList, List<d.c> paramList1);
  }
  
  public static final class c
  {
    public final ComponentName a;
    public final long b;
    public final float c;
    
    public c(ComponentName paramComponentName, long paramLong, float paramFloat)
    {
      a = paramComponentName;
      b = paramLong;
      c = paramFloat;
    }
    
    public c(String paramString, long paramLong, float paramFloat)
    {
      this(ComponentName.unflattenFromString(paramString), paramLong, paramFloat);
    }
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {}
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (c)paramObject;
        if (a == null)
        {
          if (a != null) {
            return false;
          }
        }
        else if (!a.equals(a)) {
          return false;
        }
        if (b != b) {
          return false;
        }
      } while (Float.floatToIntBits(c) == Float.floatToIntBits(c));
      return false;
    }
    
    public int hashCode()
    {
      if (a == null) {}
      for (int i = 0;; i = a.hashCode()) {
        return ((i + 31) * 31 + (int)(b ^ b >>> 32)) * 31 + Float.floatToIntBits(c);
      }
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("[");
      localStringBuilder.append("; activity:").append(a);
      localStringBuilder.append("; time:").append(b);
      localStringBuilder.append("; weight:").append(new BigDecimal(c));
      localStringBuilder.append("]");
      return localStringBuilder.toString();
    }
  }
  
  public static abstract interface d
  {
    public abstract boolean a(d paramd, Intent paramIntent);
  }
  
  private final class e
    extends AsyncTask<Object, Void, Void>
  {
    private e() {}
    
    public Void a(Object... paramVarArgs)
    {
      int i = 0;
      List localList = (List)paramVarArgs[0];
      Object localObject2 = (String)paramVarArgs[1];
      for (;;)
      {
        try
        {
          paramVarArgs = d.a(d.this).openFileOutput((String)localObject2, 0);
          localObject2 = Xml.newSerializer();
          int j;
          d.c localc;
          ((XmlSerializer)localObject2).endTag(null, "historical-records");
        }
        catch (FileNotFoundException paramVarArgs)
        {
          try
          {
            ((XmlSerializer)localObject2).setOutput(paramVarArgs, null);
            ((XmlSerializer)localObject2).startDocument("UTF-8", Boolean.valueOf(true));
            ((XmlSerializer)localObject2).startTag(null, "historical-records");
            j = localList.size();
            if (i >= j) {
              break label213;
            }
            localc = (d.c)localList.remove(0);
            ((XmlSerializer)localObject2).startTag(null, "historical-record");
            ((XmlSerializer)localObject2).attribute(null, "activity", a.flattenToString());
            ((XmlSerializer)localObject2).attribute(null, "time", String.valueOf(b));
            ((XmlSerializer)localObject2).attribute(null, "weight", String.valueOf(c));
            ((XmlSerializer)localObject2).endTag(null, "historical-record");
            i += 1;
            continue;
            paramVarArgs = paramVarArgs;
            Log.e(d.d(), "Error writing historical recrod file: " + (String)localObject2, paramVarArgs);
          }
          catch (IllegalArgumentException localIllegalArgumentException)
          {
            Log.e(d.d(), "Error writing historical recrod file: " + d.b(d.this), localIllegalArgumentException);
            d.a(d.this, true);
            if (paramVarArgs == null) {
              continue;
            }
            try
            {
              paramVarArgs.close();
              return null;
            }
            catch (IOException paramVarArgs)
            {
              return null;
            }
          }
          catch (IllegalStateException localIllegalStateException)
          {
            Log.e(d.d(), "Error writing historical recrod file: " + d.b(d.this), localIllegalStateException);
            d.a(d.this, true);
            if (paramVarArgs == null) {
              continue;
            }
            try
            {
              paramVarArgs.close();
              return null;
            }
            catch (IOException paramVarArgs)
            {
              return null;
            }
          }
          catch (IOException localIOException)
          {
            Log.e(d.d(), "Error writing historical recrod file: " + d.b(d.this), localIOException);
            d.a(d.this, true);
            if (paramVarArgs == null) {
              continue;
            }
            try
            {
              paramVarArgs.close();
              return null;
            }
            catch (IOException paramVarArgs)
            {
              return null;
            }
          }
          finally
          {
            d.a(d.this, true);
            if (paramVarArgs == null) {
              break label446;
            }
          }
          return null;
        }
        label213:
        ((XmlSerializer)localObject2).endDocument();
        d.a(d.this, true);
        if (paramVarArgs != null) {
          try
          {
            paramVarArgs.close();
            return null;
          }
          catch (IOException paramVarArgs)
          {
            return null;
          }
        }
      }
      try
      {
        paramVarArgs.close();
        label446:
        throw ((Throwable)localObject1);
      }
      catch (IOException paramVarArgs)
      {
        for (;;) {}
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */