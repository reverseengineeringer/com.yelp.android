.class public Landroid/support/design/widget/CoordinatorLayout$d;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field a:Landroid/support/design/widget/CoordinatorLayout$Behavior;

.field b:Z

.field public c:I

.field public d:I

.field public e:I

.field f:I

.field g:Landroid/view/View;

.field h:Landroid/view/View;

.field final i:Landroid/graphics/Rect;

.field j:Ljava/lang/Object;

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2203
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2163
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->b:Z

    .line 2170
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->c:I

    .line 2176
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->d:I

    .line 2183
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->e:I

    .line 2189
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->f:I

    .line 2198
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->i:Landroid/graphics/Rect;

    .line 2204
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2207
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2163
    iput-boolean v2, p0, Landroid/support/design/widget/CoordinatorLayout$d;->b:Z

    .line 2170
    iput v2, p0, Landroid/support/design/widget/CoordinatorLayout$d;->c:I

    .line 2176
    iput v2, p0, Landroid/support/design/widget/CoordinatorLayout$d;->d:I

    .line 2183
    iput v3, p0, Landroid/support/design/widget/CoordinatorLayout$d;->e:I

    .line 2189
    iput v3, p0, Landroid/support/design/widget/CoordinatorLayout$d;->f:I

    .line 2198
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->i:Landroid/graphics/Rect;

    .line 2209
    sget-object v0, Lcom/yelp/android/a/a$i;->CoordinatorLayout_LayoutParams:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2212
    sget v1, Lcom/yelp/android/a/a$i;->CoordinatorLayout_LayoutParams_android_layout_gravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->c:I

    .line 2215
    sget v1, Lcom/yelp/android/a/a$i;->CoordinatorLayout_LayoutParams_layout_anchor:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->f:I

    .line 2217
    sget v1, Lcom/yelp/android/a/a$i;->CoordinatorLayout_LayoutParams_layout_anchorGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->d:I

    .line 2221
    sget v1, Lcom/yelp/android/a/a$i;->CoordinatorLayout_LayoutParams_layout_keyline:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->e:I

    .line 2224
    sget v1, Lcom/yelp/android/a/a$i;->CoordinatorLayout_LayoutParams_layout_behavior:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->b:Z

    .line 2226
    iget-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->b:Z

    if-eqz v1, :cond_0

    .line 2227
    sget v1, Lcom/yelp/android/a/a$i;->CoordinatorLayout_LayoutParams_layout_behavior:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->a:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    .line 2231
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2232
    return-void
.end method

.method public constructor <init>(Landroid/support/design/widget/CoordinatorLayout$d;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2235
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2163
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->b:Z

    .line 2170
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->c:I

    .line 2176
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->d:I

    .line 2183
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->e:I

    .line 2189
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->f:I

    .line 2198
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->i:Landroid/graphics/Rect;

    .line 2236
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2243
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2163
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->b:Z

    .line 2170
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->c:I

    .line 2176
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->d:I

    .line 2183
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->e:I

    .line 2189
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->f:I

    .line 2198
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->i:Landroid/graphics/Rect;

    .line 2244
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2239
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2163
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->b:Z

    .line 2170
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->c:I

    .line 2176
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->d:I

    .line 2183
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->e:I

    .line 2189
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->f:I

    .line 2198
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->i:Landroid/graphics/Rect;

    .line 2240
    return-void
.end method

.method private a(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2458
    iget v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->f:I

    invoke-virtual {p2, v0}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->g:Landroid/view/View;

    .line 2459
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->g:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 2460
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->g:Landroid/view/View;

    .line 2461
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2462
    :goto_0
    if-eq v1, p2, :cond_3

    if-eqz v1, :cond_3

    .line 2464
    if-ne v1, p1, :cond_1

    .line 2465
    invoke-virtual {p2}, Landroid/support/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2466
    iput-object v3, p0, Landroid/support/design/widget/CoordinatorLayout$d;->h:Landroid/view/View;

    iput-object v3, p0, Landroid/support/design/widget/CoordinatorLayout$d;->g:Landroid/view/View;

    .line 2486
    :goto_1
    return-void

    .line 2469
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Anchor must not be a descendant of the anchored view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2472
    :cond_1
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 2473
    check-cast v0, Landroid/view/View;

    .line 2463
    :cond_2
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 2476
    :cond_3
    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->h:Landroid/view/View;

    goto :goto_1

    .line 2478
    :cond_4
    invoke-virtual {p2}, Landroid/support/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2479
    iput-object v3, p0, Landroid/support/design/widget/CoordinatorLayout$d;->h:Landroid/view/View;

    iput-object v3, p0, Landroid/support/design/widget/CoordinatorLayout$d;->g:Landroid/view/View;

    goto :goto_1

    .line 2482
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not find CoordinatorLayout descendant view with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/design/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Landroid/support/design/widget/CoordinatorLayout$d;->f:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to anchor view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2494
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->f:I

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 2511
    :goto_0
    return v0

    .line 2498
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->g:Landroid/view/View;

    .line 2499
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2500
    :goto_1
    if-eq v1, p2, :cond_4

    .line 2502
    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_2

    .line 2503
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->h:Landroid/view/View;

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->g:Landroid/view/View;

    move v0, v2

    .line 2504
    goto :goto_0

    .line 2506
    :cond_2
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_3

    move-object v0, v1

    .line 2507
    check-cast v0, Landroid/view/View;

    .line 2501
    :cond_3
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1

    .line 2510
    :cond_4
    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->h:Landroid/view/View;

    .line 2511
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 2256
    iget v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->f:I

    return v0
.end method

.method a(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 2306
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2307
    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V
    .locals 1

    .prologue
    .line 2294
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->a:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eq v0, p1, :cond_0

    .line 2295
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->a:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    .line 2296
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->j:Ljava/lang/Object;

    .line 2297
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->b:Z

    .line 2299
    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 2376
    iput-boolean p1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->l:Z

    .line 2377
    return-void
.end method

.method a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 2351
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->k:Z

    if-eqz v0, :cond_0

    .line 2352
    const/4 v0, 0x1

    .line 2355
    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->k:Z

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->a:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->a:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->d(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v0

    :goto_1
    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->k:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 2404
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->h:Landroid/view/View;

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->a:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->a:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

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

.method public b()Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .locals 1

    .prologue
    .line 2281
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->a:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    return-object v0
.end method

.method b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2428
    iget v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->f:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2429
    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->h:Landroid/view/View;

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->g:Landroid/view/View;

    .line 2436
    :goto_0
    return-object v0

    .line 2433
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p1}, Landroid/support/design/widget/CoordinatorLayout$d;->b(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2434
    :cond_1
    invoke-direct {p0, p2, p1}, Landroid/support/design/widget/CoordinatorLayout$d;->a(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)V

    .line 2436
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->g:Landroid/view/View;

    goto :goto_0
.end method

.method b(Z)V
    .locals 0

    .prologue
    .line 2388
    iput-boolean p1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->m:Z

    .line 2389
    return-void
.end method

.method c()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 2314
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->i:Landroid/graphics/Rect;

    return-object v0
.end method

.method c(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 2450
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->a:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->a:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->e(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Z
    .locals 2

    .prologue
    .line 2322
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->g:Landroid/view/View;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 2333
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->a:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-nez v0, :cond_0

    .line 2334
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->k:Z

    .line 2336
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->k:Z

    return v0
.end method

.method f()V
    .locals 1

    .prologue
    .line 2368
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->k:Z

    .line 2369
    return-void
.end method

.method g()V
    .locals 1

    .prologue
    .line 2372
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->l:Z

    .line 2373
    return-void
.end method

.method h()Z
    .locals 1

    .prologue
    .line 2380
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->l:Z

    return v0
.end method

.method i()Z
    .locals 1

    .prologue
    .line 2384
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->m:Z

    return v0
.end method

.method j()V
    .locals 1

    .prologue
    .line 2392
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->m:Z

    .line 2393
    return-void
.end method
