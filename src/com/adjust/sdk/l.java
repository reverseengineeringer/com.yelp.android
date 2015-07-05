package com.adjust.sdk;

import android.content.Context;
import android.os.HandlerThread;
import android.os.Message;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;

public class l
  extends HandlerThread
  implements g
{
  private final m a;
  private h b;
  private a c;
  private List<ActivityPackage> d;
  private AtomicBoolean e;
  private boolean f;
  private Context g;
  private boolean h;
  private Logger i;
  
  public l(a parama, Context paramContext, boolean paramBoolean)
  {
    super("Adjust", 1);
    setDaemon(true);
    start();
    a = new m(getLooper(), this);
    i = f.a();
    c = parama;
    g = paramContext;
    h = paramBoolean;
    parama = Message.obtain();
    arg1 = 1;
    a.sendMessage(parama);
  }
  
  private void b(ActivityPackage paramActivityPackage)
  {
    d.add(paramActivityPackage);
    i.c(String.format(Locale.US, "Added package %d (%s)", new Object[] { Integer.valueOf(d.size()), paramActivityPackage }));
    i.b(paramActivityPackage.getExtendedString());
    l();
  }
  
  private void h()
  {
    b = f.a(this);
    e = new AtomicBoolean();
    k();
  }
  
  private void i()
  {
    if (d.isEmpty()) {
      return;
    }
    if (f)
    {
      i.c("Package handler is paused");
      return;
    }
    if (e.getAndSet(true))
    {
      i.b("Package handler is already sending");
      return;
    }
    ActivityPackage localActivityPackage = (ActivityPackage)d.get(0);
    b.a(localActivityPackage);
  }
  
  private void j()
  {
    d.remove(0);
    l();
    e.set(false);
    i();
  }
  
  /* Error */
  private void k()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 63	com/adjust/sdk/l:h	Z
    //   4: ifeq +15 -> 19
    //   7: aload_0
    //   8: new 196	java/util/ArrayList
    //   11: dup
    //   12: invokespecial 197	java/util/ArrayList:<init>	()V
    //   15: putfield 87	com/adjust/sdk/l:d	Ljava/util/List;
    //   18: return
    //   19: new 199	java/io/ObjectInputStream
    //   22: dup
    //   23: new 201	java/io/BufferedInputStream
    //   26: dup
    //   27: aload_0
    //   28: getfield 61	com/adjust/sdk/l:g	Landroid/content/Context;
    //   31: ldc -53
    //   33: invokevirtual 209	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   36: invokespecial 212	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   39: invokespecial 213	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   42: astore_1
    //   43: aload_1
    //   44: invokevirtual 217	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   47: checkcast 89	java/util/List
    //   50: astore_2
    //   51: aload_0
    //   52: getfield 57	com/adjust/sdk/l:i	Lcom/adjust/sdk/Logger;
    //   55: getstatic 99	java/util/Locale:US	Ljava/util/Locale;
    //   58: ldc -37
    //   60: iconst_1
    //   61: anewarray 103	java/lang/Object
    //   64: dup
    //   65: iconst_0
    //   66: aload_2
    //   67: invokeinterface 107 1 0
    //   72: invokestatic 113	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   75: aastore
    //   76: invokestatic 119	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   79: invokeinterface 124 2 0
    //   84: aload_0
    //   85: aload_2
    //   86: putfield 87	com/adjust/sdk/l:d	Ljava/util/List;
    //   89: aload_1
    //   90: invokevirtual 222	java/io/ObjectInputStream:close	()V
    //   93: return
    //   94: astore_1
    //   95: aload_0
    //   96: getfield 57	com/adjust/sdk/l:i	Lcom/adjust/sdk/Logger;
    //   99: ldc -32
    //   101: invokeinterface 132 2 0
    //   106: aload_0
    //   107: new 196	java/util/ArrayList
    //   110: dup
    //   111: invokespecial 197	java/util/ArrayList:<init>	()V
    //   114: putfield 87	com/adjust/sdk/l:d	Ljava/util/List;
    //   117: return
    //   118: astore_2
    //   119: aload_0
    //   120: getfield 57	com/adjust/sdk/l:i	Lcom/adjust/sdk/Logger;
    //   123: ldc -30
    //   125: invokeinterface 228 2 0
    //   130: aload_1
    //   131: invokevirtual 222	java/io/ObjectInputStream:close	()V
    //   134: goto -28 -> 106
    //   137: astore_1
    //   138: aload_0
    //   139: getfield 57	com/adjust/sdk/l:i	Lcom/adjust/sdk/Logger;
    //   142: ldc -26
    //   144: invokeinterface 228 2 0
    //   149: goto -43 -> 106
    //   152: astore_2
    //   153: aload_1
    //   154: invokevirtual 222	java/io/ObjectInputStream:close	()V
    //   157: goto -51 -> 106
    //   160: astore_2
    //   161: aload_0
    //   162: getfield 57	com/adjust/sdk/l:i	Lcom/adjust/sdk/Logger;
    //   165: ldc -24
    //   167: invokeinterface 228 2 0
    //   172: aload_1
    //   173: invokevirtual 222	java/io/ObjectInputStream:close	()V
    //   176: goto -70 -> 106
    //   179: astore_2
    //   180: aload_0
    //   181: getfield 57	com/adjust/sdk/l:i	Lcom/adjust/sdk/Logger;
    //   184: ldc -22
    //   186: invokeinterface 228 2 0
    //   191: aload_1
    //   192: invokevirtual 222	java/io/ObjectInputStream:close	()V
    //   195: goto -89 -> 106
    //   198: astore_2
    //   199: aload_1
    //   200: invokevirtual 222	java/io/ObjectInputStream:close	()V
    //   203: aload_2
    //   204: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	205	0	this	l
    //   42	48	1	localObjectInputStream	java.io.ObjectInputStream
    //   94	37	1	localFileNotFoundException	java.io.FileNotFoundException
    //   137	63	1	localException	Exception
    //   50	36	2	localList	List
    //   118	1	2	localClassNotFoundException	ClassNotFoundException
    //   152	1	2	localOptionalDataException	java.io.OptionalDataException
    //   160	1	2	localIOException	java.io.IOException
    //   179	1	2	localClassCastException	ClassCastException
    //   198	6	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   19	43	94	java/io/FileNotFoundException
    //   89	93	94	java/io/FileNotFoundException
    //   130	134	94	java/io/FileNotFoundException
    //   153	157	94	java/io/FileNotFoundException
    //   172	176	94	java/io/FileNotFoundException
    //   191	195	94	java/io/FileNotFoundException
    //   199	205	94	java/io/FileNotFoundException
    //   43	89	118	java/lang/ClassNotFoundException
    //   19	43	137	java/lang/Exception
    //   89	93	137	java/lang/Exception
    //   130	134	137	java/lang/Exception
    //   153	157	137	java/lang/Exception
    //   172	176	137	java/lang/Exception
    //   191	195	137	java/lang/Exception
    //   199	205	137	java/lang/Exception
    //   43	89	152	java/io/OptionalDataException
    //   43	89	160	java/io/IOException
    //   43	89	179	java/lang/ClassCastException
    //   43	89	198	finally
    //   119	130	198	finally
    //   161	172	198	finally
    //   180	191	198	finally
  }
  
  /* Error */
  private void l()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 63	com/adjust/sdk/l:h	Z
    //   4: ifeq +4 -> 8
    //   7: return
    //   8: new 238	java/io/ObjectOutputStream
    //   11: dup
    //   12: new 240	java/io/BufferedOutputStream
    //   15: dup
    //   16: aload_0
    //   17: getfield 61	com/adjust/sdk/l:g	Landroid/content/Context;
    //   20: ldc -53
    //   22: iconst_0
    //   23: invokevirtual 244	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   26: invokespecial 247	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   29: invokespecial 248	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   32: astore_1
    //   33: aload_1
    //   34: aload_0
    //   35: getfield 87	com/adjust/sdk/l:d	Ljava/util/List;
    //   38: invokevirtual 252	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   41: aload_0
    //   42: getfield 57	com/adjust/sdk/l:i	Lcom/adjust/sdk/Logger;
    //   45: getstatic 99	java/util/Locale:US	Ljava/util/Locale;
    //   48: ldc -2
    //   50: iconst_1
    //   51: anewarray 103	java/lang/Object
    //   54: dup
    //   55: iconst_0
    //   56: aload_0
    //   57: getfield 87	com/adjust/sdk/l:d	Ljava/util/List;
    //   60: invokeinterface 107 1 0
    //   65: invokestatic 113	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   68: aastore
    //   69: invokestatic 119	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   72: invokeinterface 124 2 0
    //   77: aload_1
    //   78: invokevirtual 255	java/io/ObjectOutputStream:close	()V
    //   81: return
    //   82: astore_1
    //   83: aload_0
    //   84: getfield 57	com/adjust/sdk/l:i	Lcom/adjust/sdk/Logger;
    //   87: ldc_w 257
    //   90: iconst_1
    //   91: anewarray 103	java/lang/Object
    //   94: dup
    //   95: iconst_0
    //   96: aload_1
    //   97: invokevirtual 260	java/lang/Exception:getLocalizedMessage	()Ljava/lang/String;
    //   100: aastore
    //   101: invokestatic 263	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   104: invokeinterface 228 2 0
    //   109: aload_1
    //   110: invokevirtual 266	java/lang/Exception:printStackTrace	()V
    //   113: return
    //   114: astore_2
    //   115: aload_0
    //   116: getfield 57	com/adjust/sdk/l:i	Lcom/adjust/sdk/Logger;
    //   119: ldc_w 268
    //   122: invokeinterface 228 2 0
    //   127: aload_1
    //   128: invokevirtual 255	java/io/ObjectOutputStream:close	()V
    //   131: return
    //   132: astore_2
    //   133: aload_1
    //   134: invokevirtual 255	java/io/ObjectOutputStream:close	()V
    //   137: aload_2
    //   138: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	139	0	this	l
    //   32	46	1	localObjectOutputStream	java.io.ObjectOutputStream
    //   82	52	1	localException	Exception
    //   114	1	2	localNotSerializableException	java.io.NotSerializableException
    //   132	6	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   8	33	82	java/lang/Exception
    //   77	81	82	java/lang/Exception
    //   127	131	82	java/lang/Exception
    //   133	139	82	java/lang/Exception
    //   33	77	114	java/io/NotSerializableException
    //   33	77	132	finally
    //   115	127	132	finally
  }
  
  public void a()
  {
    Message localMessage = Message.obtain();
    arg1 = 4;
    a.sendMessage(localMessage);
  }
  
  public void a(ActivityPackage paramActivityPackage)
  {
    Message localMessage = Message.obtain();
    arg1 = 2;
    obj = paramActivityPackage;
    a.sendMessage(localMessage);
  }
  
  public void a(ActivityPackage paramActivityPackage, p paramp)
  {
    paramp.a(paramActivityPackage.getActivityKind());
    c.a(paramp);
  }
  
  public void b()
  {
    Message localMessage = Message.obtain();
    arg1 = 3;
    a.sendMessage(localMessage);
  }
  
  public void c()
  {
    if (h)
    {
      b();
      return;
    }
    e.set(false);
  }
  
  public void d()
  {
    f = true;
  }
  
  public void e()
  {
    f = false;
  }
  
  public String f()
  {
    if (h) {
      return "Dropping offline activity.";
    }
    return "Will retry later.";
  }
  
  public boolean g()
  {
    return h;
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */