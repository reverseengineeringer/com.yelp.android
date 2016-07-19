.class Lcom/yelp/android/ag/f;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ag/f$1;,
        Lcom/yelp/android/ag/f$d;,
        Lcom/yelp/android/ag/f$a;,
        Lcom/yelp/android/ag/f$c;,
        Lcom/yelp/android/ag/f$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ag/f$b;

.field private final b:Lcom/yelp/android/u/a;

.field private final c:Landroid/os/Handler;

.field private d:Z

.field private e:Z

.field private f:Lcom/bumptech/glide/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/e",
            "<",
            "Lcom/yelp/android/u/a;",
            "Lcom/yelp/android/u/a;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/yelp/android/ag/f$a;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/ag/f$b;Lcom/yelp/android/u/a;II)V
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/bumptech/glide/g;->a(Landroid/content/Context;)Lcom/bumptech/glide/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/g;->a()Lcom/yelp/android/x/c;

    move-result-object v1

    invoke-static {p1, p3, p4, p5, v1}, Lcom/yelp/android/ag/f;->a(Landroid/content/Context;Lcom/yelp/android/u/a;IILcom/yelp/android/x/c;)Lcom/bumptech/glide/e;

    move-result-object v1

    invoke-direct {p0, p2, p3, v0, v1}, Lcom/yelp/android/ag/f;-><init>(Lcom/yelp/android/ag/f$b;Lcom/yelp/android/u/a;Landroid/os/Handler;Lcom/bumptech/glide/e;)V

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/yelp/android/ag/f$b;Lcom/yelp/android/u/a;Landroid/os/Handler;Lcom/bumptech/glide/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ag/f$b;",
            "Lcom/yelp/android/u/a;",
            "Landroid/os/Handler;",
            "Lcom/bumptech/glide/e",
            "<",
            "Lcom/yelp/android/u/a;",
            "Lcom/yelp/android/u/a;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/yelp/android/ag/f;->d:Z

    .line 33
    iput-boolean v0, p0, Lcom/yelp/android/ag/f;->e:Z

    .line 49
    if-nez p3, :cond_0

    .line 50
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ag/f$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/yelp/android/ag/f$c;-><init>(Lcom/yelp/android/ag/f;Lcom/yelp/android/ag/f$1;)V

    invoke-direct {p3, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ag/f;->a:Lcom/yelp/android/ag/f$b;

    .line 53
    iput-object p2, p0, Lcom/yelp/android/ag/f;->b:Lcom/yelp/android/u/a;

    .line 54
    iput-object p3, p0, Lcom/yelp/android/ag/f;->c:Landroid/os/Handler;

    .line 55
    iput-object p4, p0, Lcom/yelp/android/ag/f;->f:Lcom/bumptech/glide/e;

    .line 56
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/yelp/android/u/a;IILcom/yelp/android/x/c;)Lcom/bumptech/glide/e;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/u/a;",
            "II",
            "Lcom/yelp/android/x/c;",
            ")",
            "Lcom/bumptech/glide/e",
            "<",
            "Lcom/yelp/android/u/a;",
            "Lcom/yelp/android/u/a;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Lcom/yelp/android/ag/h;

    invoke-direct {v0, p4}, Lcom/yelp/android/ag/h;-><init>(Lcom/yelp/android/x/c;)V

    .line 173
    new-instance v1, Lcom/yelp/android/ag/g;

    invoke-direct {v1}, Lcom/yelp/android/ag/g;-><init>()V

    .line 174
    invoke-static {}, Lcom/yelp/android/ad/a;->b()Lcom/bumptech/glide/load/a;

    move-result-object v2

    .line 175
    invoke-static {p0}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v3

    const-class v4, Lcom/yelp/android/u/a;

    invoke-virtual {v3, v1, v4}, Lcom/bumptech/glide/i;->a(Lcom/yelp/android/aa/l;Ljava/lang/Class;)Lcom/bumptech/glide/i$b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/i$b;->a(Ljava/lang/Object;)Lcom/bumptech/glide/i$b$a;

    move-result-object v1

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/i$b$a;->a(Ljava/lang/Class;)Lcom/bumptech/glide/f;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/f;->b(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e;->b(Z)Lcom/bumptech/glide/e;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/e;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/bumptech/glide/e;->b(II)Lcom/bumptech/glide/e;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/yelp/android/ag/f;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ag/f;->e:Z

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ag/f;->e:Z

    .line 100
    iget-object v0, p0, Lcom/yelp/android/ag/f;->b:Lcom/yelp/android/u/a;

    invoke-virtual {v0}, Lcom/yelp/android/u/a;->a()V

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/yelp/android/ag/f;->b:Lcom/yelp/android/u/a;

    invoke-virtual {v2}, Lcom/yelp/android/u/a;->b()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 102
    new-instance v2, Lcom/yelp/android/ag/f$a;

    iget-object v3, p0, Lcom/yelp/android/ag/f;->c:Landroid/os/Handler;

    iget-object v4, p0, Lcom/yelp/android/ag/f;->b:Lcom/yelp/android/u/a;

    invoke-virtual {v4}, Lcom/yelp/android/u/a;->d()I

    move-result v4

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/yelp/android/ag/f$a;-><init>(Landroid/os/Handler;IJ)V

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ag/f;->f:Lcom/bumptech/glide/e;

    new-instance v1, Lcom/yelp/android/ag/f$d;

    invoke-direct {v1}, Lcom/yelp/android/ag/f$d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/e;->a(Lcom/yelp/android/am/j;)Lcom/yelp/android/am/j;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/yelp/android/ag/f;->d:Z

    if-eqz v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ag/f;->d:Z

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ag/f;->h:Z

    .line 73
    invoke-direct {p0}, Lcom/yelp/android/ag/f;->e()V

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/f;)V
    .locals 3
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
    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Transformation must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ag/f;->f:Lcom/bumptech/glide/e;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/bumptech/glide/load/f;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e;->b([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/e;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ag/f;->f:Lcom/bumptech/glide/e;

    .line 64
    return-void
.end method

.method a(Lcom/yelp/android/ag/f$a;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 110
    iget-boolean v0, p0, Lcom/yelp/android/ag/f;->h:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/yelp/android/ag/f;->c:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 125
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ag/f;->g:Lcom/yelp/android/ag/f$a;

    .line 116
    iput-object p1, p0, Lcom/yelp/android/ag/f;->g:Lcom/yelp/android/ag/f$a;

    .line 117
    iget-object v1, p0, Lcom/yelp/android/ag/f;->a:Lcom/yelp/android/ag/f$b;

    invoke-static {p1}, Lcom/yelp/android/ag/f$a;->a(Lcom/yelp/android/ag/f$a;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/yelp/android/ag/f$b;->b(I)V

    .line 119
    if-eqz v0, :cond_1

    .line 120
    iget-object v1, p0, Lcom/yelp/android/ag/f;->c:Landroid/os/Handler;

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 123
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ag/f;->e:Z

    .line 124
    invoke-direct {p0}, Lcom/yelp/android/ag/f;->e()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ag/f;->d:Z

    .line 78
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/yelp/android/ag/f;->b()V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/ag/f;->g:Lcom/yelp/android/ag/f$a;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/yelp/android/ag/f;->g:Lcom/yelp/android/ag/f$a;

    invoke-static {v0}, Lcom/bumptech/glide/g;->a(Lcom/yelp/android/am/j;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ag/f;->g:Lcom/yelp/android/ag/f$a;

    .line 86
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ag/f;->h:Z

    .line 88
    return-void
.end method

.method public d()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yelp/android/ag/f;->g:Lcom/yelp/android/ag/f$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ag/f;->g:Lcom/yelp/android/ag/f$a;

    invoke-virtual {v0}, Lcom/yelp/android/ag/f$a;->a_()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
