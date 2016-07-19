.class public Lcom/yelp/android/ui/activities/animatedonboarding/GifView;
.super Landroid/widget/FrameLayout;
.source "GifView.java"


# instance fields
.field private a:Lpl/droidsonroids/gif/c;

.field private b:Lpl/droidsonroids/gif/GifImageView;

.field private c:Landroid/os/Handler;

.field private d:Ljava/lang/Runnable;

.field private e:Lpl/droidsonroids/gif/c;

.field private f:Lpl/droidsonroids/gif/GifImageView;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/ui/activities/animatedonboarding/b;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Z

.field private j:Lpl/droidsonroids/gif/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 221
    new-instance v0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$2;-><init>(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->j:Lpl/droidsonroids/gif/a;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/b$a;->GifView:[I

    invoke-virtual {v0, p2, v1, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 53
    :try_start_0
    new-instance v0, Lpl/droidsonroids/gif/c;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lpl/droidsonroids/gif/c;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a:Lpl/droidsonroids/gif/c;

    .line 57
    new-instance v0, Lpl/droidsonroids/gif/c;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lpl/droidsonroids/gif/c;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->e:Lpl/droidsonroids/gif/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0300e2

    invoke-virtual {v0, v1, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 69
    const v0, 0x7f0f0352

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->b:Lpl/droidsonroids/gif/GifImageView;

    .line 70
    const v0, 0x7f0f0351

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->f:Lpl/droidsonroids/gif/GifImageView;

    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->b:Lpl/droidsonroids/gif/GifImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a:Lpl/droidsonroids/gif/c;

    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/GifImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a:Lpl/droidsonroids/gif/c;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/c;->stop()V

    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->f:Lpl/droidsonroids/gif/GifImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->e:Lpl/droidsonroids/gif/c;

    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/GifImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->e:Lpl/droidsonroids/gif/c;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/c;->stop()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->g:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->c:Landroid/os/Handler;

    .line 79
    iput v6, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->h:I

    .line 80
    iput-boolean v5, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->i:Z

    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a:Lpl/droidsonroids/gif/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->j:Lpl/droidsonroids/gif/a;

    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/c;->a(Lpl/droidsonroids/gif/a;)V

    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->e:Lpl/droidsonroids/gif/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->j:Lpl/droidsonroids/gif/a;

    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/c;->a(Lpl/droidsonroids/gif/a;)V

    .line 84
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Lpl/droidsonroids/gif/c;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a:Lpl/droidsonroids/gif/c;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Lpl/droidsonroids/gif/c;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->e:Lpl/droidsonroids/gif/c;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/2addr v1, v0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/animatedonboarding/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/b;->a()I

    move-result v0

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->h:I

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->i:Z

    .line 135
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;-><init>(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->d:Ljava/lang/Runnable;

    .line 217
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->i:Z

    return v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->h:I

    return v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Lpl/droidsonroids/gif/GifImageView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->f:Lpl/droidsonroids/gif/GifImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Lpl/droidsonroids/gif/GifImageView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->b:Lpl/droidsonroids/gif/GifImageView;

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->d:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a:Lpl/droidsonroids/gif/c;

    invoke-virtual {v0, p1}, Lpl/droidsonroids/gif/c;->b(I)Landroid/graphics/Bitmap;

    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->e:Lpl/droidsonroids/gif/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->e:Lpl/droidsonroids/gif/c;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/c;->d()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/c;->b(I)Landroid/graphics/Bitmap;

    .line 119
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/animatedonboarding/b;)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/animatedonboarding/b;

    .line 105
    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/animatedonboarding/b;->a(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/b;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/animatedonboarding/b;->b()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a:Lpl/droidsonroids/gif/c;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/c;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/activities/animatedonboarding/b;->a(I)V

    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->d()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a:Lpl/droidsonroids/gif/c;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/c;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->e:Lpl/droidsonroids/gif/c;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/c;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a:Lpl/droidsonroids/gif/c;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a:Lpl/droidsonroids/gif/c;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/c;->stop()V

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a:Lpl/droidsonroids/gif/c;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/c;->a()V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->e:Lpl/droidsonroids/gif/c;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->e:Lpl/droidsonroids/gif/c;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/c;->stop()V

    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->e:Lpl/droidsonroids/gif/c;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/c;->a()V

    .line 99
    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a:Lpl/droidsonroids/gif/c;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/c;->stop()V

    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->e:Lpl/droidsonroids/gif/c;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/c;->stop()V

    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 129
    return-void
.end method

.method public getJobListSize()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
