package com.yelp.android.ui.activities.media;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.yelp.android.ui.activities.support.YelpFragment;
import com.yelp.android.ui.util.cr;
import java.lang.ref.WeakReference;

public class e
  extends AsyncTask<Bitmap, Void, Boolean>
{
  private final WeakReference<YelpFragment> a;
  
  public e(YelpFragment paramYelpFragment)
  {
    a = new WeakReference(paramYelpFragment);
  }
  
  /* Error */
  protected Boolean a(Bitmap... paramVarArgs)
  {
    // Byte code:
    //   0: aload_1
    //   1: iconst_0
    //   2: aaload
    //   3: astore 6
    //   5: invokestatic 30	com/yelp/android/util/l:c	()Ljava/io/File;
    //   8: astore 7
    //   10: aload 7
    //   12: ifnonnull +8 -> 20
    //   15: iconst_0
    //   16: invokestatic 36	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   19: areturn
    //   20: iconst_1
    //   21: istore_3
    //   22: new 38	java/io/BufferedOutputStream
    //   25: dup
    //   26: new 40	java/io/FileOutputStream
    //   29: dup
    //   30: aload 7
    //   32: invokespecial 43	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   35: invokespecial 46	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   38: astore 5
    //   40: aload 5
    //   42: astore_1
    //   43: aload 6
    //   45: getstatic 52	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   48: bipush 85
    //   50: aload 5
    //   52: invokevirtual 58	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   55: pop
    //   56: aload 5
    //   58: astore_1
    //   59: aload 5
    //   61: invokevirtual 63	java/io/OutputStream:flush	()V
    //   64: iload_3
    //   65: istore_2
    //   66: aload 5
    //   68: ifnull +10 -> 78
    //   71: aload 5
    //   73: invokevirtual 66	java/io/OutputStream:close	()V
    //   76: iload_3
    //   77: istore_2
    //   78: iload_2
    //   79: ifne +79 -> 158
    //   82: iconst_0
    //   83: invokestatic 36	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   86: areturn
    //   87: astore_1
    //   88: aload_1
    //   89: invokestatic 72	com/yelp/android/util/YelpLog:error	(Ljava/lang/Exception;)V
    //   92: iconst_0
    //   93: istore_2
    //   94: goto -16 -> 78
    //   97: astore 6
    //   99: aconst_null
    //   100: astore 5
    //   102: aload 5
    //   104: astore_1
    //   105: aload 6
    //   107: invokestatic 72	com/yelp/android/util/YelpLog:error	(Ljava/lang/Exception;)V
    //   110: aload 5
    //   112: ifnull +8 -> 120
    //   115: aload 5
    //   117: invokevirtual 66	java/io/OutputStream:close	()V
    //   120: iconst_0
    //   121: istore_2
    //   122: goto -44 -> 78
    //   125: astore_1
    //   126: aload_1
    //   127: invokestatic 72	com/yelp/android/util/YelpLog:error	(Ljava/lang/Exception;)V
    //   130: iconst_0
    //   131: istore_2
    //   132: goto -54 -> 78
    //   135: astore 5
    //   137: aconst_null
    //   138: astore_1
    //   139: aload_1
    //   140: ifnull +7 -> 147
    //   143: aload_1
    //   144: invokevirtual 66	java/io/OutputStream:close	()V
    //   147: aload 5
    //   149: athrow
    //   150: astore_1
    //   151: aload_1
    //   152: invokestatic 72	com/yelp/android/util/YelpLog:error	(Ljava/lang/Exception;)V
    //   155: goto -8 -> 147
    //   158: aload 7
    //   160: invokestatic 75	com/yelp/android/util/l:a	(Ljava/io/File;)Z
    //   163: istore 4
    //   165: aload 7
    //   167: invokevirtual 81	java/io/File:delete	()Z
    //   170: pop
    //   171: iload 4
    //   173: invokestatic 36	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   176: areturn
    //   177: astore 5
    //   179: goto -40 -> 139
    //   182: astore 6
    //   184: goto -82 -> 102
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	187	0	this	e
    //   0	187	1	paramVarArgs	Bitmap[]
    //   65	67	2	i	int
    //   21	56	3	j	int
    //   163	9	4	bool	boolean
    //   38	78	5	localBufferedOutputStream	java.io.BufferedOutputStream
    //   135	13	5	localObject1	Object
    //   177	1	5	localObject2	Object
    //   3	41	6	localBitmap	Bitmap
    //   97	9	6	localIOException1	java.io.IOException
    //   182	1	6	localIOException2	java.io.IOException
    //   8	158	7	localFile	java.io.File
    // Exception table:
    //   from	to	target	type
    //   71	76	87	java/io/IOException
    //   22	40	97	java/io/IOException
    //   115	120	125	java/io/IOException
    //   22	40	135	finally
    //   143	147	150	java/io/IOException
    //   43	56	177	finally
    //   59	64	177	finally
    //   105	110	177	finally
    //   43	56	182	java/io/IOException
    //   59	64	182	java/io/IOException
  }
  
  protected void a(Boolean paramBoolean)
  {
    super.onPostExecute(paramBoolean);
    if ((a.get() != null) && (((YelpFragment)a.get()).isAdded())) {
      ((YelpFragment)a.get()).j();
    }
    if (paramBoolean.booleanValue())
    {
      cr.a(2131166619, 0);
      return;
    }
    cr.a(2131165773, 1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.media.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */