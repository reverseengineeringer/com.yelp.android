package android.support.v4.content;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.support.v4.os.c;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Arrays;

public class i
  extends a<Cursor>
{
  final l<Cursor>.a f = new l.a(this);
  Uri g;
  String[] h;
  String i;
  String[] j;
  String k;
  Cursor l;
  c m;
  
  public i(Context paramContext, Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    super(paramContext);
    g = paramUri;
    h = paramArrayOfString1;
    i = paramString1;
    j = paramArrayOfString2;
    k = paramString2;
  }
  
  public void a(Cursor paramCursor)
  {
    if (q()) {
      if (paramCursor != null) {
        paramCursor.close();
      }
    }
    Cursor localCursor;
    do
    {
      return;
      localCursor = l;
      l = paramCursor;
      if (o()) {
        super.b(paramCursor);
      }
    } while ((localCursor == null) || (localCursor == paramCursor) || (localCursor.isClosed()));
    localCursor.close();
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    super.a(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mUri=");
    paramPrintWriter.println(g);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mProjection=");
    paramPrintWriter.println(Arrays.toString(h));
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mSelection=");
    paramPrintWriter.println(i);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mSelectionArgs=");
    paramPrintWriter.println(Arrays.toString(j));
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mSortOrder=");
    paramPrintWriter.println(k);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mCursor=");
    paramPrintWriter.println(l);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mContentChanged=");
    paramPrintWriter.println(u);
  }
  
  public void b(Cursor paramCursor)
  {
    if ((paramCursor != null) && (!paramCursor.isClosed())) {
      paramCursor.close();
    }
  }
  
  public void f()
  {
    super.f();
    try
    {
      if (m != null) {
        m.c();
      }
      return;
    }
    finally {}
  }
  
  /* Error */
  public Cursor h()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 130	android/support/v4/content/i:g	()Z
    //   6: ifeq +16 -> 22
    //   9: new 132	android/support/v4/os/OperationCanceledException
    //   12: dup
    //   13: invokespecial 134	android/support/v4/os/OperationCanceledException:<init>	()V
    //   16: athrow
    //   17: astore_1
    //   18: aload_0
    //   19: monitorexit
    //   20: aload_1
    //   21: athrow
    //   22: aload_0
    //   23: new 123	android/support/v4/os/c
    //   26: dup
    //   27: invokespecial 135	android/support/v4/os/c:<init>	()V
    //   30: putfield 121	android/support/v4/content/i:m	Landroid/support/v4/os/c;
    //   33: aload_0
    //   34: monitorexit
    //   35: aload_0
    //   36: invokevirtual 138	android/support/v4/content/i:m	()Landroid/content/Context;
    //   39: invokevirtual 144	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   42: aload_0
    //   43: getfield 34	android/support/v4/content/i:g	Landroid/net/Uri;
    //   46: aload_0
    //   47: getfield 36	android/support/v4/content/i:h	[Ljava/lang/String;
    //   50: aload_0
    //   51: getfield 38	android/support/v4/content/i:i	Ljava/lang/String;
    //   54: aload_0
    //   55: getfield 40	android/support/v4/content/i:j	[Ljava/lang/String;
    //   58: aload_0
    //   59: getfield 42	android/support/v4/content/i:k	Ljava/lang/String;
    //   62: aload_0
    //   63: getfield 121	android/support/v4/content/i:m	Landroid/support/v4/os/c;
    //   66: invokestatic 149	android/support/v4/content/b:a	(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/os/c;)Landroid/database/Cursor;
    //   69: astore_1
    //   70: aload_1
    //   71: ifnull +20 -> 91
    //   74: aload_1
    //   75: invokeinterface 153 1 0
    //   80: pop
    //   81: aload_1
    //   82: aload_0
    //   83: getfield 32	android/support/v4/content/i:f	Landroid/support/v4/content/l$a;
    //   86: invokeinterface 157 2 0
    //   91: aload_0
    //   92: monitorenter
    //   93: aload_0
    //   94: aconst_null
    //   95: putfield 121	android/support/v4/content/i:m	Landroid/support/v4/os/c;
    //   98: aload_0
    //   99: monitorexit
    //   100: aload_1
    //   101: areturn
    //   102: astore_2
    //   103: aload_1
    //   104: invokeinterface 55 1 0
    //   109: aload_2
    //   110: athrow
    //   111: astore_1
    //   112: aload_0
    //   113: monitorenter
    //   114: aload_0
    //   115: aconst_null
    //   116: putfield 121	android/support/v4/content/i:m	Landroid/support/v4/os/c;
    //   119: aload_0
    //   120: monitorexit
    //   121: aload_1
    //   122: athrow
    //   123: astore_1
    //   124: aload_0
    //   125: monitorexit
    //   126: aload_1
    //   127: athrow
    //   128: astore_1
    //   129: aload_0
    //   130: monitorexit
    //   131: aload_1
    //   132: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	133	0	this	i
    //   17	4	1	localObject1	Object
    //   69	35	1	localCursor	Cursor
    //   111	11	1	localObject2	Object
    //   123	4	1	localObject3	Object
    //   128	4	1	localObject4	Object
    //   102	8	2	localRuntimeException	RuntimeException
    // Exception table:
    //   from	to	target	type
    //   2	17	17	finally
    //   18	20	17	finally
    //   22	35	17	finally
    //   74	91	102	java/lang/RuntimeException
    //   35	70	111	finally
    //   74	91	111	finally
    //   103	111	111	finally
    //   93	100	123	finally
    //   124	126	123	finally
    //   114	121	128	finally
    //   129	131	128	finally
  }
  
  protected void i()
  {
    if (l != null) {
      a(l);
    }
    if ((y()) || (l == null)) {
      t();
    }
  }
  
  protected void j()
  {
    s();
  }
  
  protected void k()
  {
    super.k();
    j();
    if ((l != null) && (!l.isClosed())) {
      l.close();
    }
    l = null;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */