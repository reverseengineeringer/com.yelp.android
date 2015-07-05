package com.yelp.android.util;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;

public final class f
{
  private static final char[] a = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  
  public static Bundle a(Bundle paramBundle, String paramString, Collection<? extends Enum<?>> paramCollection)
  {
    paramBundle.putIntArray(paramString, a(paramCollection));
    return paramBundle;
  }
  
  public static File a(Context paramContext)
  {
    try
    {
      File localFile = g.a(paramContext);
      return localFile;
    }
    catch (Throwable localThrowable) {}
    return new File(TextUtils.join(File.separator, tmp45_38));
  }
  
  public static <T extends Enum<T>> T a(Intent paramIntent, String paramString, Class<T> paramClass)
  {
    paramIntent = paramIntent.getStringExtra(paramString);
    if (paramIntent == null) {
      return null;
    }
    return Enum.valueOf(paramClass, paramIntent);
  }
  
  public static <T extends Enum<T>> T a(Intent paramIntent, String paramString, Class<T> paramClass, T paramT)
  {
    paramIntent = a(paramIntent, paramString, paramClass);
    if (paramIntent == null) {
      return paramT;
    }
    return paramIntent;
  }
  
  public static <T extends Enum<T>> T a(Bundle paramBundle, String paramString, Class<T> paramClass)
  {
    paramBundle = paramBundle.getString(paramString);
    if (paramBundle == null) {
      return null;
    }
    return Enum.valueOf(paramClass, paramBundle);
  }
  
  public static String a(Double paramDouble)
  {
    String str = Double.toString(paramDouble.doubleValue());
    if (!str.endsWith("*"))
    {
      paramDouble = str;
      if (!str.endsWith(")")) {}
    }
    else
    {
      paramDouble = str.substring(0, str.length() - 1);
    }
    return paramDouble;
  }
  
  /* Error */
  public static String a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: new 143	java/io/FileInputStream
    //   6: dup
    //   7: aload_0
    //   8: invokespecial 144	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   11: astore_2
    //   12: aload_2
    //   13: astore_0
    //   14: sipush 1024
    //   17: newarray <illegal type>
    //   19: astore_3
    //   20: aload_2
    //   21: astore_0
    //   22: ldc -110
    //   24: invokestatic 152	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   27: astore 5
    //   29: aload_2
    //   30: astore_0
    //   31: aload_2
    //   32: aload_3
    //   33: invokevirtual 158	java/io/InputStream:read	([B)I
    //   36: istore_1
    //   37: iload_1
    //   38: ifle +41 -> 79
    //   41: aload_2
    //   42: astore_0
    //   43: aload 5
    //   45: aload_3
    //   46: iconst_0
    //   47: iload_1
    //   48: invokevirtual 162	java/security/MessageDigest:update	([BII)V
    //   51: goto -22 -> 29
    //   54: astore_3
    //   55: aload_2
    //   56: astore_0
    //   57: ldc -110
    //   59: aload_3
    //   60: invokestatic 168	com/yelp/android/util/YelpLog:error	(Ljava/lang/Object;Ljava/lang/Exception;)V
    //   63: aload 4
    //   65: astore_0
    //   66: aload_2
    //   67: ifnull +10 -> 77
    //   70: aload_2
    //   71: invokevirtual 171	java/io/InputStream:close	()V
    //   74: aload 4
    //   76: astore_0
    //   77: aload_0
    //   78: areturn
    //   79: aload_2
    //   80: astore_0
    //   81: aload_2
    //   82: invokevirtual 171	java/io/InputStream:close	()V
    //   85: aload_2
    //   86: astore_0
    //   87: aload 5
    //   89: invokevirtual 175	java/security/MessageDigest:digest	()[B
    //   92: invokestatic 178	com/yelp/android/util/f:a	([B)Ljava/lang/String;
    //   95: astore_3
    //   96: aload_3
    //   97: astore_0
    //   98: aload_2
    //   99: ifnull -22 -> 77
    //   102: aload_2
    //   103: invokevirtual 171	java/io/InputStream:close	()V
    //   106: aload_3
    //   107: areturn
    //   108: astore_0
    //   109: aload_0
    //   110: invokestatic 181	com/yelp/android/util/YelpLog:error	(Ljava/lang/Exception;)V
    //   113: aload_3
    //   114: areturn
    //   115: astore_0
    //   116: aload_0
    //   117: invokestatic 181	com/yelp/android/util/YelpLog:error	(Ljava/lang/Exception;)V
    //   120: aconst_null
    //   121: areturn
    //   122: astore_3
    //   123: aconst_null
    //   124: astore_2
    //   125: aload_2
    //   126: astore_0
    //   127: ldc -110
    //   129: aload_3
    //   130: invokestatic 168	com/yelp/android/util/YelpLog:error	(Ljava/lang/Object;Ljava/lang/Exception;)V
    //   133: aload 4
    //   135: astore_0
    //   136: aload_2
    //   137: ifnull -60 -> 77
    //   140: aload_2
    //   141: invokevirtual 171	java/io/InputStream:close	()V
    //   144: aconst_null
    //   145: areturn
    //   146: astore_0
    //   147: aload_0
    //   148: invokestatic 181	com/yelp/android/util/YelpLog:error	(Ljava/lang/Exception;)V
    //   151: aconst_null
    //   152: areturn
    //   153: astore_3
    //   154: aconst_null
    //   155: astore_2
    //   156: aload_2
    //   157: astore_0
    //   158: ldc -110
    //   160: aload_3
    //   161: invokestatic 168	com/yelp/android/util/YelpLog:error	(Ljava/lang/Object;Ljava/lang/Exception;)V
    //   164: aload 4
    //   166: astore_0
    //   167: aload_2
    //   168: ifnull -91 -> 77
    //   171: aload_2
    //   172: invokevirtual 171	java/io/InputStream:close	()V
    //   175: aconst_null
    //   176: areturn
    //   177: astore_0
    //   178: aload_0
    //   179: invokestatic 181	com/yelp/android/util/YelpLog:error	(Ljava/lang/Exception;)V
    //   182: aconst_null
    //   183: areturn
    //   184: astore_2
    //   185: aconst_null
    //   186: astore_0
    //   187: aload_0
    //   188: ifnull +7 -> 195
    //   191: aload_0
    //   192: invokevirtual 171	java/io/InputStream:close	()V
    //   195: aload_2
    //   196: athrow
    //   197: astore_0
    //   198: aload_0
    //   199: invokestatic 181	com/yelp/android/util/YelpLog:error	(Ljava/lang/Exception;)V
    //   202: goto -7 -> 195
    //   205: astore_2
    //   206: goto -19 -> 187
    //   209: astore_3
    //   210: goto -54 -> 156
    //   213: astore_3
    //   214: goto -89 -> 125
    //   217: astore_3
    //   218: aconst_null
    //   219: astore_2
    //   220: goto -165 -> 55
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	223	0	paramString	String
    //   36	12	1	i	int
    //   11	161	2	localFileInputStream	java.io.FileInputStream
    //   184	12	2	localObject1	Object
    //   205	1	2	localObject2	Object
    //   219	1	2	localObject3	Object
    //   19	27	3	arrayOfByte	byte[]
    //   54	6	3	localFileNotFoundException1	java.io.FileNotFoundException
    //   95	19	3	str	String
    //   122	8	3	localNoSuchAlgorithmException1	NoSuchAlgorithmException
    //   153	8	3	localIOException1	java.io.IOException
    //   209	1	3	localIOException2	java.io.IOException
    //   213	1	3	localNoSuchAlgorithmException2	NoSuchAlgorithmException
    //   217	1	3	localFileNotFoundException2	java.io.FileNotFoundException
    //   1	164	4	localObject4	Object
    //   27	61	5	localMessageDigest	MessageDigest
    // Exception table:
    //   from	to	target	type
    //   14	20	54	java/io/FileNotFoundException
    //   22	29	54	java/io/FileNotFoundException
    //   31	37	54	java/io/FileNotFoundException
    //   43	51	54	java/io/FileNotFoundException
    //   81	85	54	java/io/FileNotFoundException
    //   87	96	54	java/io/FileNotFoundException
    //   102	106	108	java/io/IOException
    //   70	74	115	java/io/IOException
    //   3	12	122	java/security/NoSuchAlgorithmException
    //   140	144	146	java/io/IOException
    //   3	12	153	java/io/IOException
    //   171	175	177	java/io/IOException
    //   3	12	184	finally
    //   191	195	197	java/io/IOException
    //   14	20	205	finally
    //   22	29	205	finally
    //   31	37	205	finally
    //   43	51	205	finally
    //   57	63	205	finally
    //   81	85	205	finally
    //   87	96	205	finally
    //   127	133	205	finally
    //   158	164	205	finally
    //   14	20	209	java/io/IOException
    //   22	29	209	java/io/IOException
    //   31	37	209	java/io/IOException
    //   43	51	209	java/io/IOException
    //   81	85	209	java/io/IOException
    //   87	96	209	java/io/IOException
    //   14	20	213	java/security/NoSuchAlgorithmException
    //   22	29	213	java/security/NoSuchAlgorithmException
    //   31	37	213	java/security/NoSuchAlgorithmException
    //   43	51	213	java/security/NoSuchAlgorithmException
    //   81	85	213	java/security/NoSuchAlgorithmException
    //   87	96	213	java/security/NoSuchAlgorithmException
    //   3	12	217	java/io/FileNotFoundException
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    int j = 0;
    int k = paramArrayOfByte.length;
    char[] arrayOfChar = new char[k << 1];
    int i = 0;
    while (i < k)
    {
      int m = j + 1;
      arrayOfChar[j] = a[((paramArrayOfByte[i] & 0xF0) >>> 4)];
      j = m + 1;
      arrayOfChar[m] = a[(paramArrayOfByte[i] & 0xF)];
      i += 1;
    }
    return new String(arrayOfChar);
  }
  
  public static <T extends Enum<T>> ArrayList<T> a(Bundle paramBundle, String paramString, T[] paramArrayOfT)
  {
    return a(paramBundle.getIntArray(paramString), paramArrayOfT);
  }
  
  public static <T extends Enum<T>> ArrayList<T> a(int[] paramArrayOfInt, T[] paramArrayOfT)
  {
    Object localObject;
    if (paramArrayOfInt == null)
    {
      localObject = new ArrayList();
      return (ArrayList<T>)localObject;
    }
    ArrayList localArrayList = new ArrayList(paramArrayOfInt.length);
    int j = paramArrayOfInt.length;
    int i = 0;
    for (;;)
    {
      localObject = localArrayList;
      if (i >= j) {
        break;
      }
      localArrayList.add(paramArrayOfT[paramArrayOfInt[i]]);
      i += 1;
    }
  }
  
  public static HashSet<String> a(String[] paramArrayOfString)
  {
    HashSet localHashSet = new HashSet();
    int j = paramArrayOfString.length;
    int i = 0;
    while (i < j)
    {
      localHashSet.add(paramArrayOfString[i]);
      i += 1;
    }
    return localHashSet;
  }
  
  public static void a(Intent paramIntent, String paramString, Enum<?> paramEnum)
  {
    if (paramEnum == null) {}
    for (paramEnum = null;; paramEnum = paramEnum.name())
    {
      paramIntent.putExtra(paramString, paramEnum);
      return;
    }
  }
  
  public static void a(Bundle paramBundle, String paramString, Enum<?> paramEnum)
  {
    if (paramEnum == null) {}
    for (paramEnum = null;; paramEnum = paramEnum.name())
    {
      paramBundle.putString(paramString, paramEnum);
      return;
    }
  }
  
  public static int[] a(Collection<? extends Enum<?>> paramCollection)
  {
    if (paramCollection == null) {
      return new int[0];
    }
    int[] arrayOfInt = new int[paramCollection.size()];
    paramCollection = paramCollection.iterator();
    int i = 0;
    while (paramCollection.hasNext())
    {
      arrayOfInt[i] = ((Enum)paramCollection.next()).ordinal();
      i += 1;
    }
    return arrayOfInt;
  }
  
  public static String b(String paramString)
  {
    try
    {
      paramString = a(MessageDigest.getInstance("SHA-1").digest(paramString.getBytes()));
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      YelpLog.error(paramString);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */