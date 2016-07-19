.class public Lcom/yelp/android/services/g;
.super Ljava/lang/Object;
.source "WeakChecksum.java"


# instance fields
.field a:Ljava/util/zip/Adler32;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/services/g;->a:Ljava/util/zip/Adler32;

    .line 14
    return-void
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 34
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 36
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1, v0}, Lcom/yelp/android/services/g;->a(Ljava/io/InputStream;Ljava/util/zip/Adler32;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int p1, v0

    .line 40
    :goto_0
    return p1

    .line 37
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(Ljava/io/InputStream;Ljava/util/zip/Adler32;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    .line 23
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 24
    invoke-virtual {p1, v0}, Ljava/util/zip/Adler32;->update([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/util/zip/Adler32;->reset()V

    throw v0

    .line 26
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/util/zip/Adler32;->getValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 28
    invoke-virtual {p1}, Ljava/util/zip/Adler32;->reset()V

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/yelp/android/services/g;->a:Ljava/util/zip/Adler32;

    invoke-static {p1, v0}, Lcom/yelp/android/services/g;->a(Ljava/io/InputStream;Ljava/util/zip/Adler32;)J

    move-result-wide v0

    return-wide v0
.end method
