.class public Landroid/support/v7/widget/GridLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# static fields
.field static final a:I


# instance fields
.field b:Z

.field c:I

.field d:[I

.field e:[Landroid/view/View;

.field final f:Landroid/util/SparseIntArray;

.field final g:Landroid/util/SparseIntArray;

.field h:Landroid/support/v7/widget/ag;

.field final i:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Landroid/support/v7/widget/GridLayoutManager;->a:I

    return-void
.end method

.method private A()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 168
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 169
    return-void
.end method

.method private B()V
    .locals 6

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->q()I

    move-result v2

    .line 173
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 174
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayoutManager;->e(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 175
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->e()I

    move-result v3

    .line 176
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 177
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->a()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 173
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 179
    :cond_0
    return-void
.end method

.method private C()V
    .locals 2

    .prologue
    .line 252
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 253
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->r()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->v()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->t()I

    move-result v1

    sub-int/2addr v0, v1

    .line 257
    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->i(I)V

    .line 258
    return-void

    .line 255
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->s()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->w()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->u()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;I)I
    .locals 3

    .prologue
    .line 337
    invoke-virtual {p2}, Landroid/support/v7/widget/cb;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/ag;

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    invoke-virtual {v0, p3, v1}, Landroid/support/v7/widget/ag;->c(II)I

    move-result v0

    .line 349
    :goto_0
    return v0

    .line 340
    :cond_0
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/bv;->b(I)I

    move-result v0

    .line 341
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 346
    const-string/jumbo v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot find span size for pre layout position. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v0, 0x0

    goto :goto_0

    .line 349
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/ag;

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/ag;->c(II)I

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/ai;)V
    .locals 3

    .prologue
    .line 295
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/ag;

    iget v1, p1, Landroid/support/v7/widget/ai;->a:I

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ag;->a(II)I

    move-result v0

    .line 296
    :goto_0
    if-lez v0, :cond_0

    iget v0, p1, Landroid/support/v7/widget/ai;->a:I

    if-lez v0, :cond_0

    .line 297
    iget v0, p1, Landroid/support/v7/widget/ai;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroid/support/v7/widget/ai;->a:I

    .line 298
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/ag;

    iget v1, p1, Landroid/support/v7/widget/ai;->a:I

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ag;->a(II)I

    move-result v0

    goto :goto_0

    .line 300
    :cond_0
    return-void
.end method

.method private a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;IIZ)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 570
    if-eqz p5, :cond_0

    move v1, v2

    move v0, v4

    .line 579
    :goto_0
    iget v5, p0, Landroid/support/v7/widget/GridLayoutManager;->j:I

    if-ne v5, v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->g()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 580
    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    add-int/lit8 v4, v4, -0x1

    move v5, v4

    move v4, v3

    :goto_1
    move v6, v5

    move v5, v0

    .line 586
    :goto_2
    if-eq v5, p3, :cond_3

    .line 587
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:[Landroid/view/View;

    aget-object v7, v0, v5

    .line 588
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 589
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/GridLayoutManager;->d(Landroid/view/View;)I

    move-result v7

    invoke-direct {p0, p1, p2, v7}, Landroid/support/v7/widget/GridLayoutManager;->c(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;I)I

    move-result v7

    invoke-static {v0, v7}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->a(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;I)I

    .line 590
    if-ne v4, v3, :cond_2

    invoke-static {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v7

    if-le v7, v2, :cond_2

    .line 591
    invoke-static {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int v7, v6, v7

    invoke-static {v0, v7}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;I)I

    .line 595
    :goto_3
    invoke-static {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v0

    mul-int/2addr v0, v4

    add-int/2addr v6, v0

    .line 586
    add-int v0, v5, v1

    move v5, v0

    goto :goto_2

    .line 575
    :cond_0
    add-int/lit8 v0, p3, -0x1

    move v1, v3

    move p3, v3

    .line 577
    goto :goto_0

    :cond_1
    move v5, v4

    move v4, v2

    .line 584
    goto :goto_1

    .line 593
    :cond_2
    invoke-static {v0, v6}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;I)I

    goto :goto_3

    .line 597
    :cond_3
    return-void
.end method

.method private b(III)I
    .locals 2

    .prologue
    .line 555
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 563
    :cond_0
    :goto_0
    return p1

    .line 558
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 559
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 560
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;I)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 353
    invoke-virtual {p2}, Landroid/support/v7/widget/cb;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 354
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/ag;

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    invoke-virtual {v0, p3, v1}, Landroid/support/v7/widget/ag;->a(II)I

    move-result v0

    .line 370
    :cond_0
    :goto_0
    return v0

    .line 356
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 357
    if-ne v0, v1, :cond_0

    .line 360
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/bv;->b(I)I

    move-result v0

    .line 361
    if-ne v0, v1, :cond_2

    .line 366
    const-string/jumbo v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v0, 0x0

    goto :goto_0

    .line 370
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/ag;

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/ag;->a(II)I

    move-result v0

    goto :goto_0
.end method

.method private b(Landroid/view/View;II)V
    .locals 4

    .prologue
    .line 545
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 546
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 547
    iget v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->i:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-direct {p0, p2, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->b(III)I

    move-result v1

    .line 549
    iget v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->i:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->i:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    invoke-direct {p0, p3, v2, v0}, Landroid/support/v7/widget/GridLayoutManager;->b(III)I

    move-result v0

    .line 551
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 552
    return-void
.end method

.method private c(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;I)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 374
    invoke-virtual {p2}, Landroid/support/v7/widget/cb;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/ag;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/ag;->a(I)I

    move-result v0

    .line 391
    :cond_0
    :goto_0
    return v0

    .line 377
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 378
    if-ne v0, v1, :cond_0

    .line 381
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/bv;->b(I)I

    move-result v0

    .line 382
    if-ne v0, v1, :cond_2

    .line 387
    const-string/jumbo v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v0, 0x1

    goto :goto_0

    .line 391
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/ag;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ag;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method private i(I)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 261
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[I

    array-length v0, v0

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    add-int/lit8 v2, v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[I

    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    if-eq v0, p1, :cond_1

    .line 263
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[I

    .line 265
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[I

    aput v1, v0, v1

    .line 266
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    div-int v4, p1, v0

    .line 267
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    rem-int v5, p1, v0

    .line 270
    const/4 v0, 0x1

    move v2, v1

    :goto_0
    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    if-gt v0, v3, :cond_2

    .line 272
    add-int v3, v1, v5

    .line 273
    if-lez v3, :cond_3

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    sub-int/2addr v1, v3

    if-ge v1, v5, :cond_3

    .line 274
    add-int/lit8 v1, v4, 0x1

    .line 275
    iget v6, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    sub-int/2addr v3, v6

    move v7, v1

    move v1, v3

    move v3, v7

    .line 277
    :goto_1
    add-int/2addr v2, v3

    .line 278
    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[I

    aput v2, v3, v0

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_2
    return-void

    :cond_3
    move v1, v3

    move v3, v4

    goto :goto_1
.end method

.method private j(I)I
    .locals 1

    .prologue
    .line 537
    if-gez p1, :cond_0

    .line 538
    sget v0, Landroid/support/v7/widget/GridLayoutManager;->a:I

    .line 540
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)I
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->j:I

    if-nez v0, :cond_0

    .line 108
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    .line 113
    :goto_0
    return v0

    .line 110
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/cb;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 111
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/cb;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;I)I

    move-result v0

    goto :goto_0
.end method

.method public a()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 208
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 214
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 219
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 222
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method a(III)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 304
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->h()V

    .line 307
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->c()I

    move-result v5

    .line 308
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->d()I

    move-result v6

    .line 309
    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    move-object v4, v2

    .line 310
    :goto_1
    if-eq p1, p2, :cond_4

    .line 311
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager;->e(I)Landroid/view/View;

    move-result-object v3

    .line 312
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/GridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 313
    if-ltz v0, :cond_7

    if-ge v0, p3, :cond_7

    .line 314
    iget-object v7, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/ag;

    iget v8, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    invoke-virtual {v7, v0, v8}, Landroid/support/v7/widget/ag;->a(II)I

    move-result v0

    .line 315
    if-eqz v0, :cond_1

    move-object v0, v2

    move-object v3, v4

    .line 310
    :goto_2
    add-int/2addr p1, v1

    move-object v2, v0

    move-object v4, v3

    goto :goto_1

    .line 309
    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    .line 318
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    if-nez v4, :cond_7

    move-object v0, v2

    .line 320
    goto :goto_2

    .line 322
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ba;->a(Landroid/view/View;)I

    move-result v0

    if-ge v0, v6, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ba;->b(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_5

    .line 324
    :cond_3
    if-nez v2, :cond_7

    move-object v0, v3

    move-object v3, v4

    .line 325
    goto :goto_2

    .line 332
    :cond_4
    if-eqz v2, :cond_6

    :goto_3
    move-object v3, v2

    :cond_5
    return-object v3

    :cond_6
    move-object v2, v4

    goto :goto_3

    :cond_7
    move-object v0, v2

    move-object v3, v4

    goto :goto_2
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/ag;

    invoke-virtual {v0}, Landroid/support/v7/widget/ag;->a()V

    .line 189
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/ag;

    invoke-virtual {v0}, Landroid/support/v7/widget/ag;->a()V

    .line 184
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/ag;

    invoke-virtual {v0}, Landroid/support/v7/widget/ag;->a()V

    .line 204
    return-void
.end method

.method a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;Landroid/support/v7/widget/ak;Landroid/support/v7/widget/aj;)V
    .locals 17

    .prologue
    .line 397
    move-object/from16 v0, p3

    iget v3, v0, Landroid/support/v7/widget/ak;->e:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v8, 0x1

    .line 399
    :goto_0
    const/4 v6, 0x0

    .line 400
    const/4 v7, 0x0

    .line 401
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    .line 402
    if-nez v8, :cond_0

    .line 403
    move-object/from16 v0, p3

    iget v3, v0, Landroid/support/v7/widget/ak;->d:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;I)I

    move-result v3

    .line 404
    move-object/from16 v0, p3

    iget v4, v0, Landroid/support/v7/widget/ak;->d:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Landroid/support/v7/widget/GridLayoutManager;->c(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;I)I

    move-result v4

    .line 405
    add-int/2addr v3, v4

    .line 407
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    if-ge v6, v4, :cond_3

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ak;->a(Landroid/support/v7/widget/cb;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-lez v3, :cond_3

    .line 408
    move-object/from16 v0, p3

    iget v4, v0, Landroid/support/v7/widget/ak;->d:I

    .line 409
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Landroid/support/v7/widget/GridLayoutManager;->c(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;I)I

    move-result v5

    .line 410
    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    if-le v5, v9, :cond_2

    .line 411
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Item at position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " requires "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " spans but GridLayoutManager has only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " spans."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 397
    :cond_1
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 415
    :cond_2
    sub-int/2addr v3, v5

    .line 416
    if-gez v3, :cond_4

    .line 428
    :cond_3
    if-nez v6, :cond_5

    .line 429
    const/4 v3, 0x1

    move-object/from16 v0, p4

    iput-boolean v3, v0, Landroid/support/v7/widget/aj;->b:Z

    .line 534
    :goto_2
    return-void

    .line 419
    :cond_4
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ak;->a(Landroid/support/v7/widget/bv;)Landroid/view/View;

    move-result-object v4

    .line 420
    if-eqz v4, :cond_3

    .line 423
    add-int/2addr v7, v5

    .line 424
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->e:[Landroid/view/View;

    aput-object v4, v5, v6

    .line 425
    add-int/lit8 v6, v6, 0x1

    .line 426
    goto/16 :goto_1

    .line 433
    :cond_5
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 436
    invoke-direct/range {v3 .. v8}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;IIZ)V

    .line 437
    const/4 v3, 0x0

    move v5, v3

    move v4, v9

    :goto_3
    if-ge v5, v6, :cond_a

    .line 438
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayoutManager;->e:[Landroid/view/View;

    aget-object v7, v3, v5

    .line 439
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/v7/widget/ak;->k:Ljava/util/List;

    if-nez v3, :cond_7

    .line 440
    if-eqz v8, :cond_6

    .line 441
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;)V

    .line 453
    :goto_4
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 454
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[I

    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->a(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v10

    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v11

    add-int/2addr v10, v11

    aget v9, v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[I

    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->a(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v11

    aget v10, v10, v11

    sub-int/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 458
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/widget/GridLayoutManager;->j:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 459
    iget v3, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/widget/GridLayoutManager;->j(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v9, v3}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;II)V

    .line 463
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v3, v7}, Landroid/support/v7/widget/ba;->c(Landroid/view/View;)I

    move-result v3

    .line 464
    if-le v3, v4, :cond_15

    .line 437
    :goto_6
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v3

    goto :goto_3

    .line 443
    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v3}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;I)V

    goto :goto_4

    .line 446
    :cond_7
    if-eqz v8, :cond_8

    .line 447
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;)V

    goto :goto_4

    .line 449
    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v3}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;I)V

    goto :goto_4

    .line 461
    :cond_9
    iget v3, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/widget/GridLayoutManager;->j(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3, v9}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;II)V

    goto :goto_5

    .line 470
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v7/widget/GridLayoutManager;->j(I)I

    move-result v7

    .line 471
    const/4 v3, 0x0

    move v5, v3

    :goto_7
    if-ge v5, v6, :cond_d

    .line 472
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayoutManager;->e:[Landroid/view/View;

    aget-object v8, v3, v5

    .line 473
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v3, v8}, Landroid/support/v7/widget/ba;->c(Landroid/view/View;)I

    move-result v3

    if-eq v3, v4, :cond_b

    .line 474
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 475
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[I

    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->a(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v10

    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v11

    add-int/2addr v10, v11

    aget v9, v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[I

    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->a(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v3

    aget v3, v10, v3

    sub-int v3, v9, v3

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 479
    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/widget/GridLayoutManager;->j:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_c

    .line 480
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3, v7}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;II)V

    .line 471
    :cond_b
    :goto_8
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_7

    .line 482
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7, v3}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;II)V

    goto :goto_8

    .line 487
    :cond_d
    move-object/from16 v0, p4

    iput v4, v0, Landroid/support/v7/widget/aj;->a:I

    .line 489
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 490
    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/widget/GridLayoutManager;->j:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_11

    .line 491
    move-object/from16 v0, p3

    iget v3, v0, Landroid/support/v7/widget/ak;->f:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_10

    .line 492
    move-object/from16 v0, p3

    iget v3, v0, Landroid/support/v7/widget/ak;->b:I

    .line 493
    sub-int v4, v3, v4

    move v5, v7

    move v7, v8

    .line 507
    :goto_9
    const/4 v8, 0x0

    move v15, v8

    move v9, v7

    move v7, v5

    move v5, v4

    move v4, v3

    :goto_a
    if-ge v15, v6, :cond_14

    .line 508
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayoutManager;->e:[Landroid/view/View;

    aget-object v8, v3, v15

    .line 509
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 510
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/widget/GridLayoutManager;->j:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_13

    .line 511
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->t()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[I

    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->a(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v10

    aget v9, v9, v10

    add-int/2addr v9, v7

    .line 512
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/GridLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ba;->d(Landroid/view/View;)I

    move-result v7

    add-int/2addr v7, v9

    move v13, v7

    move v14, v9

    .line 519
    :goto_b
    iget v7, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int v9, v14, v7

    iget v7, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int v10, v5, v7

    iget v7, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    sub-int v11, v13, v7

    iget v7, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    sub-int v12, v4, v7

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IIII)V

    .line 528
    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->c()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->d()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 529
    :cond_e
    const/4 v3, 0x1

    move-object/from16 v0, p4

    iput-boolean v3, v0, Landroid/support/v7/widget/aj;->c:Z

    .line 531
    :cond_f
    move-object/from16 v0, p4

    iget-boolean v3, v0, Landroid/support/v7/widget/aj;->d:Z

    invoke-virtual {v8}, Landroid/view/View;->isFocusable()Z

    move-result v7

    or-int/2addr v3, v7

    move-object/from16 v0, p4

    iput-boolean v3, v0, Landroid/support/v7/widget/aj;->d:Z

    .line 507
    add-int/lit8 v3, v15, 0x1

    move v15, v3

    move v7, v13

    move v9, v14

    goto :goto_a

    .line 495
    :cond_10
    move-object/from16 v0, p3

    iget v5, v0, Landroid/support/v7/widget/ak;->b:I

    .line 496
    add-int v3, v5, v4

    move v4, v5

    move v5, v7

    move v7, v8

    goto :goto_9

    .line 499
    :cond_11
    move-object/from16 v0, p3

    iget v7, v0, Landroid/support/v7/widget/ak;->f:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_12

    .line 500
    move-object/from16 v0, p3

    iget v7, v0, Landroid/support/v7/widget/ak;->b:I

    .line 501
    sub-int v4, v7, v4

    move/from16 v16, v5

    move v5, v7

    move v7, v4

    move/from16 v4, v16

    goto/16 :goto_9

    .line 503
    :cond_12
    move-object/from16 v0, p3

    iget v7, v0, Landroid/support/v7/widget/ak;->b:I

    .line 504
    add-int/2addr v4, v7

    move/from16 v16, v5

    move v5, v4

    move/from16 v4, v16

    goto/16 :goto_9

    .line 514
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->u()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[I

    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->a(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v10

    aget v5, v5, v10

    add-int/2addr v5, v4

    .line 515
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v4, v8}, Landroid/support/v7/widget/ba;->d(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v5

    move v13, v7

    move v14, v9

    goto :goto_b

    .line 533
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayoutManager;->e:[Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_15
    move v3, v4

    goto/16 :goto_6
.end method

.method public a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;Landroid/view/View;Lcom/yelp/android/f/g;)V
    .locals 8

    .prologue
    .line 131
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 132
    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    if-nez v1, :cond_0

    .line 133
    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;Lcom/yelp/android/f/g;)V

    .line 149
    :goto_0
    return-void

    :cond_0
    move-object v6, v0

    .line 136
    check-cast v6, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 137
    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->e()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;I)I

    move-result v2

    .line 138
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->j:I

    if-nez v0, :cond_2

    .line 139
    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->a()I

    move-result v0

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b()I

    move-result v1

    const/4 v3, 0x1

    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b()I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/f/q;->a(IIIIZZ)Lcom/yelp/android/f/q;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/yelp/android/f/g;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 144
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->a()I

    move-result v4

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b()I

    move-result v5

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    if-ne v0, v1, :cond_3

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/yelp/android/f/q;->a(IIIIZZ)Lcom/yelp/android/f/q;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/yelp/android/f/g;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method a(Landroid/support/v7/widget/cb;Landroid/support/v7/widget/ai;)V
    .locals 2

    .prologue
    .line 284
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/cb;Landroid/support/v7/widget/ai;)V

    .line 285
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->C()V

    .line 286
    invoke-virtual {p1}, Landroid/support/v7/widget/cb;->e()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/cb;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    invoke-direct {p0, p2}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/ai;)V

    .line 289
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:[Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    if-eq v0, v1, :cond_2

    .line 290
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:[Landroid/view/View;

    .line 292
    :cond_2
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 1

    .prologue
    .line 228
    instance-of v0, p1, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    return v0
.end method

.method public b(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 119
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->j:I

    if-ne v0, v1, :cond_0

    .line 120
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    .line 125
    :goto_0
    return v0

    .line 122
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/cb;->e()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 123
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/cb;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;I)I

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/ag;

    invoke-virtual {v0}, Landroid/support/v7/widget/ag;->a()V

    .line 194
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/ag;

    invoke-virtual {v0}, Landroid/support/v7/widget/ag;->a()V

    .line 199
    return-void
.end method

.method public c(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)V
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p2}, Landroid/support/v7/widget/cb;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->B()V

    .line 156
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->c(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)V

    .line 160
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->A()V

    .line 161
    invoke-virtual {p2}, Landroid/support/v7/widget/cb;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:Z

    .line 164
    :cond_1
    return-void
.end method
