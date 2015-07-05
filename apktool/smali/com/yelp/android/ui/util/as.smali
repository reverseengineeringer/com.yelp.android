.class public Lcom/yelp/android/ui/util/as;
.super Ljava/lang/Object;
.source "LazyLoadedAnimation.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:[I

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/os/Handler;

.field private g:I

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/BitmapFactory$Options;

.field private j:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;[II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/util/as;->h:Landroid/graphics/Bitmap;

    .line 43
    iput-object p1, p0, Lcom/yelp/android/ui/util/as;->j:Landroid/content/Context;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/util/as;->f:Landroid/os/Handler;

    .line 45
    iput-object p3, p0, Lcom/yelp/android/ui/util/as;->a:[I

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/util/as;->b:I

    .line 47
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/as;->e:Ljava/lang/ref/SoftReference;

    .line 48
    iput-boolean v1, p0, Lcom/yelp/android/ui/util/as;->c:Z

    .line 49
    iput-boolean v1, p0, Lcom/yelp/android/ui/util/as;->d:Z

    .line 50
    const/16 v0, 0x3e8

    div-int/2addr v0, p4

    iput v0, p0, Lcom/yelp/android/ui/util/as;->g:I

    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/util/as;->a:[I

    aget v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/as;->h:Landroid/graphics/Bitmap;

    .line 58
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/util/as;->i:Landroid/graphics/BitmapFactory$Options;

    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/util/as;->i:Landroid/graphics/BitmapFactory$Options;

    iget-object v1, p0, Lcom/yelp/android/ui/util/as;->h:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/util/as;->i:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/util/as;->i:Landroid/graphics/BitmapFactory$Options;

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/as;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/yelp/android/ui/util/as;->h:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/as;)Ljava/lang/ref/SoftReference;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/util/as;->e:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/as;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/yelp/android/ui/util/as;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/util/as;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/as;->c:Z

    return v0
.end method

.method private c()I
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Lcom/yelp/android/ui/util/as;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/ui/util/as;->b:I

    .line 67
    iget v0, p0, Lcom/yelp/android/ui/util/as;->b:I

    iget-object v1, p0, Lcom/yelp/android/ui/util/as;->a:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ui/util/as;->b:I

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/as;->a:[I

    iget v1, p0, Lcom/yelp/android/ui/util/as;->b:I

    aget v0, v0, v1

    return v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/util/as;)I
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/yelp/android/ui/util/as;->c()I

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/util/as;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/util/as;->h:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/util/as;)Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/util/as;->i:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/util/as;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/util/as;->j:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/util/as;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/yelp/android/ui/util/as;->g:I

    return v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/util/as;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/util/as;->f:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 77
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/yelp/android/ui/util/as;->c:Z

    .line 78
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/as;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 127
    :goto_0
    monitor-exit p0

    return-void

    .line 82
    :cond_0
    :try_start_1
    new-instance v0, Lcom/yelp/android/ui/util/at;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/util/at;-><init>(Lcom/yelp/android/ui/util/as;)V

    .line 124
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yelp/android/ui/util/as;->d:Z

    .line 126
    iget-object v1, p0, Lcom/yelp/android/ui/util/as;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/as;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/util/as;->d:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/as;->a()V

    .line 151
    :cond_0
    return-void
.end method

.method public declared-synchronized b()V
    .locals 1

    .prologue
    .line 133
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/yelp/android/ui/util/as;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
