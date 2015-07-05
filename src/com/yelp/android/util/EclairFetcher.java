package com.yelp.android.util;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract.Contacts;
import android.provider.ContactsContract.Data;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;

@TargetApi(7)
class EclairFetcher
  extends ContactsFetcher
{
  private static final boolean c(Cursor paramCursor)
  {
    return (paramCursor != null) && (paramCursor.moveToFirst());
  }
  
  private static final void d(Cursor paramCursor)
  {
    if (paramCursor != null) {
      paramCursor.close();
    }
  }
  
  public Intent a()
  {
    Intent localIntent = new Intent("android.intent.action.PICK");
    localIntent.setData(ContactsContract.Contacts.CONTENT_URI);
    return localIntent;
  }
  
  public ContactsFetcher.Contact a(Context paramContext, Intent paramIntent)
  {
    return new EclairFetcher.EclairContact(paramIntent.getData());
  }
  
  /* Error */
  public String a(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aconst_null
    //   4: astore 6
    //   6: aload_1
    //   7: invokevirtual 66	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   10: astore_1
    //   11: aload_1
    //   12: getstatic 69	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   15: iconst_2
    //   16: anewarray 71	java/lang/String
    //   19: dup
    //   20: iconst_0
    //   21: ldc 73
    //   23: aastore
    //   24: dup
    //   25: iconst_1
    //   26: ldc 75
    //   28: aastore
    //   29: ldc 77
    //   31: iconst_1
    //   32: anewarray 71	java/lang/String
    //   35: dup
    //   36: iconst_0
    //   37: aload_2
    //   38: aastore
    //   39: aconst_null
    //   40: invokevirtual 83	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   43: astore_2
    //   44: new 85	java/util/ArrayList
    //   47: dup
    //   48: invokespecial 86	java/util/ArrayList:<init>	()V
    //   51: astore 8
    //   53: aload_2
    //   54: invokestatic 17	com/yelp/android/util/EclairFetcher:c	(Landroid/database/Cursor;)Z
    //   57: ifeq +52 -> 109
    //   60: aload_2
    //   61: invokeinterface 89 1 0
    //   66: ifne +43 -> 109
    //   69: aload 8
    //   71: aload_2
    //   72: aload_2
    //   73: ldc 73
    //   75: invokeinterface 93 2 0
    //   80: invokeinterface 97 2 0
    //   85: invokestatic 103	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   88: invokevirtual 107	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   91: pop
    //   92: aload_2
    //   93: invokeinterface 110 1 0
    //   98: pop
    //   99: goto -39 -> 60
    //   102: astore_1
    //   103: aload_2
    //   104: invokestatic 22	com/yelp/android/util/EclairFetcher:d	(Landroid/database/Cursor;)V
    //   107: aload_1
    //   108: athrow
    //   109: aload_2
    //   110: invokestatic 22	com/yelp/android/util/EclairFetcher:d	(Landroid/database/Cursor;)V
    //   113: getstatic 69	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   116: astore_2
    //   117: new 112	java/lang/StringBuilder
    //   120: dup
    //   121: invokespecial 113	java/lang/StringBuilder:<init>	()V
    //   124: ldc 115
    //   126: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   129: ldc 121
    //   131: aload 8
    //   133: invokestatic 127	android/text/TextUtils:join	(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    //   136: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   139: ldc -127
    //   141: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   144: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   147: astore 8
    //   149: aload_1
    //   150: aload_2
    //   151: iconst_3
    //   152: anewarray 71	java/lang/String
    //   155: dup
    //   156: iconst_0
    //   157: ldc -121
    //   159: aastore
    //   160: dup
    //   161: iconst_1
    //   162: ldc 75
    //   164: aastore
    //   165: dup
    //   166: iconst_2
    //   167: ldc -119
    //   169: aastore
    //   170: aload 8
    //   172: aconst_null
    //   173: aconst_null
    //   174: invokevirtual 83	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   177: astore_2
    //   178: aload 7
    //   180: astore_1
    //   181: aload_2
    //   182: invokestatic 17	com/yelp/android/util/EclairFetcher:c	(Landroid/database/Cursor;)Z
    //   185: ifeq +58 -> 243
    //   188: aload_2
    //   189: ldc -119
    //   191: invokeinterface 93 2 0
    //   196: istore_3
    //   197: aload_2
    //   198: ldc 75
    //   200: invokeinterface 93 2 0
    //   205: istore 4
    //   207: aload 6
    //   209: astore_1
    //   210: aload_2
    //   211: invokeinterface 89 1 0
    //   216: ifne +27 -> 243
    //   219: aload_2
    //   220: iload_3
    //   221: invokeinterface 97 2 0
    //   226: istore 5
    //   228: aload_2
    //   229: iload 4
    //   231: invokeinterface 141 2 0
    //   236: astore_1
    //   237: iload 5
    //   239: iconst_2
    //   240: if_icmpne +9 -> 249
    //   243: aload_2
    //   244: invokestatic 22	com/yelp/android/util/EclairFetcher:d	(Landroid/database/Cursor;)V
    //   247: aload_1
    //   248: areturn
    //   249: aload_2
    //   250: invokeinterface 110 1 0
    //   255: pop
    //   256: goto -46 -> 210
    //   259: astore_1
    //   260: aload_2
    //   261: invokestatic 22	com/yelp/android/util/EclairFetcher:d	(Landroid/database/Cursor;)V
    //   264: aload_1
    //   265: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	266	0	this	EclairFetcher
    //   0	266	1	paramContext	Context
    //   0	266	2	paramString	String
    //   196	25	3	i	int
    //   205	25	4	j	int
    //   226	15	5	k	int
    //   4	204	6	localObject1	Object
    //   1	178	7	localObject2	Object
    //   51	120	8	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   53	60	102	finally
    //   60	99	102	finally
    //   181	207	259	finally
    //   210	237	259	finally
    //   249	256	259	finally
  }
  
  public List<String> a(Context paramContext)
  {
    Object localObject = paramContext.getContentResolver();
    paramContext = Collections.emptyList();
    Cursor localCursor = ((ContentResolver)localObject).query(ContactsContract.Data.CONTENT_URI, new String[] { "_id", "contact_id", "data1", "data2", "data3" }, "mimetype='vnd.android.cursor.item/email_v2'", null, null);
    try
    {
      if (c(localCursor))
      {
        localObject = new ArrayList();
        int i = localCursor.getColumnIndexOrThrow("data1");
        for (;;)
        {
          paramContext = (Context)localObject;
          if (localCursor.isAfterLast()) {
            break;
          }
          ((List)localObject).add(localCursor.getString(i));
          localCursor.moveToNext();
        }
      }
    }
    finally
    {
      d(localCursor);
    }
    return paramContext;
  }
  
  public List<ContactsFetcher.Contact> a(Context paramContext, String paramString, int paramInt)
  {
    Object localObject = paramContext.getContentResolver();
    paramContext = Collections.emptyList();
    paramString = Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_FILTER_URI, paramString);
    String str = "null limit " + paramInt;
    paramString = ((ContentResolver)localObject).query(paramString, new String[] { "display_name", "_id" }, null, null, str);
    if (c(paramString)) {
      try
      {
        paramContext = new ArrayList();
        paramInt = paramString.getColumnIndex("display_name");
        int i = paramString.getColumnIndex("_id");
        boolean bool;
        do
        {
          long l = paramString.getLong(i);
          localObject = new EclairFetcher.EclairContact(Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, String.valueOf(l)));
          mName = paramString.getString(paramInt);
          paramContext.add(localObject);
          bool = paramString.moveToNext();
        } while (bool);
        return paramContext;
      }
      finally
      {
        d(paramString);
      }
    }
    return paramContext;
  }
  
  public List<ContactsFetcher.Contact> a(Context paramContext, Set<String> paramSet)
  {
    if (paramSet.isEmpty()) {
      return Collections.emptyList();
    }
    paramContext = paramContext.getContentResolver();
    Object localObject = StringUtils.a(",", paramSet, new i(this));
    paramSet = ContactsContract.Data.CONTENT_URI;
    localObject = String.format("%s='%s' AND %s IN (%s)", new Object[] { "mimetype", "vnd.android.cursor.item/email_v2", "data1", localObject });
    paramSet = paramContext.query(paramSet, new String[] { "contact_id", "data1" }, (String)localObject, null, null);
    paramContext = Collections.emptyList();
    try
    {
      if (c(paramSet))
      {
        paramContext = new ArrayList();
        int i = paramSet.getColumnIndex("contact_id");
        int j = paramSet.getColumnIndex("data1");
        boolean bool;
        do
        {
          long l = paramSet.getLong(i);
          localObject = new EclairFetcher.EclairContact(Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, String.valueOf(l)));
          mEmail = paramSet.getString(j);
          paramContext.add(localObject);
          bool = paramSet.moveToNext();
        } while (bool);
      }
      return paramContext;
    }
    finally
    {
      d(paramSet);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.EclairFetcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */