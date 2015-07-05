.class public Lcom/yelp/android/util/l;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public static a()J
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 149
    invoke-static {}, Lcom/yelp/android/util/l;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    const-wide/16 v0, -0x1

    .line 163
    :goto_0
    return-wide v0

    .line 153
    :cond_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 155
    const/16 v1, 0x12

    invoke-static {v1}, Lcom/yelp/android/appdata/n;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    mul-long/2addr v0, v2

    .line 162
    :goto_1
    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    goto :goto_1
.end method

.method public static a(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 53
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_data"

    aput-object v0, v2, v1

    .line 58
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 59
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    .line 66
    if-eqz v1, :cond_0

    .line 67
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v6

    :cond_1
    :goto_0
    return-object v0

    .line 62
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    aget-object v0, v2, v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 66
    if-eqz v1, :cond_1

    .line 67
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v6, :cond_3

    .line 67
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 66
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 224
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpEntity;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/apache/http/HttpEntity;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 239
    invoke-static {p0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 241
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    new-instance v1, Lcom/yelp/android/util/q;

    const/4 v4, 0x0

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    move-object v3, v2

    invoke-direct/range {v1 .. v7}, Lcom/yelp/android/util/q;-><init>([B[B[BLjava/io/InputStream;J)V

    .line 244
    new-instance v0, Lcom/yelp/android/util/p;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Lcom/yelp/android/util/p;-><init>(Ljava/util/Collection;Ljava/util/Collection;Lcom/yelp/android/util/n;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-object v0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    const-string/jumbo v1, "FileUtil"

    const-string/jumbo v2, "Unable to find file"

    invoke-static {v1, v2, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v8

    .line 248
    goto :goto_0
.end method

.method public static a(Ljava/io/File;)Z
    .locals 2

    .prologue
    .line 208
    invoke-static {}, Lcom/yelp/android/util/l;->f()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/util/l;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/io/File;Ljava/io/File;)Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 332
    .line 337
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 339
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 340
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v6

    .line 341
    const-wide/16 v2, 0x0

    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 342
    const/4 v0, 0x1

    .line 347
    if-eqz v1, :cond_0

    .line 348
    :try_start_5
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 350
    :cond_0
    if-eqz v6, :cond_1

    .line 351
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 353
    :cond_1
    if-eqz v8, :cond_2

    .line 354
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 356
    :cond_2
    if-eqz v7, :cond_3

    .line 357
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 363
    :cond_3
    :goto_0
    return v0

    .line 359
    :catch_0
    move-exception v1

    .line 360
    invoke-static {v1}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    goto :goto_0

    .line 343
    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v6, v2

    move-object v3, v2

    .line 344
    :goto_1
    :try_start_6
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 347
    if-eqz v3, :cond_4

    .line 348
    :try_start_7
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 350
    :cond_4
    if-eqz v6, :cond_5

    .line 351
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 353
    :cond_5
    if-eqz v2, :cond_6

    .line 354
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 356
    :cond_6
    if-eqz v1, :cond_7

    .line 357
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 363
    :cond_7
    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    .line 359
    :catch_2
    move-exception v0

    .line 360
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    goto :goto_2

    .line 346
    :catchall_0
    move-exception v0

    move-object v7, v2

    move-object v8, v2

    move-object v1, v2

    .line 347
    :goto_3
    if-eqz v1, :cond_8

    .line 348
    :try_start_8
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 350
    :cond_8
    if-eqz v2, :cond_9

    .line 351
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 353
    :cond_9
    if-eqz v8, :cond_a

    .line 354
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 356
    :cond_a
    if-eqz v7, :cond_b

    .line 357
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 361
    :cond_b
    :goto_4
    throw v0

    .line 359
    :catch_3
    move-exception v1

    .line 360
    invoke-static {v1}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    goto :goto_4

    .line 346
    :catchall_1
    move-exception v0

    move-object v7, v2

    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v2, v6

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object v7, v1

    move-object v8, v2

    move-object v2, v6

    move-object v1, v3

    goto :goto_3

    .line 343
    :catch_4
    move-exception v0

    move-object v1, v2

    move-object v6, v2

    move-object v3, v2

    move-object v2, v8

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v1, v7

    move-object v6, v2

    move-object v3, v2

    move-object v2, v8

    goto :goto_1

    :catch_6
    move-exception v0

    move-object v6, v2

    move-object v3, v1

    move-object v1, v7

    move-object v2, v8

    goto :goto_1

    :catch_7
    move-exception v0

    move-object v2, v8

    move-object v3, v1

    move-object v1, v7

    goto :goto_1
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 296
    invoke-static {}, Lcom/yelp/android/util/l;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    const/4 v0, 0x0

    .line 310
    :goto_0
    return v0

    .line 300
    :cond_0
    invoke-static {p2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 303
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 304
    invoke-static {p0, v1}, Lcom/yelp/android/util/l;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 305
    if-eqz v0, :cond_1

    .line 306
    invoke-static {v1}, Lcom/yelp/android/util/l;->d(Ljava/io/File;)V

    goto :goto_0

    .line 308
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 112
    const/high16 v1, 0x10000

    :try_start_0
    new-array v1, v1, [B

    .line 114
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 115
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    :try_start_1
    const-string/jumbo v2, "FileUtil"

    const-string/jumbo v3, "IOException"

    invoke-static {v2, v3, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    if-eqz p1, :cond_0

    .line 124
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 129
    :cond_0
    :goto_1
    if-eqz p0, :cond_1

    .line 131
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 137
    :cond_1
    :goto_2
    return v0

    .line 117
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 118
    const/4 v0, 0x1

    .line 122
    if-eqz p1, :cond_3

    .line 124
    :try_start_5
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 129
    :cond_3
    :goto_3
    if-eqz p0, :cond_1

    .line 131
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 132
    :catch_1
    move-exception v1

    .line 133
    const-string/jumbo v2, "FileUtil"

    const-string/jumbo v3, "IOException"

    invoke-static {v2, v3, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 125
    :catch_2
    move-exception v1

    .line 126
    const-string/jumbo v2, "FileUtil"

    const-string/jumbo v3, "IOException"

    invoke-static {v2, v3, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 125
    :catch_3
    move-exception v1

    .line 126
    const-string/jumbo v2, "FileUtil"

    const-string/jumbo v3, "IOException"

    invoke-static {v2, v3, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 132
    :catch_4
    move-exception v1

    .line 133
    const-string/jumbo v2, "FileUtil"

    const-string/jumbo v3, "IOException"

    invoke-static {v2, v3, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 122
    :catchall_0
    move-exception v0

    if-eqz p1, :cond_4

    .line 124
    :try_start_7
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 129
    :cond_4
    :goto_4
    if-eqz p0, :cond_5

    .line 131
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 134
    :cond_5
    :goto_5
    throw v0

    .line 125
    :catch_5
    move-exception v1

    .line 126
    const-string/jumbo v2, "FileUtil"

    const-string/jumbo v3, "IOException"

    invoke-static {v2, v3, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 132
    :catch_6
    move-exception v1

    .line 133
    const-string/jumbo v2, "FileUtil"

    const-string/jumbo v3, "IOException"

    invoke-static {v2, v3, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 92
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->z()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v0

    .line 93
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 95
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 97
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 98
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 99
    invoke-static {v0, v2}, Lcom/yelp/android/util/l;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 103
    :goto_0
    return v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    const-string/jumbo v1, "FileUtil"

    invoke-static {v1, v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 103
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()J
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 174
    invoke-static {}, Lcom/yelp/android/util/l;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    const-wide/16 v0, -0x1

    .line 188
    :goto_0
    return-wide v0

    .line 178
    :cond_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 180
    const/16 v1, 0x12

    invoke-static {v1}, Lcom/yelp/android/appdata/n;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    mul-long/2addr v0, v2

    .line 187
    :goto_1
    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/yelp/android/util/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "."

    goto :goto_0
.end method

.method public static b(Ljava/io/File;)Z
    .locals 2

    .prologue
    .line 213
    invoke-static {}, Lcom/yelp/android/util/l;->e()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/util/l;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static c()Ljava/io/File;
    .locals 2

    .prologue
    .line 196
    const-string/jumbo v0, "image-upload"

    invoke-static {}, Lcom/yelp/android/util/l;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 371
    invoke-static {}, Lcom/yelp/android/util/l;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    :goto_0
    return-object v0

    .line 375
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->z()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/yelp/android/appdata/BaseYelpApplication;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 376
    if-nez v1, :cond_1

    .line 377
    const-string/jumbo v1, "FileUtil"

    const-string/jumbo v2, "Unable to open directory to create file."

    invoke-static {v1, v2}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 381
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 218
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 219
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 281
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->z()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/BaseYelpApplication;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 282
    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Ljava/io/File;
    .locals 2

    .prologue
    .line 204
    const-string/jumbo v0, "video-upload"

    invoke-static {}, Lcom/yelp/android/util/l;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 289
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 291
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->z()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/BaseYelpApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 292
    return-void
.end method

.method private static e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 314
    const-string/jumbo v0, "%s.mp4"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f()Ljava/lang/String;
    .locals 4

    .prologue
    .line 318
    const-string/jumbo v0, "%s.jpg"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static g()Z
    .locals 5

    .prologue
    .line 322
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 323
    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 324
    if-nez v1, :cond_0

    .line 325
    const-string/jumbo v2, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "External storage is not in a writable state. Current state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    :cond_0
    return v1
.end method
