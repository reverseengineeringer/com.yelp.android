.class Lcom/bumptech/glide/load/engine/c;
.super Ljava/lang/Object;
.source "DecodeJob.java"

# interfaces
.implements Lcom/yelp/android/s/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yelp/android/s/b;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/engine/a;

.field private final b:Lcom/bumptech/glide/load/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/a",
            "<TDataType;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/a;Lcom/bumptech/glide/load/a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/a",
            "<TDataType;>;TDataType;)V"
        }
    .end annotation

    .prologue
    .line 258
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/c;->a:Lcom/bumptech/glide/load/engine/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/c;->b:Lcom/bumptech/glide/load/a;

    .line 260
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/c;->c:Ljava/lang/Object;

    .line 261
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Z
    .locals 5

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 266
    const/4 v2, 0x0

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/c;->a:Lcom/bumptech/glide/load/engine/a;

    invoke-static {v1}, Lcom/bumptech/glide/load/engine/a;->a(Lcom/bumptech/glide/load/engine/a;)Lcom/bumptech/glide/load/engine/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/engine/b;->a(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v2

    .line 269
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/c;->b:Lcom/bumptech/glide/load/a;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/c;->c:Ljava/lang/Object;

    invoke-interface {v1, v3, v2}, Lcom/bumptech/glide/load/a;->a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 275
    if-eqz v2, :cond_0

    .line 277
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 283
    :cond_0
    :goto_0
    return v0

    .line 270
    :catch_0
    move-exception v1

    .line 271
    :try_start_2
    const-string/jumbo v3, "DecodeJob"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 272
    const-string/jumbo v3, "DecodeJob"

    const-string/jumbo v4, "Failed to find file to write to disk cache"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    :cond_1
    if-eqz v2, :cond_0

    .line 277
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 278
    :catch_1
    move-exception v1

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 277
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 280
    :cond_2
    :goto_1
    throw v0

    .line 278
    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1
.end method
