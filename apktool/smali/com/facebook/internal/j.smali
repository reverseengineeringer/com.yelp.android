.class public Lcom/facebook/internal/j;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/j$b;,
        Lcom/facebook/internal/j$a;,
        Lcom/facebook/internal/j$c;,
        Lcom/facebook/internal/j$d;
    }
.end annotation


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Lcom/facebook/internal/x;

.field private static c:Lcom/facebook/internal/x;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/internal/j$d;",
            "Lcom/facebook/internal/j$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/facebook/internal/x;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/facebook/internal/x;-><init>(I)V

    sput-object v0, Lcom/facebook/internal/j;->b:Lcom/facebook/internal/x;

    .line 52
    new-instance v0, Lcom/facebook/internal/x;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/facebook/internal/x;-><init>(I)V

    sput-object v0, Lcom/facebook/internal/j;->c:Lcom/facebook/internal/x;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/j;->d:Ljava/util/Map;

    return-void
.end method

.method private static declared-synchronized a()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 298
    const-class v1, Lcom/facebook/internal/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/internal/j;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/facebook/internal/j;->a:Landroid/os/Handler;

    .line 301
    :cond_0
    sget-object v0, Lcom/facebook/internal/j;->a:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lcom/facebook/internal/j$d;)Lcom/facebook/internal/j$c;
    .locals 2

    .prologue
    .line 305
    sget-object v1, Lcom/facebook/internal/j;->d:Ljava/util/Map;

    monitor-enter v1

    .line 306
    :try_start_0
    sget-object v0, Lcom/facebook/internal/j;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/j$c;

    monitor-exit v1

    return-object v0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/facebook/internal/j$d;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/facebook/internal/j;->b(Lcom/facebook/internal/j$d;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/internal/j$d;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 47
    invoke-static {p0, p1, p2}, Lcom/facebook/internal/j;->b(Lcom/facebook/internal/j$d;Landroid/content/Context;Z)V

    return-void
.end method

.method private static a(Lcom/facebook/internal/j$d;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
    .locals 7

    .prologue
    .line 173
    invoke-static {p0}, Lcom/facebook/internal/j;->a(Lcom/facebook/internal/j$d;)Lcom/facebook/internal/j$c;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/facebook/internal/j$c;->c:Z

    if-nez v1, :cond_0

    .line 175
    iget-object v1, v0, Lcom/facebook/internal/j$c;->b:Lcom/facebook/internal/k;

    .line 176
    invoke-virtual {v1}, Lcom/facebook/internal/k;->c()Lcom/facebook/internal/k$b;

    move-result-object v5

    .line 177
    if-eqz v5, :cond_0

    .line 178
    invoke-static {}, Lcom/facebook/internal/j;->a()Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/facebook/internal/j$1;

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/internal/j$1;-><init>(Lcom/facebook/internal/k;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/internal/k$b;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    :cond_0
    return-void
.end method

.method public static a(Lcom/facebook/internal/k;)V
    .locals 3

    .prologue
    .line 62
    if-nez p0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 72
    :cond_0
    new-instance v1, Lcom/facebook/internal/j$d;

    invoke-virtual {p0}, Lcom/facebook/internal/k;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/internal/k;->e()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/facebook/internal/j$d;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 73
    sget-object v2, Lcom/facebook/internal/j;->d:Ljava/util/Map;

    monitor-enter v2

    .line 74
    :try_start_0
    sget-object v0, Lcom/facebook/internal/j;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/j$c;

    .line 75
    if-eqz v0, :cond_1

    .line 76
    iput-object p0, v0, Lcom/facebook/internal/j$c;->b:Lcom/facebook/internal/k;

    .line 77
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/facebook/internal/j$c;->c:Z

    .line 78
    iget-object v0, v0, Lcom/facebook/internal/j$c;->a:Lcom/facebook/internal/x$a;

    invoke-interface {v0}, Lcom/facebook/internal/x$a;->b()V

    .line 82
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 80
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/internal/k;->d()Z

    move-result v0

    invoke-static {p0, v1, v0}, Lcom/facebook/internal/j;->a(Lcom/facebook/internal/k;Lcom/facebook/internal/j$d;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static a(Lcom/facebook/internal/k;Lcom/facebook/internal/j$d;)V
    .locals 3

    .prologue
    .line 137
    sget-object v0, Lcom/facebook/internal/j;->b:Lcom/facebook/internal/x;

    new-instance v1, Lcom/facebook/internal/j$b;

    invoke-virtual {p0}, Lcom/facebook/internal/k;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/facebook/internal/j$b;-><init>(Landroid/content/Context;Lcom/facebook/internal/j$d;)V

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/internal/j;->a(Lcom/facebook/internal/k;Lcom/facebook/internal/j$d;Lcom/facebook/internal/x;Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method

.method private static a(Lcom/facebook/internal/k;Lcom/facebook/internal/j$d;Lcom/facebook/internal/x;Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 149
    sget-object v1, Lcom/facebook/internal/j;->d:Ljava/util/Map;

    monitor-enter v1

    .line 150
    :try_start_0
    new-instance v0, Lcom/facebook/internal/j$c;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/facebook/internal/j$c;-><init>(Lcom/facebook/internal/j$1;)V

    .line 151
    iput-object p0, v0, Lcom/facebook/internal/j$c;->b:Lcom/facebook/internal/k;

    .line 152
    sget-object v2, Lcom/facebook/internal/j;->d:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {p2, p3}, Lcom/facebook/internal/x;->a(Ljava/lang/Runnable;)Lcom/facebook/internal/x$a;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/internal/j$c;->a:Lcom/facebook/internal/x$a;

    .line 163
    monitor-exit v1

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Lcom/facebook/internal/k;Lcom/facebook/internal/j$d;Z)V
    .locals 3

    .prologue
    .line 129
    sget-object v0, Lcom/facebook/internal/j;->c:Lcom/facebook/internal/x;

    new-instance v1, Lcom/facebook/internal/j$a;

    invoke-virtual {p0}, Lcom/facebook/internal/k;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/facebook/internal/j$a;-><init>(Landroid/content/Context;Lcom/facebook/internal/j$d;Z)V

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/internal/j;->a(Lcom/facebook/internal/k;Lcom/facebook/internal/j$d;Lcom/facebook/internal/x;Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method private static b(Lcom/facebook/internal/j$d;Landroid/content/Context;)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 227
    .line 231
    const/4 v1, 0x1

    .line 234
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v4, p0, Lcom/facebook/internal/j$d;->a:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 236
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 238
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 268
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v5

    .line 269
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    if-eqz v5, :cond_3

    .line 271
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 272
    const/16 v7, 0x80

    new-array v7, v7, [C

    .line 274
    :goto_0
    const/4 v8, 0x0

    array-length v9, v7

    invoke-virtual {v4, v7, v8, v9}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v8

    if-lez v8, :cond_2

    .line 275
    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 285
    :catch_0
    move-exception v4

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    .line 288
    :goto_1
    invoke-static {v5}, Lcom/facebook/internal/u;->a(Ljava/io/Closeable;)V

    .line 289
    invoke-static {v4}, Lcom/facebook/internal/u;->a(Ljava/net/URLConnection;)V

    move-object v4, v0

    .line 292
    :goto_2
    if-eqz v1, :cond_0

    .line 293
    invoke-static {p0, v4, v3, v2}, Lcom/facebook/internal/j;->a(Lcom/facebook/internal/j$d;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    .line 295
    :cond_0
    return-void

    .line 244
    :sswitch_0
    :try_start_3
    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-static {v1}, Lcom/facebook/internal/u;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 246
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 247
    iget-object v4, p0, Lcom/facebook/internal/j$d;->a:Landroid/net/Uri;

    invoke-static {v4, v1}, Lcom/facebook/internal/t;->a(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 251
    invoke-static {p0}, Lcom/facebook/internal/j;->a(Lcom/facebook/internal/j$d;)Lcom/facebook/internal/j$c;

    move-result-object v4

    .line 252
    if-eqz v4, :cond_1

    iget-boolean v5, v4, Lcom/facebook/internal/j$c;->c:Z

    if-nez v5, :cond_1

    .line 253
    iget-object v4, v4, Lcom/facebook/internal/j$c;->b:Lcom/facebook/internal/k;

    new-instance v5, Lcom/facebook/internal/j$d;

    iget-object v6, p0, Lcom/facebook/internal/j$d;->b:Ljava/lang/Object;

    invoke-direct {v5, v1, v6}, Lcom/facebook/internal/j$d;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v4, v5, v1}, Lcom/facebook/internal/j;->a(Lcom/facebook/internal/k;Lcom/facebook/internal/j$d;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    move v1, v2

    move-object v4, v3

    move-object v5, v3

    .line 288
    :goto_3
    invoke-static {v5}, Lcom/facebook/internal/u;->a(Ljava/io/Closeable;)V

    .line 289
    invoke-static {v0}, Lcom/facebook/internal/u;->a(Ljava/net/URLConnection;)V

    goto :goto_2

    .line 263
    :sswitch_1
    :try_start_4
    invoke-static {p1, v0}, Lcom/facebook/internal/m;->a(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v5

    .line 264
    :try_start_5
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    .line 265
    goto :goto_3

    .line 277
    :cond_2
    invoke-static {v4}, Lcom/facebook/internal/u;->a(Ljava/io/Closeable;)V

    .line 282
    :goto_4
    new-instance v4, Lcom/facebook/FacebookException;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 288
    :catchall_0
    move-exception v1

    move-object v3, v5

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_5
    invoke-static {v3}, Lcom/facebook/internal/u;->a(Ljava/io/Closeable;)V

    .line 289
    invoke-static {v1}, Lcom/facebook/internal/u;->a(Ljava/net/URLConnection;)V

    throw v0

    .line 279
    :cond_3
    :try_start_6
    sget v4, Lcom/facebook/o$f;->com_facebook_image_download_unknown_error:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 288
    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_5

    .line 285
    :catch_1
    move-exception v0

    move-object v5, v3

    move-object v4, v3

    goto :goto_1

    :catch_2
    move-exception v4

    move-object v5, v3

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    goto/16 :goto_1

    :catch_3
    move-exception v1

    move-object v5, v3

    move-object v4, v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_1

    :cond_4
    move v1, v2

    move-object v4, v3

    move-object v5, v3

    goto :goto_3

    .line 238
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x12d -> :sswitch_0
        0x12e -> :sswitch_0
    .end sparse-switch
.end method

.method private static b(Lcom/facebook/internal/j$d;Landroid/content/Context;Z)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 197
    .line 199
    if-eqz p2, :cond_4

    .line 200
    iget-object v1, p0, Lcom/facebook/internal/j$d;->a:Landroid/net/Uri;

    invoke-static {v1}, Lcom/facebook/internal/t;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_4

    .line 202
    invoke-static {v1, p1}, Lcom/facebook/internal/m;->a(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    .line 203
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    move v4, v0

    move-object v0, v1

    move v1, v4

    .line 207
    :goto_0
    if-nez v1, :cond_1

    .line 208
    iget-object v0, p0, Lcom/facebook/internal/j$d;->a:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/facebook/internal/m;->a(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v0

    .line 211
    :cond_1
    if-eqz v0, :cond_3

    .line 213
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 214
    invoke-static {v0}, Lcom/facebook/internal/u;->a(Ljava/io/Closeable;)V

    .line 215
    invoke-static {p0, v2, v3, v1}, Lcom/facebook/internal/j;->a(Lcom/facebook/internal/j$d;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    .line 224
    :cond_2
    :goto_1
    return-void

    .line 219
    :cond_3
    invoke-static {p0}, Lcom/facebook/internal/j;->a(Lcom/facebook/internal/j$d;)Lcom/facebook/internal/j$c;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/facebook/internal/j$c;->c:Z

    if-nez v1, :cond_2

    .line 221
    iget-object v0, v0, Lcom/facebook/internal/j$c;->b:Lcom/facebook/internal/k;

    invoke-static {v0, p0}, Lcom/facebook/internal/j;->a(Lcom/facebook/internal/k;Lcom/facebook/internal/j$d;)V

    goto :goto_1

    :cond_4
    move v1, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public static b(Lcom/facebook/internal/k;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 86
    const/4 v2, 0x0

    .line 87
    new-instance v3, Lcom/facebook/internal/j$d;

    invoke-virtual {p0}, Lcom/facebook/internal/k;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/internal/k;->e()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/facebook/internal/j$d;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 88
    sget-object v4, Lcom/facebook/internal/j;->d:Ljava/util/Map;

    monitor-enter v4

    .line 89
    :try_start_0
    sget-object v0, Lcom/facebook/internal/j;->d:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/j$c;

    .line 90
    if-eqz v0, :cond_1

    .line 97
    iget-object v2, v0, Lcom/facebook/internal/j$c;->a:Lcom/facebook/internal/x$a;

    invoke-interface {v2}, Lcom/facebook/internal/x$a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    sget-object v0, Lcom/facebook/internal/j;->d:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 105
    :goto_0
    monitor-exit v4

    .line 107
    return v0

    .line 102
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/facebook/internal/j$c;->c:Z

    move v0, v1

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method
