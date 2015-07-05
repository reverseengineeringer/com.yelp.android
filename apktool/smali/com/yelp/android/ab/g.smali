.class Lcom/yelp/android/ab/g;
.super Ljava/lang/Object;
.source "GifFrameManager.java"


# instance fields
.field private final a:Lcom/yelp/android/p/a;

.field private final b:Landroid/os/Handler;

.field private final c:I

.field private final d:I

.field private final e:Lcom/yelp/android/ab/k;

.field private final f:Lcom/bumptech/glide/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/e",
            "<",
            "Lcom/yelp/android/p/a;",
            "Lcom/yelp/android/p/a;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Lcom/yelp/android/ab/h;

.field private i:Lcom/yelp/android/ab/h;

.field private j:Lcom/bumptech/glide/load/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Lcom/yelp/android/p/a;Landroid/os/Handler;II)V
    .locals 5

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/yelp/android/y/d;->b()Lcom/yelp/android/y/d;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ab/g;->j:Lcom/bumptech/glide/load/f;

    .line 51
    iput-object p3, p0, Lcom/yelp/android/ab/g;->a:Lcom/yelp/android/p/a;

    .line 52
    iput-object p4, p0, Lcom/yelp/android/ab/g;->b:Landroid/os/Handler;

    .line 53
    iput p5, p0, Lcom/yelp/android/ab/g;->c:I

    .line 54
    iput p6, p0, Lcom/yelp/android/ab/g;->d:I

    .line 55
    new-instance v0, Lcom/yelp/android/ab/k;

    invoke-direct {v0}, Lcom/yelp/android/ab/k;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ab/g;->e:Lcom/yelp/android/ab/k;

    .line 57
    new-instance v0, Lcom/yelp/android/ab/n;

    invoke-direct {v0, p2}, Lcom/yelp/android/ab/n;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)V

    .line 58
    new-instance v1, Lcom/yelp/android/ab/l;

    invoke-direct {v1}, Lcom/yelp/android/ab/l;-><init>()V

    .line 59
    invoke-static {}, Lcom/yelp/android/y/a;->b()Lcom/bumptech/glide/load/a;

    move-result-object v2

    .line 61
    invoke-static {p1}, Lcom/bumptech/glide/h;->c(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v3

    const-class v4, Lcom/yelp/android/p/a;

    invoke-virtual {v3, v1, v4}, Lcom/bumptech/glide/j;->a(Lcom/yelp/android/v/m;Ljava/lang/Class;)Lcom/bumptech/glide/m;

    move-result-object v1

    const-class v3, Lcom/yelp/android/p/a;

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;)Lcom/bumptech/glide/n;

    move-result-object v1

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/n;->a(Ljava/lang/Class;)Lcom/bumptech/glide/g;

    move-result-object v1

    iget-object v3, p0, Lcom/yelp/android/ab/g;->e:Lcom/yelp/android/ab/k;

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/g;->b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/e;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e;->b(Z)Lcom/bumptech/glide/e;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/e;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ab/g;->f:Lcom/bumptech/glide/e;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/p/a;II)V
    .locals 7

    .prologue
    .line 44
    invoke-static {p1}, Lcom/bumptech/glide/h;->b(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/h;->a()Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    move-result-object v2

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ab/g;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Lcom/yelp/android/p/a;Landroid/os/Handler;II)V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ab/g;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/yelp/android/ab/g;->c:I

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/ab/g;Lcom/yelp/android/ab/h;)Lcom/yelp/android/ab/h;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yelp/android/ab/g;->h:Lcom/yelp/android/ab/h;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ab/g;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/yelp/android/ab/g;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ab/g;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/yelp/android/ab/g;->d:I

    return v0
.end method

.method static synthetic c(Lcom/yelp/android/ab/g;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/ab/g;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ab/g;)Lcom/yelp/android/ab/h;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/ab/g;->h:Lcom/yelp/android/ab/h;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yelp/android/ab/g;->h:Lcom/yelp/android/ab/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ab/g;->h:Lcom/yelp/android/ab/h;

    invoke-static {v0}, Lcom/yelp/android/ab/h;->a(Lcom/yelp/android/ab/h;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Transformation must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ab/g;->j:Lcom/bumptech/glide/load/f;

    .line 77
    return-void
.end method

.method public a(Lcom/yelp/android/ab/j;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 81
    iget-boolean v0, p0, Lcom/yelp/android/ab/g;->g:Z

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 84
    :cond_0
    iput-boolean v4, p0, Lcom/yelp/android/ab/g;->g:Z

    .line 86
    iget-object v0, p0, Lcom/yelp/android/ab/g;->a:Lcom/yelp/android/p/a;

    invoke-virtual {v0}, Lcom/yelp/android/p/a;->a()V

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/yelp/android/ab/g;->a:Lcom/yelp/android/p/a;

    invoke-virtual {v2}, Lcom/yelp/android/p/a;->b()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 89
    new-instance v2, Lcom/yelp/android/ab/h;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/yelp/android/ab/h;-><init>(Lcom/yelp/android/ab/g;Lcom/yelp/android/ab/j;J)V

    iput-object v2, p0, Lcom/yelp/android/ab/g;->i:Lcom/yelp/android/ab/h;

    .line 90
    iget-object v0, p0, Lcom/yelp/android/ab/g;->i:Lcom/yelp/android/ab/h;

    iget-object v1, p0, Lcom/yelp/android/ab/g;->a:Lcom/yelp/android/p/a;

    invoke-virtual {v1}, Lcom/yelp/android/p/a;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ab/h;->a(I)V

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ab/g;->e:Lcom/yelp/android/ab/k;

    invoke-virtual {v0}, Lcom/yelp/android/ab/k;->a()V

    .line 94
    iget-object v0, p0, Lcom/yelp/android/ab/g;->f:Lcom/bumptech/glide/e;

    iget-object v1, p0, Lcom/yelp/android/ab/g;->a:Lcom/yelp/android/p/a;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e;->b(Ljava/lang/Object;)Lcom/bumptech/glide/e;

    move-result-object v0

    new-array v1, v4, [Lcom/bumptech/glide/load/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yelp/android/ab/g;->j:Lcom/bumptech/glide/load/f;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e;->b([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/e;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ab/g;->i:Lcom/yelp/android/ab/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e;->a(Lcom/yelp/android/ag/j;)Lcom/yelp/android/ag/j;

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ab/g;->g:Z

    .line 106
    iget-object v0, p0, Lcom/yelp/android/ab/g;->h:Lcom/yelp/android/ab/h;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/yelp/android/ab/g;->h:Lcom/yelp/android/ab/h;

    invoke-static {v0}, Lcom/bumptech/glide/h;->a(Lcom/yelp/android/ag/j;)V

    .line 108
    iget-object v0, p0, Lcom/yelp/android/ab/g;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yelp/android/ab/g;->h:Lcom/yelp/android/ab/h;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    iput-object v2, p0, Lcom/yelp/android/ab/g;->h:Lcom/yelp/android/ab/h;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ab/g;->i:Lcom/yelp/android/ab/h;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/yelp/android/ab/g;->i:Lcom/yelp/android/ab/h;

    invoke-static {v0}, Lcom/bumptech/glide/h;->a(Lcom/yelp/android/ag/j;)V

    .line 113
    iget-object v0, p0, Lcom/yelp/android/ab/g;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yelp/android/ab/g;->i:Lcom/yelp/android/ab/h;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 114
    iput-object v2, p0, Lcom/yelp/android/ab/g;->i:Lcom/yelp/android/ab/h;

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ab/g;->a:Lcom/yelp/android/p/a;

    invoke-virtual {v0}, Lcom/yelp/android/p/a;->e()V

    .line 118
    return-void
.end method
