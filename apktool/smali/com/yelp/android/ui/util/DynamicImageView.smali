.class public Lcom/yelp/android/ui/util/DynamicImageView;
.super Landroid/widget/FrameLayout;
.source "DynamicImageView.java"


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Lcom/yelp/android/ui/panels/SpanOfPhotosView;

.field private c:Lcom/yelp/android/ui/util/ax;

.field private d:I

.field private e:Lcom/yelp/android/ui/util/bc;

.field private final f:Ljava/lang/Runnable;

.field private final g:Landroid/support/v7/widget/bk;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 100
    new-instance v0, Lcom/yelp/android/ui/util/u;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/util/u;-><init>(Lcom/yelp/android/ui/util/DynamicImageView;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->f:Ljava/lang/Runnable;

    .line 107
    new-instance v0, Lcom/yelp/android/ui/util/v;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/util/v;-><init>(Lcom/yelp/android/ui/util/DynamicImageView;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->g:Landroid/support/v7/widget/bk;

    .line 38
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/util/DynamicImageView;->a(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    new-instance v0, Lcom/yelp/android/ui/util/u;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/util/u;-><init>(Lcom/yelp/android/ui/util/DynamicImageView;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->f:Ljava/lang/Runnable;

    .line 107
    new-instance v0, Lcom/yelp/android/ui/util/v;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/util/v;-><init>(Lcom/yelp/android/ui/util/DynamicImageView;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->g:Landroid/support/v7/widget/bk;

    .line 33
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/util/DynamicImageView;->a(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    new-instance v0, Lcom/yelp/android/ui/util/u;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/util/u;-><init>(Lcom/yelp/android/ui/util/DynamicImageView;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->f:Ljava/lang/Runnable;

    .line 107
    new-instance v0, Lcom/yelp/android/ui/util/v;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/util/v;-><init>(Lcom/yelp/android/ui/util/DynamicImageView;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->g:Landroid/support/v7/widget/bk;

    .line 28
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/util/DynamicImageView;->a(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->c:Lcom/yelp/android/ui/util/ax;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ax;->a()I

    move-result v0

    iget v1, p0, Lcom/yelp/android/ui/util/DynamicImageView;->d:I

    if-gt v0, v1, :cond_1

    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->b:Lcom/yelp/android/ui/panels/SpanOfPhotosView;

    iget v1, p0, Lcom/yelp/android/ui/util/DynamicImageView;->d:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->setMaxPhotos(I)V

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->b:Lcom/yelp/android/ui/panels/SpanOfPhotosView;

    iget-object v1, p0, Lcom/yelp/android/ui/util/DynamicImageView;->c:Lcom/yelp/android/ui/util/ax;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ax;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->setMedia(Ljava/util/List;)V

    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->b:Lcom/yelp/android/ui/panels/SpanOfPhotosView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/DynamicImageView;->removeView(Landroid/view/View;)V

    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->b:Lcom/yelp/android/ui/panels/SpanOfPhotosView;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/DynamicImageView;->addView(Landroid/view/View;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->b:Lcom/yelp/android/ui/panels/SpanOfPhotosView;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/DynamicImageView;->removeView(Landroid/view/View;)V

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/DynamicImageView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 42
    new-instance v0, Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->a:Landroid/support/v7/widget/RecyclerView;

    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p1, v3, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/br;)V

    .line 44
    new-instance v0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;

    invoke-direct {v0, p1}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->b:Lcom/yelp/android/ui/panels/SpanOfPhotosView;

    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->b:Lcom/yelp/android/ui/panels/SpanOfPhotosView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/DynamicImageView;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yelp/android/ui/util/DynamicImageView;->a()V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/util/DynamicImageView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->f:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/bt;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/bt;)V

    .line 73
    return-void
.end method

.method public getNumberScrolled()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->c:Lcom/yelp/android/ui/util/ax;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ax;->g()I

    move-result v0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 52
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lcom/yelp/android/appdata/ao;->b:I

    add-int/2addr v0, v1

    .line 54
    div-int v0, p1, v0

    iput v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->d:I

    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->f:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/DynamicImageView;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void
.end method

.method public setAdapter(Lcom/yelp/android/ui/util/ax;)V
    .locals 2

    .prologue
    .line 59
    iput-object p1, p0, Lcom/yelp/android/ui/util/DynamicImageView;->c:Lcom/yelp/android/ui/util/ax;

    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/bi;)V

    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->c:Lcom/yelp/android/ui/util/ax;

    iget-object v1, p0, Lcom/yelp/android/ui/util/DynamicImageView;->g:Landroid/support/v7/widget/bk;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ax;->a(Landroid/support/v7/widget/bk;)V

    .line 62
    new-instance v0, Lcom/yelp/android/ui/util/be;

    invoke-virtual {p1}, Lcom/yelp/android/ui/util/ax;->d()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/be;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->e:Lcom/yelp/android/ui/util/bc;

    .line 63
    invoke-direct {p0}, Lcom/yelp/android/ui/util/DynamicImageView;->a()V

    .line 64
    return-void
.end method

.method public setItemSelectedListener(Lcom/yelp/android/ui/util/w;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->c:Lcom/yelp/android/ui/util/ax;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ax;->a(Lcom/yelp/android/ui/util/w;)V

    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->b:Lcom/yelp/android/ui/panels/SpanOfPhotosView;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->setItemSelectedListener(Lcom/yelp/android/ui/util/w;)V

    .line 69
    return-void
.end method

.method public setOnPhotoSelectionIntent(Landroid/app/PendingIntent;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->c:Lcom/yelp/android/ui/util/ax;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->c:Lcom/yelp/android/ui/util/ax;

    iget-object v1, p0, Lcom/yelp/android/ui/util/DynamicImageView;->e:Lcom/yelp/android/ui/util/bc;

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/util/ax;->a(Landroid/app/PendingIntent;Lcom/yelp/android/ui/util/bc;)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/DynamicImageView;->b:Lcom/yelp/android/ui/panels/SpanOfPhotosView;

    iget-object v1, p0, Lcom/yelp/android/ui/util/DynamicImageView;->e:Lcom/yelp/android/ui/util/bc;

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->a(Landroid/app/PendingIntent;Lcom/yelp/android/ui/util/bc;)V

    .line 80
    return-void
.end method
