package com.yelp.android.cx;

import com.yelp.android.cw.c;
import com.yelp.android.cw.d;
import java.io.IOException;
import java.net.HttpURLConnection;
import jp.line.android.sdk.exception.LineSdkApiError;
import jp.line.android.sdk.exception.LineSdkApiException;
import org.json.JSONObject;

public abstract class a<RO>
{
  private final boolean a;
  
  protected a(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  protected static jp.line.android.sdk.exception.a a(HttpURLConnection paramHttpURLConnection)
  {
    try
    {
      paramHttpURLConnection = l.a(paramHttpURLConnection);
      if (paramHttpURLConnection != null)
      {
        int i = paramHttpURLConnection.optInt("statusCode", -1);
        paramHttpURLConnection = paramHttpURLConnection.optString("statusMessage");
        if ((i >= 0) && (paramHttpURLConnection != null))
        {
          paramHttpURLConnection = new jp.line.android.sdk.exception.a(i, paramHttpURLConnection);
          return paramHttpURLConnection;
        }
      }
    }
    catch (Throwable paramHttpURLConnection) {}
    return null;
  }
  
  protected static void b(HttpURLConnection paramHttpURLConnection)
    throws IOException
  {
    paramHttpURLConnection.getURL();
    paramHttpURLConnection.connect();
  }
  
  protected String a(c paramc)
    throws LineSdkApiException
  {
    paramc = com.yelp.android.cv.a.a().b();
    if ((paramc == null) || (b == null)) {
      throw new LineSdkApiException(LineSdkApiError.NOT_FOUND_ACCESS_TOKEN);
    }
    return b;
  }
  
  protected abstract void a(HttpURLConnection paramHttpURLConnection, c paramc, d<RO> paramd)
    throws Exception;
  
  /* Error */
  protected final boolean a(c paramc, d<?> paramd)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 9
    //   3: iconst_0
    //   4: istore_3
    //   5: iconst_0
    //   6: istore 5
    //   8: aload_0
    //   9: getfield 16	com/yelp/android/cx/a:a	Z
    //   12: ifeq +311 -> 323
    //   15: aload_0
    //   16: aload_1
    //   17: invokevirtual 91	com/yelp/android/cx/a:a	(Lcom/yelp/android/cw/c;)Ljava/lang/String;
    //   20: astore 8
    //   22: aload_0
    //   23: aload_1
    //   24: invokevirtual 93	com/yelp/android/cx/a:b	(Lcom/yelp/android/cw/c;)Ljava/lang/String;
    //   27: invokestatic 96	com/yelp/android/cx/l:a	(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    //   30: astore 6
    //   32: iload 5
    //   34: istore 4
    //   36: aload 6
    //   38: astore 7
    //   40: aload_0
    //   41: getfield 16	com/yelp/android/cx/a:a	Z
    //   44: ifeq +20 -> 64
    //   47: iload 5
    //   49: istore 4
    //   51: aload 6
    //   53: astore 7
    //   55: aload 6
    //   57: ldc 98
    //   59: aload 8
    //   61: invokevirtual 102	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   64: iload 5
    //   66: istore 4
    //   68: aload 6
    //   70: astore 7
    //   72: aload_0
    //   73: aload 6
    //   75: aload_1
    //   76: aload_2
    //   77: invokevirtual 104	com/yelp/android/cx/a:a	(Ljava/net/HttpURLConnection;Lcom/yelp/android/cw/c;Lcom/yelp/android/cw/d;)V
    //   80: iload 5
    //   82: istore 4
    //   84: aload 6
    //   86: astore 7
    //   88: aload 6
    //   90: invokevirtual 108	java/net/HttpURLConnection:getHeaderFields	()Ljava/util/Map;
    //   93: pop
    //   94: iload 5
    //   96: istore 4
    //   98: aload 6
    //   100: astore 7
    //   102: aload_0
    //   103: aload 6
    //   105: invokevirtual 112	com/yelp/android/cx/a:c	(Ljava/net/HttpURLConnection;)Ljava/lang/Object;
    //   108: astore 8
    //   110: aload 8
    //   112: astore_1
    //   113: iconst_0
    //   114: istore_3
    //   115: iload_3
    //   116: ifne +16 -> 132
    //   119: aload_2
    //   120: ifnull +12 -> 132
    //   123: aload 6
    //   125: astore 7
    //   127: aload_2
    //   128: aload_1
    //   129: invokevirtual 117	com/yelp/android/cw/d:a	(Ljava/lang/Object;)V
    //   132: iload_3
    //   133: istore 4
    //   135: aload 6
    //   137: ifnull +11 -> 148
    //   140: aload 6
    //   142: invokevirtual 120	java/net/HttpURLConnection:disconnect	()V
    //   145: iload_3
    //   146: istore 4
    //   148: iload 4
    //   150: ireturn
    //   151: astore_1
    //   152: iload 5
    //   154: istore 4
    //   156: aload 6
    //   158: astore 7
    //   160: new 61	jp/line/android/sdk/exception/LineSdkApiException
    //   163: dup
    //   164: getstatic 123	jp/line/android/sdk/exception/LineSdkApiError:ILLEGAL_RESPONSE	Ljp/line/android/sdk/exception/LineSdkApiError;
    //   167: aload_1
    //   168: invokespecial 126	jp/line/android/sdk/exception/LineSdkApiException:<init>	(Ljp/line/android/sdk/exception/LineSdkApiError;Ljava/lang/Throwable;)V
    //   171: athrow
    //   172: astore_1
    //   173: iload 4
    //   175: istore_3
    //   176: aload_2
    //   177: ifnull +12 -> 189
    //   180: aload 6
    //   182: astore 7
    //   184: aload_2
    //   185: aload_1
    //   186: invokevirtual 129	com/yelp/android/cw/d:a	(Ljava/lang/Throwable;)V
    //   189: iload_3
    //   190: istore 4
    //   192: aload 6
    //   194: ifnull -46 -> 148
    //   197: aload 6
    //   199: invokevirtual 120	java/net/HttpURLConnection:disconnect	()V
    //   202: iload_3
    //   203: ireturn
    //   204: astore 8
    //   206: iload 5
    //   208: istore 4
    //   210: aload 6
    //   212: astore 7
    //   214: getstatic 132	com/yelp/android/cx/a$1:a	[I
    //   217: aload_1
    //   218: getfield 137	com/yelp/android/cw/c:a	Ljp/line/android/sdk/api/ApiType;
    //   221: invokevirtual 143	jp/line/android/sdk/api/ApiType:ordinal	()I
    //   224: iaload
    //   225: tableswitch	default:+104->329, 1:+45->270, 2:+45->270, 3:+45->270, 4:+45->270
    //   256: iload 5
    //   258: istore 4
    //   260: aload 6
    //   262: astore 7
    //   264: aload 8
    //   266: invokevirtual 147	jp/line/android/sdk/exception/LineSdkApiException:isAccessTokenExpired	()Z
    //   269: istore_3
    //   270: iload_3
    //   271: ifne +46 -> 317
    //   274: iload_3
    //   275: istore 4
    //   277: aload 6
    //   279: astore 7
    //   281: aload 8
    //   283: athrow
    //   284: astore_1
    //   285: aload 7
    //   287: ifnull +8 -> 295
    //   290: aload 7
    //   292: invokevirtual 120	java/net/HttpURLConnection:disconnect	()V
    //   295: aload_1
    //   296: athrow
    //   297: astore_1
    //   298: aconst_null
    //   299: astore 7
    //   301: goto -16 -> 285
    //   304: astore_1
    //   305: aconst_null
    //   306: astore 6
    //   308: iconst_0
    //   309: istore_3
    //   310: goto -134 -> 176
    //   313: astore_1
    //   314: goto -138 -> 176
    //   317: aload 9
    //   319: astore_1
    //   320: goto -205 -> 115
    //   323: aconst_null
    //   324: astore 8
    //   326: goto -304 -> 22
    //   329: goto -73 -> 256
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	332	0	this	a
    //   0	332	1	paramc	c
    //   0	332	2	paramd	d<?>
    //   4	306	3	bool1	boolean
    //   34	242	4	bool2	boolean
    //   6	251	5	bool3	boolean
    //   30	277	6	localHttpURLConnection1	HttpURLConnection
    //   38	262	7	localHttpURLConnection2	HttpURLConnection
    //   20	91	8	localObject1	Object
    //   204	78	8	localLineSdkApiException	LineSdkApiException
    //   324	1	8	localObject2	Object
    //   1	317	9	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   102	110	151	org/json/JSONException
    //   40	47	172	java/lang/Throwable
    //   55	64	172	java/lang/Throwable
    //   72	80	172	java/lang/Throwable
    //   88	94	172	java/lang/Throwable
    //   102	110	172	java/lang/Throwable
    //   160	172	172	java/lang/Throwable
    //   214	256	172	java/lang/Throwable
    //   264	270	172	java/lang/Throwable
    //   281	284	172	java/lang/Throwable
    //   102	110	204	jp/line/android/sdk/exception/LineSdkApiException
    //   40	47	284	finally
    //   55	64	284	finally
    //   72	80	284	finally
    //   88	94	284	finally
    //   102	110	284	finally
    //   127	132	284	finally
    //   160	172	284	finally
    //   184	189	284	finally
    //   214	256	284	finally
    //   264	270	284	finally
    //   281	284	284	finally
    //   8	22	297	finally
    //   22	32	297	finally
    //   8	22	304	java/lang/Throwable
    //   22	32	304	java/lang/Throwable
    //   127	132	313	java/lang/Throwable
  }
  
  protected String b(c paramc)
  {
    return o.a(paramc);
  }
  
  protected abstract RO c(HttpURLConnection paramHttpURLConnection)
    throws Exception;
}

/* Location:
 * Qualified Name:     com.yelp.android.cx.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */