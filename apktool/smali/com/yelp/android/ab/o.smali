.class public Lcom/yelp/android/ab/o;
.super Ljava/lang/Object;
.source "GifResourceDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/d",
        "<",
        "Ljava/io/InputStream;",
        "Lcom/yelp/android/ab/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/yelp/android/ab/q;

.field private static final b:Lcom/yelp/android/ab/p;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/yelp/android/ab/q;

.field private final e:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

.field private final f:Lcom/yelp/android/ab/p;

.field private final g:Lcom/yelp/android/ab/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/yelp/android/ab/q;

    invoke-direct {v0}, Lcom/yelp/android/ab/q;-><init>()V

    sput-object v0, Lcom/yelp/android/ab/o;->a:Lcom/yelp/android/ab/q;

    .line 29
    new-instance v0, Lcom/yelp/android/ab/p;

    invoke-direct {v0}, Lcom/yelp/android/ab/p;-><init>()V

    sput-object v0, Lcom/yelp/android/ab/o;->b:Lcom/yelp/android/ab/p;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)V
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/yelp/android/ab/o;->a:Lcom/yelp/android/ab/q;

    sget-object v1, Lcom/yelp/android/ab/o;->b:Lcom/yelp/android/ab/p;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yelp/android/ab/o;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Lcom/yelp/android/ab/q;Lcom/yelp/android/ab/p;)V

    .line 43
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Lcom/yelp/android/ab/q;Lcom/yelp/android/ab/p;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/yelp/android/ab/o;->c:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/yelp/android/ab/o;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    .line 50
    iput-object p4, p0, Lcom/yelp/android/ab/o;->f:Lcom/yelp/android/ab/p;

    .line 51
    new-instance v0, Lcom/yelp/android/ab/a;

    invoke-direct {v0, p2}, Lcom/yelp/android/ab/a;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)V

    iput-object v0, p0, Lcom/yelp/android/ab/o;->g:Lcom/yelp/android/ab/a;

    .line 52
    iput-object p3, p0, Lcom/yelp/android/ab/o;->d:Lcom/yelp/android/ab/q;

    .line 53
    return-void
.end method

.method private a(Lcom/yelp/android/p/a;Lcom/yelp/android/p/d;[B)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p1, p2, p3}, Lcom/yelp/android/p/a;->a(Lcom/yelp/android/p/d;[B)V

    .line 90
    invoke-virtual {p1}, Lcom/yelp/android/p/a;->a()V

    .line 91
    invoke-virtual {p1}, Lcom/yelp/android/p/a;->g()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a([BIILcom/yelp/android/p/e;Lcom/yelp/android/p/a;)Lcom/yelp/android/ab/e;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-virtual {p4}, Lcom/yelp/android/p/e;->b()Lcom/yelp/android/p/d;

    move-result-object v7

    .line 70
    invoke-virtual {v7}, Lcom/yelp/android/p/d;->a()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v7}, Lcom/yelp/android/p/d;->b()I

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-object v0

    .line 75
    :cond_1
    invoke-direct {p0, p5, v7, p1}, Lcom/yelp/android/ab/o;->a(Lcom/yelp/android/p/a;Lcom/yelp/android/p/d;[B)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 76
    if-eqz v9, :cond_0

    .line 80
    invoke-static {}, Lcom/yelp/android/y/d;->b()Lcom/yelp/android/y/d;

    move-result-object v4

    .line 82
    new-instance v0, Lcom/yelp/android/ab/b;

    iget-object v1, p0, Lcom/yelp/android/ab/o;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/ab/o;->g:Lcom/yelp/android/ab/a;

    iget-object v3, p0, Lcom/yelp/android/ab/o;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    move v5, p2

    move v6, p3

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/yelp/android/ab/b;-><init>(Landroid/content/Context;Lcom/yelp/android/p/b;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Lcom/bumptech/glide/load/f;IILcom/yelp/android/p/d;[BLandroid/graphics/Bitmap;)V

    .line 85
    new-instance v1, Lcom/yelp/android/ab/e;

    invoke-direct {v1, v0}, Lcom/yelp/android/ab/e;-><init>(Lcom/yelp/android/ab/b;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 4

    .prologue
    const/16 v0, 0x4000

    .line 100
    .line 101
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 104
    const/16 v0, 0x4000

    :try_start_0
    new-array v0, v0, [B

    .line 105
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 106
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    const-string/jumbo v2, "GifResourceDecoder"

    const-string/jumbo v3, "Error reading data from stream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 108
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/t;
    .locals 1

    .prologue
    .line 26
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ab/o;->a(Ljava/io/InputStream;II)Lcom/yelp/android/ab/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/InputStream;II)Lcom/yelp/android/ab/e;
    .locals 6

    .prologue
    .line 57
    invoke-static {p1}, Lcom/yelp/android/ab/o;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ab/o;->d:Lcom/yelp/android/ab/q;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ab/q;->a([B)Lcom/yelp/android/p/e;

    move-result-object v4

    .line 59
    iget-object v0, p0, Lcom/yelp/android/ab/o;->f:Lcom/yelp/android/ab/p;

    iget-object v2, p0, Lcom/yelp/android/ab/o;->g:Lcom/yelp/android/ab/a;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ab/p;->a(Lcom/yelp/android/p/b;)Lcom/yelp/android/p/a;

    move-result-object v5

    move-object v0, p0

    move v2, p2

    move v3, p3

    .line 61
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ab/o;->a([BIILcom/yelp/android/p/e;Lcom/yelp/android/p/a;)Lcom/yelp/android/ab/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/yelp/android/ab/o;->d:Lcom/yelp/android/ab/q;

    invoke-virtual {v1, v4}, Lcom/yelp/android/ab/q;->a(Lcom/yelp/android/p/e;)V

    .line 64
    iget-object v1, p0, Lcom/yelp/android/ab/o;->f:Lcom/yelp/android/ab/p;

    invoke-virtual {v1, v5}, Lcom/yelp/android/ab/p;->a(Lcom/yelp/android/p/a;)V

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yelp/android/ab/o;->d:Lcom/yelp/android/ab/q;

    invoke-virtual {v1, v4}, Lcom/yelp/android/ab/q;->a(Lcom/yelp/android/p/e;)V

    .line 64
    iget-object v1, p0, Lcom/yelp/android/ab/o;->f:Lcom/yelp/android/ab/p;

    invoke-virtual {v1, v5}, Lcom/yelp/android/ab/p;->a(Lcom/yelp/android/p/a;)V

    throw v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string/jumbo v0, ""

    return-object v0
.end method
