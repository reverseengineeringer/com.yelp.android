.class public Landroid/support/v7/widget/StaggeredGridLayoutManager;
.super Landroid/support/v7/widget/br;
.source "StaggeredGridLayoutManager.java"


# instance fields
.field private A:Z

.field private final B:Ljava/lang/Runnable;

.field a:Landroid/support/v7/widget/ba;

.field b:Landroid/support/v7/widget/ba;

.field c:Z

.field d:I

.field e:I

.field f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

.field private g:I

.field private h:[Landroid/support/v7/widget/db;

.field private i:I

.field private j:I

.field private k:Landroid/support/v7/widget/ah;

.field private l:Z

.field private m:Ljava/util/BitSet;

.field private n:I

.field private o:Z

.field private p:Z

.field private t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

.field private u:I

.field private v:I

.field private w:I

.field private final x:Landroid/graphics/Rect;

.field private final y:Landroid/support/v7/widget/cy;

.field private z:Z


# direct methods
.method private A()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 223
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v1, v2

    .line 264
    :goto_0
    return v1

    .line 227
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_2

    .line 228
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D()I

    move-result v3

    .line 229
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E()I

    move-result v0

    move v4, v3

    move v3, v0

    .line 234
    :goto_1
    if-nez v4, :cond_3

    .line 235
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f()Landroid/view/View;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_3

    .line 237
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 238
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z()V

    .line 239
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()V

    goto :goto_0

    .line 231
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E()I

    move-result v3

    .line 232
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D()I

    move-result v0

    move v4, v3

    move v3, v0

    goto :goto_1

    .line 243
    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    if-nez v0, :cond_4

    move v1, v2

    .line 244
    goto :goto_0

    .line 246
    :cond_4
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    .line 247
    :goto_2
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v4, v6, v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(IIIZ)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    .line 249
    if-nez v5, :cond_6

    .line 250
    iput-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    .line 251
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(I)I

    move v1, v2

    .line 252
    goto :goto_0

    :cond_5
    move v0, v1

    .line 246
    goto :goto_2

    .line 254
    :cond_6
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v3, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(IIIZ)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 257
    if-nez v0, :cond_7

    .line 258
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v2, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(I)I

    .line 262
    :goto_3
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z()V

    .line 263
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()V

    goto :goto_0

    .line 260
    :cond_7
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(I)I

    goto :goto_3
.end method

.method private B()V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    if-nez v0, :cond_0

    .line 501
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    invoke-static {p0, v0}, Landroid/support/v7/widget/ba;->a(Landroid/support/v7/widget/br;I)Landroid/support/v7/widget/ba;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    .line 502
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    rsub-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v7/widget/ba;->a(Landroid/support/v7/widget/br;I)Landroid/support/v7/widget/ba;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ba;

    .line 504
    new-instance v0, Landroid/support/v7/widget/ah;

    invoke-direct {v0}, Landroid/support/v7/widget/ah;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    .line 506
    :cond_0
    return-void
.end method

.method private C()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 515
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()Z

    move-result v1

    if-nez v1, :cond_1

    .line 516
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    .line 520
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private D()I
    .locals 1

    .prologue
    .line 1898
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q()I

    move-result v0

    .line 1899
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method private E()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1903
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q()I

    move-result v1

    .line 1904
    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method private a(III)I
    .locals 2

    .prologue
    .line 1018
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 1026
    :cond_0
    :goto_0
    return p1

    .line 1021
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1022
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 1023
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/ah;Landroid/support/v7/widget/cb;)I
    .locals 21

    .prologue
    .line 1383
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/BitSet;->set(IIZ)V

    .line 1393
    move-object/from16 v0, p2

    iget v4, v0, Landroid/support/v7/widget/ah;->d:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1395
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v4}, Landroid/support/v7/widget/ba;->d()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iget v5, v5, Landroid/support/v7/widget/ah;->a:I

    add-int/2addr v4, v5

    .line 1396
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iget v5, v5, Landroid/support/v7/widget/ah;->e:I

    add-int/2addr v5, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v6}, Landroid/support/v7/widget/ba;->g()I

    move-result v6

    add-int/2addr v5, v6

    move/from16 v17, v4

    move/from16 v18, v5

    .line 1404
    :goto_0
    move-object/from16 v0, p2

    iget v4, v0, Landroid/support/v7/widget/ah;->d:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v4, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(II)V

    .line 1407
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v4}, Landroid/support/v7/widget/ba;->d()I

    move-result v4

    move/from16 v19, v4

    .line 1411
    :goto_1
    invoke-virtual/range {p2 .. p3}, Landroid/support/v7/widget/ah;->a(Landroid/support/v7/widget/cb;)Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    .line 1412
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ah;->a(Landroid/support/v7/widget/bv;)Landroid/view/View;

    move-result-object v5

    .line 1413
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1414
    invoke-virtual/range {v16 .. v16}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->e()I

    move-result v8

    .line 1415
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->c(I)I

    move-result v7

    .line 1417
    const/4 v4, -0x1

    if-ne v7, v4, :cond_3

    const/4 v4, 0x1

    move v6, v4

    .line 1418
    :goto_2
    if-eqz v6, :cond_5

    .line 1419
    move-object/from16 v0, v16

    iget-boolean v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    const/4 v7, 0x0

    aget-object v4, v4, v7

    .line 1420
    :goto_3
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v7, v8, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(ILandroid/support/v7/widget/db;)V

    move-object/from16 v20, v4

    .line 1431
    :goto_4
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroid/support/v7/widget/db;

    .line 1432
    move-object/from16 v0, p2

    iget v4, v0, Landroid/support/v7/widget/ah;->d:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_6

    .line 1433
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;)V

    .line 1437
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v5, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;)V

    .line 1441
    move-object/from16 v0, p2

    iget v4, v0, Landroid/support/v7/widget/ah;->d:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_8

    .line 1442
    move-object/from16 v0, v16

    iget-boolean v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l(I)I

    move-result v4

    .line 1444
    :goto_6
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v7, v5}, Landroid/support/v7/widget/ba;->c(Landroid/view/View;)I

    move-result v7

    add-int v9, v4, v7

    .line 1445
    if-eqz v6, :cond_15

    move-object/from16 v0, v16

    iget-boolean v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v7, :cond_15

    .line 1447
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v7

    .line 1448
    const/4 v10, -0x1

    iput v10, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1449
    iput v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1450
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v10, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    move v7, v4

    .line 1466
    :goto_7
    move-object/from16 v0, v16

    iget-boolean v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p2

    iget v4, v0, Landroid/support/v7/widget/ah;->c:I

    const/4 v10, -0x1

    if-ne v4, v10, :cond_0

    .line 1467
    if-eqz v6, :cond_b

    .line 1468
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    .line 1487
    :cond_0
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;Landroid/support/v7/widget/ah;)V

    .line 1488
    move-object/from16 v0, v16

    iget-boolean v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ba;

    invoke-virtual {v4}, Landroid/support/v7/widget/ba;->c()I

    move-result v6

    .line 1491
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ba;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ba;->c(Landroid/view/View;)I

    move-result v4

    add-int v8, v6, v4

    .line 1492
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_11

    move-object/from16 v4, p0

    .line 1493
    invoke-direct/range {v4 .. v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;IIII)V

    .line 1498
    :goto_a
    move-object/from16 v0, v16

    iget-boolean v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v4, :cond_12

    .line 1499
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iget v4, v4, Landroid/support/v7/widget/ah;->d:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v4, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(II)V

    .line 1503
    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, v17

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/ah;Landroid/support/v7/widget/db;I)V

    goto/16 :goto_1

    .line 1400
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v4}, Landroid/support/v7/widget/ba;->c()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iget v5, v5, Landroid/support/v7/widget/ah;->a:I

    sub-int/2addr v4, v5

    .line 1401
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iget v5, v5, Landroid/support/v7/widget/ah;->e:I

    sub-int v5, v4, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v6}, Landroid/support/v7/widget/ba;->c()I

    move-result v6

    sub-int/2addr v5, v6

    move/from16 v17, v4

    move/from16 v18, v5

    goto/16 :goto_0

    .line 1407
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v4}, Landroid/support/v7/widget/ba;->c()I

    move-result v4

    move/from16 v19, v4

    goto/16 :goto_1

    .line 1417
    :cond_3
    const/4 v4, 0x0

    move v6, v4

    goto/16 :goto_2

    .line 1419
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/ah;)Landroid/support/v7/widget/db;

    move-result-object v4

    goto/16 :goto_3

    .line 1428
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    aget-object v4, v4, v7

    move-object/from16 v20, v4

    goto/16 :goto_4

    .line 1435
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;I)V

    goto/16 :goto_5

    .line 1442
    :cond_7
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/db;->b(I)I

    move-result v4

    goto/16 :goto_6

    .line 1453
    :cond_8
    move-object/from16 v0, v16

    iget-boolean v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k(I)I

    move-result v4

    .line 1455
    :goto_c
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v7, v5}, Landroid/support/v7/widget/ba;->c(Landroid/view/View;)I

    move-result v7

    sub-int v7, v4, v7

    .line 1456
    if-eqz v6, :cond_9

    move-object/from16 v0, v16

    iget-boolean v9, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v9, :cond_9

    .line 1458
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v9

    .line 1459
    const/4 v10, 0x1

    iput v10, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1460
    iput v8, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1461
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v10, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    :cond_9
    move v9, v4

    goto/16 :goto_7

    .line 1453
    :cond_a
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/db;->a(I)I

    move-result v4

    goto :goto_c

    .line 1471
    :cond_b
    move-object/from16 v0, p2

    iget v4, v0, Landroid/support/v7/widget/ah;->d:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_e

    .line 1472
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()Z

    move-result v4

    if-nez v4, :cond_d

    const/4 v4, 0x1

    .line 1476
    :goto_d
    if-eqz v4, :cond_0

    .line 1477
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->f(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v4

    .line 1479
    if-eqz v4, :cond_c

    .line 1480
    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    .line 1482
    :cond_c
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    goto/16 :goto_8

    .line 1472
    :cond_d
    const/4 v4, 0x0

    goto :goto_d

    .line 1474
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k()Z

    move-result v4

    if-nez v4, :cond_f

    const/4 v4, 0x1

    goto :goto_d

    :cond_f
    const/4 v4, 0x0

    goto :goto_d

    .line 1488
    :cond_10
    move-object/from16 v0, v20

    iget v4, v0, Landroid/support/v7/widget/db;->d:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    mul-int/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ba;

    invoke-virtual {v6}, Landroid/support/v7/widget/ba;->c()I

    move-result v6

    add-int/2addr v6, v4

    goto/16 :goto_9

    :cond_11
    move-object/from16 v10, p0

    move-object v11, v5

    move v12, v7

    move v13, v6

    move v14, v9

    move v15, v8

    .line 1495
    invoke-direct/range {v10 .. v15}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;IIII)V

    goto/16 :goto_a

    .line 1501
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iget v4, v4, Landroid/support/v7/widget/ah;->d:I

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-direct {v0, v1, v4, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/db;II)V

    goto/16 :goto_b

    .line 1508
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iget v4, v4, Landroid/support/v7/widget/ah;->d:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_14

    .line 1509
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v4}, Landroid/support/v7/widget/ba;->c()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k(I)I

    move-result v4

    .line 1510
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iget v6, v6, Landroid/support/v7/widget/ah;->a:I

    sub-int v4, v17, v4

    add-int/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1513
    :goto_e
    return v4

    .line 1512
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v4}, Landroid/support/v7/widget/ba;->d()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l(I)I

    move-result v4

    .line 1513
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iget v6, v6, Landroid/support/v7/widget/ah;->a:I

    sub-int v4, v4, v17

    add-int/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_e

    :cond_15
    move v7, v4

    goto/16 :goto_7
.end method

.method private a(Landroid/support/v7/widget/cb;)I
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 921
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q()I

    move-result v0

    if-nez v0, :cond_0

    .line 925
    :goto_0
    return v4

    .line 924
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B()V

    .line 925
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-virtual {p0, v0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-virtual {p0, v4, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/ch;->a(Landroid/support/v7/widget/cb;Landroid/support/v7/widget/ba;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/br;ZZ)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private a(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4

    .prologue
    .line 1518
    new-instance v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 1519
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    new-array v0, v0, [I

    iput-object v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    .line 1520
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v2, :cond_0

    .line 1521
    iget-object v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/db;->b(I)I

    move-result v3

    sub-int v3, p1, v3

    aput v3, v2, v0

    .line 1520
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1523
    :cond_0
    return-object v1
.end method

.method private a(Landroid/support/v7/widget/ah;)Landroid/support/v7/widget/db;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 1737
    iget v2, p1, Landroid/support/v7/widget/ah;->d:I

    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n(I)Z

    move-result v2

    .line 1739
    if-eqz v2, :cond_0

    .line 1740
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    move v2, v0

    .line 1748
    :goto_0
    iget v4, p1, Landroid/support/v7/widget/ah;->d:I

    if-ne v4, v1, :cond_1

    .line 1750
    const v1, 0x7fffffff

    .line 1751
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v4}, Landroid/support/v7/widget/ba;->c()I

    move-result v7

    move v6, v3

    move v3, v1

    .line 1752
    :goto_1
    if-eq v6, v2, :cond_2

    .line 1753
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    aget-object v4, v1, v6

    .line 1754
    invoke-virtual {v4, v7}, Landroid/support/v7/widget/db;->b(I)I

    move-result v1

    .line 1755
    if-ge v1, v3, :cond_4

    move-object v3, v4

    .line 1752
    :goto_2
    add-int v4, v6, v0

    move v6, v4

    move-object v5, v3

    move v3, v1

    goto :goto_1

    .line 1744
    :cond_0
    const/4 v2, 0x0

    .line 1745
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    move v3, v2

    move v2, v0

    move v0, v1

    .line 1746
    goto :goto_0

    .line 1763
    :cond_1
    const/high16 v1, -0x80000000

    .line 1764
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v4}, Landroid/support/v7/widget/ba;->d()I

    move-result v7

    move v6, v3

    move v3, v1

    .line 1765
    :goto_3
    if-eq v6, v2, :cond_2

    .line 1766
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    aget-object v4, v1, v6

    .line 1767
    invoke-virtual {v4, v7}, Landroid/support/v7/widget/db;->a(I)I

    move-result v1

    .line 1768
    if-le v1, v3, :cond_3

    move-object v3, v4

    .line 1765
    :goto_4
    add-int v4, v6, v0

    move v6, v4

    move-object v5, v3

    move v3, v1

    goto :goto_3

    .line 1773
    :cond_2
    return-object v5

    :cond_3
    move v1, v3

    move-object v3, v5

    goto :goto_4

    :cond_4
    move v1, v3

    move-object v3, v5

    goto :goto_2
.end method

.method private a(ILandroid/support/v7/widget/cb;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 1258
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iput v3, v2, Landroid/support/v7/widget/ah;->a:I

    .line 1259
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iput p1, v2, Landroid/support/v7/widget/ah;->b:I

    .line 1260
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1261
    invoke-virtual {p2}, Landroid/support/v7/widget/cb;->c()I

    move-result v2

    .line 1262
    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-ge v2, p1, :cond_0

    move v2, v0

    :goto_0
    if-ne v4, v2, :cond_1

    .line 1263
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iput v3, v2, Landroid/support/v7/widget/ah;->e:I

    .line 1270
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iput v1, v2, Landroid/support/v7/widget/ah;->d:I

    .line 1271
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v3, :cond_3

    :goto_2
    iput v0, v2, Landroid/support/v7/widget/ah;->c:I

    .line 1273
    return-void

    :cond_0
    move v2, v3

    .line 1262
    goto :goto_0

    .line 1265
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v3}, Landroid/support/v7/widget/ba;->f()I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/ah;->e:I

    goto :goto_1

    .line 1268
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iput v3, v2, Landroid/support/v7/widget/ah;->e:I

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1271
    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/bv;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1684
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q()I

    move-result v0

    if-lez v0, :cond_2

    .line 1685
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e(I)Landroid/view/View;

    move-result-object v2

    .line 1686
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ba;->b(Landroid/view/View;)I

    move-result v0

    if-ge v0, p2, :cond_2

    .line 1687
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1688
    iget-boolean v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v3, :cond_0

    move v0, v1

    .line 1689
    :goto_1
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v3, :cond_1

    .line 1690
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/db;->h()V

    .line 1689
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1693
    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroid/support/v7/widget/db;

    invoke-virtual {v0}, Landroid/support/v7/widget/db;->h()V

    .line 1695
    :cond_1
    invoke-virtual {p0, v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/bv;)V

    goto :goto_0

    .line 1700
    :cond_2
    return-void
.end method

.method private a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/ah;Landroid/support/v7/widget/db;I)V
    .locals 3

    .prologue
    .line 1553
    iget v0, p2, Landroid/support/v7/widget/ah;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1555
    invoke-virtual {p3}, Landroid/support/v7/widget/db;->b()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j(I)I

    move-result v0

    .line 1556
    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v1}, Landroid/support/v7/widget/ba;->e()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v2}, Landroid/support/v7/widget/ba;->c()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/bv;I)V

    .line 1564
    :goto_0
    return-void

    .line 1560
    :cond_0
    invoke-virtual {p3}, Landroid/support/v7/widget/db;->d()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m(I)I

    move-result v0

    .line 1561
    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v1}, Landroid/support/v7/widget/ba;->e()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v2}, Landroid/support/v7/widget/ba;->c()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/bv;I)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;Z)V
    .locals 2

    .prologue
    .line 1227
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->d()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l(I)I

    move-result v0

    .line 1228
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v1}, Landroid/support/v7/widget/ba;->d()I

    move-result v1

    sub-int v0, v1, v0

    .line 1230
    if-lez v0, :cond_0

    .line 1231
    neg-int v1, v0

    invoke-virtual {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(ILandroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)I

    move-result v1

    neg-int v1, v1

    .line 1235
    sub-int/2addr v0, v1

    .line 1236
    if-eqz p3, :cond_0

    if-lez v0, :cond_0

    .line 1237
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ba;->a(I)V

    .line 1239
    :cond_0
    return-void
.end method

.method private a(Landroid/support/v7/widget/cy;)V
    .locals 3

    .prologue
    .line 628
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-lez v0, :cond_3

    .line 629
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ne v0, v1, :cond_2

    .line 630
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v1, :cond_3

    .line 631
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/db;->e()V

    .line 632
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aget v1, v1, v0

    .line 633
    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 634
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v2, :cond_1

    .line 635
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v2}, Landroid/support/v7/widget/ba;->d()I

    move-result v2

    add-int/2addr v1, v2

    .line 640
    :cond_0
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/db;->c(I)V

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 637
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v2}, Landroid/support/v7/widget/ba;->c()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 643
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->invalidateSpanInfo()V

    .line 644
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iput v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 647
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Z

    .line 648
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Z)V

    .line 649
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C()V

    .line 651
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 652
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    .line 653
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v0, p1, Landroid/support/v7/widget/cy;->c:Z

    .line 657
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 658
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    iput-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    .line 659
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    iput-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b:Ljava/util/List;

    .line 661
    :cond_4
    return-void

    .line 655
    :cond_5
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    iput-boolean v0, p1, Landroid/support/v7/widget/cy;->c:Z

    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/db;II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1602
    invoke-virtual {p1}, Landroid/support/v7/widget/db;->i()I

    move-result v0

    .line 1603
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1604
    invoke-virtual {p1}, Landroid/support/v7/widget/db;->b()I

    move-result v1

    .line 1605
    add-int/2addr v0, v1

    if-ge v0, p3, :cond_0

    .line 1606
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget v1, p1, Landroid/support/v7/widget/db;->d:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 1614
    :cond_0
    :goto_0
    return-void

    .line 1609
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/db;->d()I

    move-result v1

    .line 1610
    sub-int v0, v1, v0

    if-le v0, p3, :cond_0

    .line 1611
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget v1, p1, Landroid/support/v7/widget/db;->d:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 979
    iget-boolean v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v0, :cond_1

    .line 980
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ne v0, v1, :cond_0

    .line 981
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:I

    iget v1, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w:I

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(II)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;II)V

    .line 996
    :goto_0
    return-void

    .line 984
    :cond_0
    iget v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(II)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;II)V

    goto :goto_0

    .line 988
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ne v0, v1, :cond_2

    .line 989
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v:I

    iget v1, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w:I

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(II)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;II)V

    goto :goto_0

    .line 992
    :cond_2
    iget v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(II)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;II)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;Landroid/support/v7/widget/ah;)V
    .locals 2

    .prologue
    .line 1536
    iget v0, p3, Landroid/support/v7/widget/ah;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1537
    iget-boolean v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v0, :cond_0

    .line 1538
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o(Landroid/view/View;)V

    .line 1549
    :goto_0
    return-void

    .line 1540
    :cond_0
    iget-object v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroid/support/v7/widget/db;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/db;->b(Landroid/view/View;)V

    goto :goto_0

    .line 1543
    :cond_1
    iget-boolean v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v0, :cond_2

    .line 1544
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p(Landroid/view/View;)V

    goto :goto_0

    .line 1546
    :cond_2
    iget-object v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroid/support/v7/widget/db;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/db;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/db;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 352
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v1, :cond_1

    .line 353
    invoke-virtual {p1}, Landroid/support/v7/widget/db;->d()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v2}, Landroid/support/v7/widget/ba;->d()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 359
    :cond_0
    :goto_0
    return v0

    .line 356
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/db;->b()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v2}, Landroid/support/v7/widget/ba;->c()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 359
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(II)I
    .locals 1

    .prologue
    .line 999
    if-gez p1, :cond_0

    .line 1002
    :goto_0
    return p2

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0
.end method

.method private b(III)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1339
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D()I

    move-result v0

    move v2, v0

    .line 1343
    :goto_0
    const/4 v0, 0x3

    if-ne p3, v0, :cond_3

    .line 1344
    if-ge p1, p2, :cond_2

    .line 1345
    add-int/lit8 v0, p2, 0x1

    move v1, v0

    move v0, p1

    .line 1356
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b(I)I

    .line 1357
    packed-switch p3, :pswitch_data_0

    .line 1371
    :goto_2
    :pswitch_0
    if-gt v1, v2, :cond_4

    .line 1379
    :cond_0
    :goto_3
    return-void

    .line 1339
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E()I

    move-result v0

    move v2, v0

    goto :goto_0

    .line 1348
    :cond_2
    add-int/lit8 v0, p1, 0x1

    move v1, v0

    move v0, p2

    .line 1349
    goto :goto_1

    .line 1353
    :cond_3
    add-int v0, p1, p2

    move v1, v0

    move v0, p1

    goto :goto_1

    .line 1359
    :pswitch_1
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b(II)V

    goto :goto_2

    .line 1362
    :pswitch_2
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(II)V

    goto :goto_2

    .line 1366
    :pswitch_3
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p1, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(II)V

    .line 1367
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p2, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b(II)V

    goto :goto_2

    .line 1375
    :cond_4
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E()I

    move-result v1

    .line 1376
    :goto_4
    if-gt v0, v1, :cond_0

    .line 1377
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()V

    goto :goto_3

    .line 1375
    :cond_5
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D()I

    move-result v1

    goto :goto_4

    .line 1357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private b(ILandroid/support/v7/widget/cb;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1276
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iput v2, v1, Landroid/support/v7/widget/ah;->a:I

    .line 1277
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iput p1, v1, Landroid/support/v7/widget/ah;->b:I

    .line 1278
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1279
    invoke-virtual {p2}, Landroid/support/v7/widget/cb;->c()I

    move-result v1

    .line 1280
    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-le v1, p1, :cond_1

    move v1, v0

    :goto_0
    if-ne v3, v1, :cond_2

    .line 1281
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iput v2, v1, Landroid/support/v7/widget/ah;->e:I

    .line 1288
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iput v0, v1, Landroid/support/v7/widget/ah;->d:I

    .line 1289
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iget-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v2, :cond_0

    const/4 v0, -0x1

    :cond_0
    iput v0, v1, Landroid/support/v7/widget/ah;->c:I

    .line 1291
    return-void

    :cond_1
    move v1, v2

    .line 1280
    goto :goto_0

    .line 1283
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v2}, Landroid/support/v7/widget/ba;->f()I

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/ah;->e:I

    goto :goto_1

    .line 1286
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iput v2, v1, Landroid/support/v7/widget/ah;->e:I

    goto :goto_1
.end method

.method private b(Landroid/support/v7/widget/bv;I)V
    .locals 4

    .prologue
    .line 1703
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q()I

    move-result v0

    .line 1705
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 1706
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e(I)Landroid/view/View;

    move-result-object v2

    .line 1707
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ba;->a(Landroid/view/View;)I

    move-result v0

    if-le v0, p2, :cond_2

    .line 1708
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1709
    iget-boolean v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v3, :cond_0

    .line 1710
    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v3, :cond_1

    .line 1711
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/db;->g()V

    .line 1710
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1714
    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroid/support/v7/widget/db;

    invoke-virtual {v0}, Landroid/support/v7/widget/db;->g()V

    .line 1716
    :cond_1
    invoke-virtual {p0, v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/bv;)V

    .line 1705
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1721
    :cond_2
    return-void
.end method

.method private b(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;Z)V
    .locals 2

    .prologue
    .line 1243
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->c()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k(I)I

    move-result v0

    .line 1244
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v1}, Landroid/support/v7/widget/ba;->c()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1246
    if-lez v0, :cond_0

    .line 1247
    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(ILandroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)I

    move-result v1

    .line 1251
    sub-int/2addr v0, v1

    .line 1252
    if-eqz p3, :cond_0

    if-lez v0, :cond_0

    .line 1253
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    neg-int v0, v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ba;->a(I)V

    .line 1255
    :cond_0
    return-void
.end method

.method private b(Landroid/view/View;II)V
    .locals 4

    .prologue
    .line 1008
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->x:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1009
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1010
    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->leftMargin:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->x:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->rightMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->x:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-direct {p0, p2, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v1

    .line 1012
    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->topMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->x:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->bottomMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->x:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    invoke-direct {p0, p3, v2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v0

    .line 1014
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1015
    return-void
.end method

.method private b(Landroid/view/View;IIII)V
    .locals 6

    .prologue
    .line 1581
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1588
    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->leftMargin:I

    add-int v2, p2, v1

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->topMargin:I

    add-int v3, p3, v1

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->rightMargin:I

    sub-int v4, p4, v1

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->bottomMargin:I

    sub-int v5, p5, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIII)V

    .line 1590
    return-void
.end method

.method private c(II)V
    .locals 2

    .prologue
    .line 1593
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v1, :cond_1

    .line 1594
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/support/v7/widget/db;->a(Landroid/support/v7/widget/db;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1593
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1597
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/db;II)V

    goto :goto_1

    .line 1599
    :cond_1
    return-void
.end method

.method private c(Landroid/support/v7/widget/cb;Landroid/support/v7/widget/cy;)Z
    .locals 1

    .prologue
    .line 682
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/cb;->e()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q(I)I

    move-result v0

    :goto_0
    iput v0, p2, Landroid/support/v7/widget/cy;->a:I

    .line 685
    const/high16 v0, -0x80000000

    iput v0, p2, Landroid/support/v7/widget/cy;->b:I

    .line 686
    const/4 v0, 0x1

    return v0

    .line 682
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/cb;->e()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p(I)I

    move-result v0

    goto :goto_0
.end method

.method private h(Landroid/support/v7/widget/cb;)I
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 942
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q()I

    move-result v0

    if-nez v0, :cond_0

    .line 946
    :goto_0
    return v4

    .line 945
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B()V

    .line 946
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-virtual {p0, v0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-virtual {p0, v4, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/ch;->a(Landroid/support/v7/widget/cb;Landroid/support/v7/widget/ba;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/br;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private i(Landroid/support/v7/widget/cb;)I
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 963
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q()I

    move-result v0

    if-nez v0, :cond_0

    .line 967
    :goto_0
    return v4

    .line 966
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B()V

    .line 967
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-virtual {p0, v0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-virtual {p0, v4, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/ch;->b(Landroid/support/v7/widget/cb;Landroid/support/v7/widget/ba;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/br;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private i(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4

    .prologue
    .line 1527
    new-instance v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 1528
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    new-array v0, v0, [I

    iput-object v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    .line 1529
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v2, :cond_0

    .line 1530
    iget-object v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/db;->a(I)I

    move-result v3

    sub-int/2addr v3, p1

    aput v3, v2, v0

    .line 1529
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1532
    :cond_0
    return-object v1
.end method

.method private j(I)I
    .locals 3

    .prologue
    .line 1617
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/db;->a(I)I

    move-result v1

    .line 1618
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v2, :cond_1

    .line 1619
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/db;->a(I)I

    move-result v2

    .line 1620
    if-le v2, v1, :cond_0

    move v1, v2

    .line 1618
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1624
    :cond_1
    return v1
.end method

.method private k(I)I
    .locals 3

    .prologue
    .line 1628
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/db;->a(I)I

    move-result v1

    .line 1629
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v2, :cond_1

    .line 1630
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/db;->a(I)I

    move-result v2

    .line 1631
    if-ge v2, v1, :cond_0

    move v1, v2

    .line 1629
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1635
    :cond_1
    return v1
.end method

.method private l(I)I
    .locals 3

    .prologue
    .line 1659
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/db;->b(I)I

    move-result v1

    .line 1660
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v2, :cond_1

    .line 1661
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/db;->b(I)I

    move-result v2

    .line 1662
    if-le v2, v1, :cond_0

    move v1, v2

    .line 1660
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1666
    :cond_1
    return v1
.end method

.method private m(I)I
    .locals 3

    .prologue
    .line 1670
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/db;->b(I)I

    move-result v1

    .line 1671
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v2, :cond_1

    .line 1672
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/db;->b(I)I

    move-result v2

    .line 1673
    if-ge v2, v1, :cond_0

    move v1, v2

    .line 1671
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1677
    :cond_1
    return v1
.end method

.method private n(I)Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1727
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-nez v0, :cond_3

    .line 1728
    if-ne p1, v3, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eq v0, v3, :cond_2

    .line 1730
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 1728
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 1730
    :cond_3
    if-ne p1, v3, :cond_4

    move v0, v1

    :goto_2
    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()Z

    move-result v3

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method private o(I)I
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x1

    .line 1800
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q()I

    move-result v2

    if-nez v2, :cond_1

    .line 1801
    iget-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v2, :cond_0

    .line 1804
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1801
    goto :goto_0

    .line 1803
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E()I

    move-result v2

    .line 1804
    if-ge p1, v2, :cond_2

    move v2, v0

    :goto_1
    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eq v2, v3, :cond_3

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_2
.end method

.method private o(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1568
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1569
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/db;->b(Landroid/view/View;)V

    .line 1568
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1571
    :cond_0
    return-void
.end method

.method private p(I)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1913
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q()I

    move-result v3

    move v2, v1

    .line 1914
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1915
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e(I)Landroid/view/View;

    move-result-object v0

    .line 1916
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 1917
    if-ltz v0, :cond_0

    if-ge v0, p1, :cond_0

    .line 1921
    :goto_1
    return v0

    .line 1914
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1921
    goto :goto_1
.end method

.method private p(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1575
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1576
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/db;->a(Landroid/view/View;)V

    .line 1575
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1578
    :cond_0
    return-void
.end method

.method private q(I)I
    .locals 2

    .prologue
    .line 1930
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 1931
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e(I)Landroid/view/View;

    move-result-object v0

    .line 1932
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 1933
    if-ltz v0, :cond_0

    if-ge v0, p1, :cond_0

    .line 1937
    :goto_1
    return v0

    .line 1930
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1937
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(ILandroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)I
    .locals 1

    .prologue
    .line 1790
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(ILandroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)I
    .locals 1

    .prologue
    .line 1149
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-nez v0, :cond_0

    .line 1150
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    .line 1152
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/br;->a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)I

    move-result v0

    goto :goto_0
.end method

.method public a()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 1942
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 1948
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 1953
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 1954
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1956
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method a(ZZ)Landroid/view/View;
    .locals 8

    .prologue
    .line 1171
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B()V

    .line 1172
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->c()I

    move-result v3

    .line 1173
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->d()I

    move-result v4

    .line 1174
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q()I

    move-result v5

    .line 1175
    const/4 v1, 0x0

    .line 1176
    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_0
    if-ge v2, v5, :cond_4

    .line 1177
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e(I)Landroid/view/View;

    move-result-object v1

    .line 1178
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/ba;->a(Landroid/view/View;)I

    move-result v6

    .line 1179
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/ba;->b(Landroid/view/View;)I

    move-result v7

    .line 1180
    if-le v7, v3, :cond_0

    if-lt v6, v4, :cond_1

    .line 1176
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 1183
    :cond_1
    if-ge v6, v3, :cond_2

    if-nez p1, :cond_3

    .line 1192
    :cond_2
    :goto_2
    return-object v1

    .line 1188
    :cond_3
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 1189
    goto :goto_1

    :cond_4
    move-object v1, v0

    .line 1192
    goto :goto_2
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 1031
    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1032
    check-cast p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 1033
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()V

    .line 1037
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 1321
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 1322
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()V

    .line 1323
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 1316
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(III)V

    .line 1317
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 1

    .prologue
    .line 1327
    const/4 v0, 0x3

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(III)V

    .line 1328
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/bv;)V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Ljava/lang/Runnable;)Z

    .line 277
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v1, :cond_0

    .line 278
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/db;->e()V

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;Landroid/view/View;Lcom/yelp/android/f/g;)V
    .locals 6

    .prologue
    .line 1093
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1094
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    if-nez v1, :cond_0

    .line 1095
    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/br;->a(Landroid/view/View;Lcom/yelp/android/f/g;)V

    .line 1110
    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    .line 1098
    check-cast v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1099
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-nez v0, :cond_2

    .line 1100
    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a()I

    move-result v0

    iget-boolean v1, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    :goto_1
    const/4 v2, -0x1

    const/4 v3, -0x1

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/f/q;->a(IIIIZZ)Lcom/yelp/android/f/q;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/yelp/android/f/g;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 1105
    :cond_2
    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a()I

    move-result v2

    iget-boolean v3, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    :goto_2
    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/f/q;->a(IIIIZZ)Lcom/yelp/android/f/q;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/yelp/android/f/g;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_2
.end method

.method a(Landroid/support/v7/widget/cb;Landroid/support/v7/widget/cy;)V
    .locals 1

    .prologue
    .line 664
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/cb;Landroid/support/v7/widget/cy;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Landroid/support/v7/widget/cb;Landroid/support/v7/widget/cy;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    invoke-virtual {p2}, Landroid/support/v7/widget/cy;->b()V

    .line 674
    const/4 v0, 0x0

    iput v0, p2, Landroid/support/v7/widget/cy;->a:I

    goto :goto_0
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1114
    invoke-super {p0, p1}, Landroid/support/v7/widget/br;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1115
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q()I

    move-result v0

    if-lez v0, :cond_0

    .line 1116
    invoke-static {p1}, Lcom/yelp/android/f/a;->a(Landroid/view/accessibility/AccessibilityEvent;)Lcom/yelp/android/f/aj;

    move-result-object v0

    .line 1118
    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v1

    .line 1119
    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v2

    .line 1120
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 1133
    :cond_0
    :goto_0
    return-void

    .line 1123
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    .line 1124
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v2

    .line 1125
    if-ge v1, v2, :cond_2

    .line 1126
    invoke-virtual {v0, v1}, Lcom/yelp/android/f/aj;->b(I)V

    .line 1127
    invoke-virtual {v0, v2}, Lcom/yelp/android/f/aj;->c(I)V

    goto :goto_0

    .line 1129
    :cond_2
    invoke-virtual {v0, v2}, Lcom/yelp/android/f/aj;->b(I)V

    .line 1130
    invoke-virtual {v0, v1}, Lcom/yelp/android/f/aj;->c(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 475
    invoke-super {p0, p1}, Landroid/support/v7/widget/br;->a(Ljava/lang/String;)V

    .line 477
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    if-eq v0, p1, :cond_0

    .line 425
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iput-boolean p1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 427
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    .line 428
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()V

    .line 429
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 1

    .prologue
    .line 1962
    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    return v0
.end method

.method public b(ILandroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)I
    .locals 1

    .prologue
    .line 1796
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(ILandroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)I

    move-result v0

    return v0
.end method

.method public b(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)I
    .locals 2

    .prologue
    .line 1158
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1159
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    .line 1161
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/br;->b(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)I

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/support/v7/widget/cb;)I
    .locals 1

    .prologue
    .line 917
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/cb;)I

    move-result v0

    return v0
.end method

.method b(ZZ)Landroid/view/View;
    .locals 7

    .prologue
    .line 1202
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B()V

    .line 1203
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->c()I

    move-result v3

    .line 1204
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->d()I

    move-result v4

    .line 1205
    const/4 v1, 0x0

    .line 1206
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move-object v0, v1

    :goto_0
    if-ltz v2, :cond_4

    .line 1207
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e(I)Landroid/view/View;

    move-result-object v1

    .line 1208
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/ba;->a(Landroid/view/View;)I

    move-result v5

    .line 1209
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/ba;->b(Landroid/view/View;)I

    move-result v6

    .line 1210
    if-le v6, v3, :cond_0

    if-lt v5, v4, :cond_1

    .line 1206
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    .line 1213
    :cond_1
    if-le v6, v4, :cond_2

    if-nez p1, :cond_3

    .line 1222
    :cond_2
    :goto_2
    return-object v1

    .line 1218
    :cond_3
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 1219
    goto :goto_1

    :cond_4
    move-object v1, v0

    .line 1222
    goto :goto_2
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 1311
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(III)V

    .line 1312
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Landroid/support/v7/widget/cb;Landroid/support/v7/widget/cy;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    const/high16 v4, -0x80000000

    const/4 v1, 0x1

    .line 691
    invoke-virtual {p1}, Landroid/support/v7/widget/cb;->a()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    if-ne v2, v5, :cond_1

    :cond_0
    move v1, v0

    .line 766
    :goto_0
    return v1

    .line 695
    :cond_1
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    if-ltz v2, :cond_2

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    invoke-virtual {p1}, Landroid/support/v7/widget/cb;->e()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 696
    :cond_2
    iput v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    .line 697
    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    move v1, v0

    .line 698
    goto :goto_0

    .line 701
    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq v2, v5, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-ge v2, v1, :cond_f

    .line 704
    :cond_4
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)Landroid/view/View;

    move-result-object v2

    .line 705
    if-eqz v2, :cond_c

    .line 708
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D()I

    move-result v0

    :goto_1
    iput v0, p2, Landroid/support/v7/widget/cy;->a:I

    .line 711
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    if-eq v0, v4, :cond_7

    .line 712
    iget-boolean v0, p2, Landroid/support/v7/widget/cy;->c:Z

    if-eqz v0, :cond_6

    .line 713
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->d()I

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    sub-int/2addr v0, v3

    .line 715
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ba;->b(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/cy;->b:I

    goto :goto_0

    .line 708
    :cond_5
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E()I

    move-result v0

    goto :goto_1

    .line 717
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->c()I

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    add-int/2addr v0, v3

    .line 719
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ba;->a(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/cy;->b:I

    goto :goto_0

    .line 725
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ba;->c(Landroid/view/View;)I

    move-result v0

    .line 726
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v3}, Landroid/support/v7/widget/ba;->f()I

    move-result v3

    if-le v0, v3, :cond_9

    .line 728
    iget-boolean v0, p2, Landroid/support/v7/widget/cy;->c:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->d()I

    move-result v0

    :goto_2
    iput v0, p2, Landroid/support/v7/widget/cy;->b:I

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->c()I

    move-result v0

    goto :goto_2

    .line 734
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ba;->a(Landroid/view/View;)I

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v3}, Landroid/support/v7/widget/ba;->c()I

    move-result v3

    sub-int/2addr v0, v3

    .line 736
    if-gez v0, :cond_a

    .line 737
    neg-int v0, v0

    iput v0, p2, Landroid/support/v7/widget/cy;->b:I

    goto/16 :goto_0

    .line 740
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->d()I

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ba;->b(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 742
    if-gez v0, :cond_b

    .line 743
    iput v0, p2, Landroid/support/v7/widget/cy;->b:I

    goto/16 :goto_0

    .line 747
    :cond_b
    iput v4, p2, Landroid/support/v7/widget/cy;->b:I

    goto/16 :goto_0

    .line 751
    :cond_c
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    iput v2, p2, Landroid/support/v7/widget/cy;->a:I

    .line 752
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    if-ne v2, v4, :cond_e

    .line 753
    iget v2, p2, Landroid/support/v7/widget/cy;->a:I

    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o(I)I

    move-result v2

    .line 755
    if-ne v2, v1, :cond_d

    move v0, v1

    :cond_d
    iput-boolean v0, p2, Landroid/support/v7/widget/cy;->c:Z

    .line 756
    invoke-virtual {p2}, Landroid/support/v7/widget/cy;->b()V

    .line 760
    :goto_3
    iput-boolean v1, p2, Landroid/support/v7/widget/cy;->d:Z

    goto/16 :goto_0

    .line 758
    :cond_e
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/cy;->a(I)V

    goto :goto_3

    .line 763
    :cond_f
    iput v4, p2, Landroid/support/v7/widget/cy;->b:I

    .line 764
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    iput v0, p2, Landroid/support/v7/widget/cy;->a:I

    goto/16 :goto_0
.end method

.method c(ILandroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 1861
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B()V

    .line 1863
    if-lez p1, :cond_1

    .line 1864
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iput v1, v2, Landroid/support/v7/widget/ah;->d:I

    .line 1865
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v3, :cond_0

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/ah;->c:I

    .line 1867
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D()I

    move-result v0

    .line 1874
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iget v2, v2, Landroid/support/v7/widget/ah;->c:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/support/v7/widget/ah;->b:I

    .line 1875
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1876
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iput v1, v0, Landroid/support/v7/widget/ah;->a:I

    .line 1877
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->f()I

    move-result v0

    :goto_2
    iput v0, v2, Landroid/support/v7/widget/ah;->e:I

    .line 1878
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    invoke-direct {p0, p2, v0, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/ah;Landroid/support/v7/widget/cb;)I

    move-result v0

    .line 1880
    if-ge v1, v0, :cond_4

    .line 1891
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ba;->a(I)V

    .line 1893
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    .line 1894
    return p1

    :cond_0
    move v0, v1

    .line 1865
    goto :goto_0

    .line 1869
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iput v0, v2, Landroid/support/v7/widget/ah;->d:I

    .line 1870
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v3, :cond_2

    :goto_4
    iput v1, v2, Landroid/support/v7/widget/ah;->c:I

    .line 1872
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E()I

    move-result v0

    goto :goto_1

    :cond_2
    move v1, v0

    .line 1870
    goto :goto_4

    .line 1877
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 1882
    :cond_4
    if-gez p1, :cond_5

    .line 1883
    neg-int p1, v0

    goto :goto_3

    :cond_5
    move p1, v0

    .line 1885
    goto :goto_3
.end method

.method public c(Landroid/support/v7/widget/cb;)I
    .locals 1

    .prologue
    .line 933
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/cb;)I

    move-result v0

    return v0
.end method

.method public c()Landroid/os/Parcelable;
    .locals 5

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    const/high16 v4, -0x80000000

    .line 1041
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1042
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;)V

    .line 1087
    :goto_0
    return-object v0

    .line 1044
    :cond_0
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>()V

    .line 1045
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    iput-boolean v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 1046
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    iput-boolean v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 1047
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Z

    iput-boolean v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    .line 1049
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    if-eqz v0, :cond_2

    .line 1050
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    iput-object v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    .line 1051
    iget-object v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    array-length v0, v0

    iput v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 1052
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b:Ljava/util/List;

    iput-object v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    .line 1057
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q()I

    move-result v0

    if-lez v0, :cond_5

    .line 1058
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B()V

    .line 1059
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D()I

    move-result v0

    :goto_2
    iput v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 1061
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()I

    move-result v0

    iput v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 1062
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    iput v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 1063
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    new-array v0, v0, [I

    iput-object v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    move v0, v1

    .line 1064
    :goto_3
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v1, :cond_6

    .line 1066
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v1, :cond_4

    .line 1067
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/db;->b(I)I

    move-result v1

    .line 1068
    if-eq v1, v4, :cond_1

    .line 1069
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v3}, Landroid/support/v7/widget/ba;->d()I

    move-result v3

    sub-int/2addr v1, v3

    .line 1077
    :cond_1
    :goto_4
    iget-object v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aput v1, v3, v0

    .line 1064
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1054
    :cond_2
    iput v1, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    goto :goto_1

    .line 1059
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E()I

    move-result v0

    goto :goto_2

    .line 1072
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/db;->a(I)I

    move-result v1

    .line 1073
    if-eq v1, v4, :cond_1

    .line 1074
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v3}, Landroid/support/v7/widget/ba;->c()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_4

    .line 1080
    :cond_5
    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 1081
    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 1082
    iput v1, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    :cond_6
    move-object v0, v2

    .line 1087
    goto/16 :goto_0
.end method

.method public c(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 1332
    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(III)V

    .line 1333
    return-void
.end method

.method public c(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)V
    .locals 8

    .prologue
    const/high16 v7, -0x80000000

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 539
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B()V

    .line 541
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->y:Landroid/support/v7/widget/cy;

    .line 542
    invoke-virtual {v3}, Landroid/support/v7/widget/cy;->a()V

    .line 544
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_4

    .line 545
    invoke-direct {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/cy;)V

    .line 551
    :goto_0
    invoke-virtual {p0, p2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/cb;Landroid/support/v7/widget/cy;)V

    .line 553
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_1

    .line 554
    iget-boolean v0, v3, Landroid/support/v7/widget/cy;->c:Z

    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-ne v0, v4, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()Z

    move-result v0

    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Z

    if-eq v0, v4, :cond_1

    .line 556
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 557
    iput-boolean v2, v3, Landroid/support/v7/widget/cy;->d:Z

    .line 561
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-ge v0, v2, :cond_6

    .line 563
    :cond_2
    iget-boolean v0, v3, Landroid/support/v7/widget/cy;->d:Z

    if-eqz v0, :cond_5

    move v0, v1

    .line 564
    :goto_1
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v4, :cond_6

    .line 566
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/db;->e()V

    .line 567
    iget v4, v3, Landroid/support/v7/widget/cy;->b:I

    if-eq v4, v7, :cond_3

    .line 568
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    aget-object v4, v4, v0

    iget v5, v3, Landroid/support/v7/widget/cy;->b:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/db;->c(I)V

    .line 564
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 547
    :cond_4
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C()V

    .line 548
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    iput-boolean v0, v3, Landroid/support/v7/widget/cy;->c:Z

    goto :goto_0

    :cond_5
    move v0, v1

    .line 572
    :goto_2
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v4, :cond_6

    .line 573
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    aget-object v4, v4, v0

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    iget v6, v3, Landroid/support/v7/widget/cy;->b:I

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/db;->a(ZI)V

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 577
    :cond_6
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/bv;)V

    .line 578
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    .line 579
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()V

    .line 580
    iget-boolean v0, v3, Landroid/support/v7/widget/cy;->c:Z

    if-eqz v0, :cond_c

    .line 582
    iget v0, v3, Landroid/support/v7/widget/cy;->a:I

    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ILandroid/support/v7/widget/cb;)V

    .line 583
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/ah;Landroid/support/v7/widget/cb;)I

    .line 585
    iget v0, v3, Landroid/support/v7/widget/cy;->a:I

    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ILandroid/support/v7/widget/cb;)V

    .line 586
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iget v4, v0, Landroid/support/v7/widget/ah;->b:I

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iget v5, v5, Landroid/support/v7/widget/ah;->c:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/support/v7/widget/ah;->b:I

    .line 587
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/ah;Landroid/support/v7/widget/cb;)I

    .line 598
    :goto_3
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q()I

    move-result v0

    if-lez v0, :cond_7

    .line 599
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_d

    .line 600
    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;Z)V

    .line 601
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;Z)V

    .line 608
    :cond_7
    :goto_4
    invoke-virtual {p2}, Landroid/support/v7/widget/cb;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 609
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q()I

    move-result v0

    if-lez v0, :cond_9

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    if-nez v0, :cond_8

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    :cond_8
    move v1, v2

    .line 612
    :cond_9
    if-eqz v1, :cond_a

    .line 613
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Ljava/lang/Runnable;)Z

    .line 614
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/Runnable;)V

    .line 616
    :cond_a
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    .line 617
    iput v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    .line 619
    :cond_b
    iget-boolean v0, v3, Landroid/support/v7/widget/cy;->c:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    .line 620
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Z

    .line 621
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 622
    return-void

    .line 590
    :cond_c
    iget v0, v3, Landroid/support/v7/widget/cy;->a:I

    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ILandroid/support/v7/widget/cb;)V

    .line 591
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/ah;Landroid/support/v7/widget/cb;)I

    .line 593
    iget v0, v3, Landroid/support/v7/widget/cy;->a:I

    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ILandroid/support/v7/widget/cb;)V

    .line 594
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iget v4, v0, Landroid/support/v7/widget/ah;->b:I

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    iget v5, v5, Landroid/support/v7/widget/ah;->c:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/support/v7/widget/ah;->b:I

    .line 595
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/ah;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/ah;Landroid/support/v7/widget/cb;)I

    goto :goto_3

    .line 603
    :cond_d
    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;Z)V

    .line 604
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;Z)V

    goto :goto_4
.end method

.method public d(Landroid/support/v7/widget/cb;)I
    .locals 1

    .prologue
    .line 938
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(Landroid/support/v7/widget/cb;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 1784
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Landroid/support/v7/widget/cb;)I
    .locals 1

    .prologue
    .line 954
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(Landroid/support/v7/widget/cb;)I

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1779
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Landroid/support/v7/widget/cb;)I
    .locals 1

    .prologue
    .line 959
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(Landroid/support/v7/widget/cb;)I

    move-result v0

    return v0
.end method

.method f()Landroid/view/View;
    .locals 12

    .prologue
    const/4 v0, -0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 288
    .line 289
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 290
    new-instance v9, Ljava/util/BitSet;

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    invoke-direct {v9, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 291
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    invoke-virtual {v9, v5, v2, v3}, Ljava/util/BitSet;->set(IIZ)V

    .line 294
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 296
    :goto_0
    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v4, :cond_1

    move v8, v0

    .line 303
    :goto_1
    if-ge v1, v8, :cond_2

    move v4, v3

    :goto_2
    move v7, v1

    .line 304
    :goto_3
    if-eq v7, v8, :cond_c

    .line 305
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e(I)Landroid/view/View;

    move-result-object v6

    .line 306
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 307
    iget-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroid/support/v7/widget/db;

    iget v1, v1, Landroid/support/v7/widget/db;->d:I

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 308
    iget-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroid/support/v7/widget/db;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/db;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v6

    .line 348
    :goto_4
    return-object v0

    :cond_0
    move v2, v0

    .line 294
    goto :goto_0

    .line 301
    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v8, v1

    move v1, v5

    goto :goto_1

    :cond_2
    move v4, v0

    .line 303
    goto :goto_2

    .line 311
    :cond_3
    iget-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroid/support/v7/widget/db;

    iget v1, v1, Landroid/support/v7/widget/db;->d:I

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->clear(I)V

    .line 313
    :cond_4
    iget-boolean v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v1, :cond_6

    .line 304
    :cond_5
    add-int v0, v7, v4

    move v7, v0

    goto :goto_3

    .line 317
    :cond_6
    add-int v1, v7, v4

    if-eq v1, v8, :cond_5

    .line 318
    add-int v1, v7, v4

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e(I)Landroid/view/View;

    move-result-object v10

    .line 320
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v1, :cond_8

    .line 322
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/ba;->b(Landroid/view/View;)I

    move-result v1

    .line 323
    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/ba;->b(Landroid/view/View;)I

    move-result v11

    .line 324
    if-ge v1, v11, :cond_7

    move-object v0, v6

    .line 325
    goto :goto_4

    .line 326
    :cond_7
    if-ne v1, v11, :cond_d

    move v1, v3

    .line 338
    :goto_5
    if-eqz v1, :cond_5

    .line 340
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 341
    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroid/support/v7/widget/db;

    iget v0, v0, Landroid/support/v7/widget/db;->d:I

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroid/support/v7/widget/db;

    iget v1, v1, Landroid/support/v7/widget/db;->d:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_a

    move v1, v3

    :goto_6
    if-gez v2, :cond_b

    move v0, v3

    :goto_7
    if-eq v1, v0, :cond_5

    move-object v0, v6

    .line 342
    goto :goto_4

    .line 330
    :cond_8
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/ba;->a(Landroid/view/View;)I

    move-result v1

    .line 331
    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/ba;->a(Landroid/view/View;)I

    move-result v11

    .line 332
    if-le v1, v11, :cond_9

    move-object v0, v6

    .line 333
    goto :goto_4

    .line 334
    :cond_9
    if-ne v1, v11, :cond_d

    move v1, v3

    .line 335
    goto :goto_5

    :cond_a
    move v1, v5

    .line 341
    goto :goto_6

    :cond_b
    move v0, v5

    goto :goto_7

    .line 348
    :cond_c
    const/4 v0, 0x0

    goto :goto_4

    :cond_d
    move v1, v5

    goto :goto_5
.end method

.method public f(I)V
    .locals 2

    .prologue
    .line 1295
    invoke-super {p0, p1}, Landroid/support/v7/widget/br;->f(I)V

    .line 1296
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v1, :cond_0

    .line 1297
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/db;->d(I)V

    .line 1296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1299
    :cond_0
    return-void
.end method

.method public g(Landroid/support/v7/widget/cb;)I
    .locals 1

    .prologue
    .line 975
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(Landroid/support/v7/widget/cb;)I

    move-result v0

    return v0
.end method

.method public g(I)V
    .locals 2

    .prologue
    .line 1303
    invoke-super {p0, p1}, Landroid/support/v7/widget/br;->g(I)V

    .line 1304
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v1, :cond_0

    .line 1305
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/db;->d(I)V

    .line 1304
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1307
    :cond_0
    return-void
.end method

.method g()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 523
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method h()V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 770
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->f()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    .line 771
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->f()I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:I

    .line 773
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 774
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v:I

    .line 775
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w:I

    .line 780
    :goto_0
    return-void

    .line 777
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w:I

    .line 778
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v:I

    goto :goto_0
.end method

.method public h(I)V
    .locals 0

    .prologue
    .line 269
    if-nez p1, :cond_0

    .line 270
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A()Z

    .line 272
    :cond_0
    return-void
.end method

.method i()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1141
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v0

    .line 1143
    :goto_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    return v0

    .line 1141
    :cond_0
    invoke-virtual {p0, v1, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1143
    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_1
.end method

.method j()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v5, -0x80000000

    .line 1639
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    aget-object v0, v0, v2

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/db;->b(I)I

    move-result v3

    move v0, v1

    .line 1640
    :goto_0
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v4, :cond_0

    .line 1641
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    aget-object v4, v4, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/db;->b(I)I

    move-result v4

    if-eq v4, v3, :cond_1

    move v1, v2

    .line 1645
    :cond_0
    return v1

    .line 1640
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method k()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v5, -0x80000000

    .line 1649
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    aget-object v0, v0, v2

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/db;->a(I)I

    move-result v3

    move v0, v1

    .line 1650
    :goto_0
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v4, :cond_0

    .line 1651
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/db;

    aget-object v4, v4, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/db;->a(I)I

    move-result v4

    if-eq v4, v3, :cond_1

    move v1, v2

    .line 1655
    :cond_0
    return v1

    .line 1650
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
