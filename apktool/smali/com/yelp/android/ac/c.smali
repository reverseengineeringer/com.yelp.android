.class public Lcom/yelp/android/ac/c;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResourceDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/d",
        "<",
        "Lcom/yelp/android/v/h;",
        "Lcom/yelp/android/ac/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/yelp/android/ac/e;

.field private static final b:Lcom/yelp/android/ac/d;


# instance fields
.field private final c:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d",
            "<",
            "Lcom/yelp/android/v/h;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/yelp/android/ab/b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

.field private final f:Lcom/yelp/android/ac/e;

.field private final g:Lcom/yelp/android/ac/d;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/yelp/android/ac/e;

    invoke-direct {v0}, Lcom/yelp/android/ac/e;-><init>()V

    sput-object v0, Lcom/yelp/android/ac/c;->a:Lcom/yelp/android/ac/e;

    .line 24
    new-instance v0, Lcom/yelp/android/ac/d;

    invoke-direct {v0}, Lcom/yelp/android/ac/d;-><init>()V

    sput-object v0, Lcom/yelp/android/ac/c;->b:Lcom/yelp/android/ac/d;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Lcom/yelp/android/v/h;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/yelp/android/ab/b;",
            ">;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    sget-object v4, Lcom/yelp/android/ac/c;->a:Lcom/yelp/android/ac/e;

    sget-object v5, Lcom/yelp/android/ac/c;->b:Lcom/yelp/android/ac/d;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ac/c;-><init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Lcom/yelp/android/ac/e;Lcom/yelp/android/ac/d;)V

    .line 39
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Lcom/yelp/android/ac/e;Lcom/yelp/android/ac/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Lcom/yelp/android/v/h;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/yelp/android/ab/b;",
            ">;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/e;",
            "Lcom/yelp/android/ac/e;",
            "Lcom/yelp/android/ac/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/yelp/android/ac/c;->c:Lcom/bumptech/glide/load/d;

    .line 46
    iput-object p2, p0, Lcom/yelp/android/ac/c;->d:Lcom/bumptech/glide/load/d;

    .line 47
    iput-object p3, p0, Lcom/yelp/android/ac/c;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    .line 48
    iput-object p4, p0, Lcom/yelp/android/ac/c;->f:Lcom/yelp/android/ac/e;

    .line 49
    iput-object p5, p0, Lcom/yelp/android/ac/c;->g:Lcom/yelp/android/ac/d;

    .line 50
    return-void
.end method

.method private a(Lcom/yelp/android/v/h;II[B)Lcom/yelp/android/ac/a;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/yelp/android/v/h;->a()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yelp/android/ac/c;->b(Lcom/yelp/android/v/h;II[B)Lcom/yelp/android/ac/a;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    .line 73
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ac/c;->b(Lcom/yelp/android/v/h;II)Lcom/yelp/android/ac/a;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/io/InputStream;II)Lcom/yelp/android/ac/a;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 100
    .line 101
    iget-object v0, p0, Lcom/yelp/android/ac/c;->d:Lcom/bumptech/glide/load/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/bumptech/glide/load/d;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/t;

    move-result-object v2

    .line 102
    if-eqz v2, :cond_1

    .line 103
    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/t;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ab/b;

    .line 108
    invoke-virtual {v0}, Lcom/yelp/android/ab/b;->e()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 109
    new-instance v0, Lcom/yelp/android/ac/a;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ac/a;-><init>(Lcom/bumptech/glide/load/engine/t;Lcom/bumptech/glide/load/engine/t;)V

    .line 115
    :goto_0
    return-object v0

    .line 111
    :cond_0
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/c;

    invoke-virtual {v0}, Lcom/yelp/android/ab/b;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/yelp/android/ac/c;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    invoke-direct {v2, v0, v3}, Lcom/bumptech/glide/load/resource/bitmap/c;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)V

    .line 112
    new-instance v0, Lcom/yelp/android/ac/a;

    invoke-direct {v0, v2, v1}, Lcom/yelp/android/ac/a;-><init>(Lcom/bumptech/glide/load/engine/t;Lcom/bumptech/glide/load/engine/t;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private b(Lcom/yelp/android/v/h;II)Lcom/yelp/android/ac/a;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 119
    .line 121
    iget-object v0, p0, Lcom/yelp/android/ac/c;->c:Lcom/bumptech/glide/load/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/bumptech/glide/load/d;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/t;

    move-result-object v2

    .line 122
    if-eqz v2, :cond_0

    .line 123
    new-instance v0, Lcom/yelp/android/ac/a;

    invoke-direct {v0, v2, v1}, Lcom/yelp/android/ac/a;-><init>(Lcom/bumptech/glide/load/engine/t;Lcom/bumptech/glide/load/engine/t;)V

    .line 126
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private b(Lcom/yelp/android/v/h;II[B)Lcom/yelp/android/ac/a;
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yelp/android/ac/c;->g:Lcom/yelp/android/ac/d;

    invoke-virtual {p1}, Lcom/yelp/android/v/h;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/yelp/android/ac/d;->a(Ljava/io/InputStream;[B)Ljava/io/InputStream;

    move-result-object v1

    .line 81
    const/16 v0, 0x800

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/ac/c;->f:Lcom/yelp/android/ac/e;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ac/e;->a(Ljava/io/InputStream;)Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-result-object v2

    .line 83
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 85
    const/4 v0, 0x0

    .line 86
    sget-object v3, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    if-ne v2, v3, :cond_0

    .line 87
    invoke-direct {p0, v1, p2, p3}, Lcom/yelp/android/ac/c;->a(Ljava/io/InputStream;II)Lcom/yelp/android/ac/a;

    move-result-object v0

    .line 90
    :cond_0
    if-nez v0, :cond_1

    .line 93
    new-instance v0, Lcom/yelp/android/v/h;

    invoke-virtual {p1}, Lcom/yelp/android/v/h;->b()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/v/h;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    .line 94
    invoke-direct {p0, v0, p2, p3}, Lcom/yelp/android/ac/c;->b(Lcom/yelp/android/v/h;II)Lcom/yelp/android/ac/a;

    move-result-object v0

    .line 96
    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/v/h;II)Lcom/bumptech/glide/load/engine/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/v/h;",
            "II)",
            "Lcom/bumptech/glide/load/engine/t",
            "<",
            "Lcom/yelp/android/ac/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Lcom/yelp/android/ai/a;->a()Lcom/yelp/android/ai/a;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/yelp/android/ai/a;->b()[B

    move-result-object v1

    .line 61
    :try_start_0
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/yelp/android/ac/c;->a(Lcom/yelp/android/v/h;II[B)Lcom/yelp/android/ac/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 63
    invoke-virtual {v0, v1}, Lcom/yelp/android/ai/a;->a([B)Z

    .line 65
    if-eqz v2, :cond_0

    new-instance v0, Lcom/yelp/android/ac/b;

    invoke-direct {v0, v2}, Lcom/yelp/android/ac/b;-><init>(Lcom/yelp/android/ac/a;)V

    :goto_0
    return-object v0

    .line 63
    :catchall_0
    move-exception v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ai/a;->a([B)Z

    throw v2

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/t;
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lcom/yelp/android/v/h;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ac/c;->a(Lcom/yelp/android/v/h;II)Lcom/bumptech/glide/load/engine/t;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/ac/c;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/ac/c;->d:Lcom/bumptech/glide/load/d;

    invoke-interface {v1}, Lcom/bumptech/glide/load/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ac/c;->c:Lcom/bumptech/glide/load/d;

    invoke-interface {v1}, Lcom/bumptech/glide/load/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ac/c;->h:Ljava/lang/String;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ac/c;->h:Ljava/lang/String;

    return-object v0
.end method
