.class Landroid/support/design/widget/TabLayout$b;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/TabLayout;

.field private b:I

.field private final c:Landroid/graphics/Paint;

.field private d:I

.field private e:F

.field private f:I

.field private g:I


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1330
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$b;->a:Landroid/support/design/widget/TabLayout;

    .line 1331
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1324
    iput v0, p0, Landroid/support/design/widget/TabLayout$b;->d:I

    .line 1327
    iput v0, p0, Landroid/support/design/widget/TabLayout$b;->f:I

    .line 1328
    iput v0, p0, Landroid/support/design/widget/TabLayout$b;->g:I

    .line 1332
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$b;->setWillNotDraw(Z)V

    .line 1333
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$b;->c:Landroid/graphics/Paint;

    .line 1334
    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout$b;F)F
    .locals 0

    .prologue
    .line 1320
    iput p1, p0, Landroid/support/design/widget/TabLayout$b;->e:F

    return p1
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout$b;I)I
    .locals 0

    .prologue
    .line 1320
    iput p1, p0, Landroid/support/design/widget/TabLayout$b;->d:I

    return p1
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout$b;II)V
    .locals 0

    .prologue
    .line 1320
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout$b;->b(II)V

    return-void
.end method

.method private b(II)V
    .locals 1

    .prologue
    .line 1451
    iget v0, p0, Landroid/support/design/widget/TabLayout$b;->f:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout$b;->g:I

    if-eq p2, v0, :cond_1

    .line 1453
    :cond_0
    iput p1, p0, Landroid/support/design/widget/TabLayout$b;->f:I

    .line 1454
    iput p2, p0, Landroid/support/design/widget/TabLayout$b;->g:I

    .line 1455
    invoke-static {p0}, Landroid/support/v4/view/ai;->d(Landroid/view/View;)V

    .line 1457
    :cond_1
    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1428
    iget v0, p0, Landroid/support/design/widget/TabLayout$b;->d:I

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1431
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    .line 1432
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1433
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 1435
    iget v2, p0, Landroid/support/design/widget/TabLayout$b;->e:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Landroid/support/design/widget/TabLayout$b;->d:I

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$b;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 1437
    iget v2, p0, Landroid/support/design/widget/TabLayout$b;->d:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$b;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1438
    iget v3, p0, Landroid/support/design/widget/TabLayout$b;->e:F

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Landroid/support/design/widget/TabLayout$b;->e:F

    sub-float v4, v5, v4

    int-to-float v1, v1

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 1440
    iget v3, p0, Landroid/support/design/widget/TabLayout$b;->e:F

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/support/design/widget/TabLayout$b;->e:F

    sub-float v3, v5, v3

    int-to-float v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 1447
    :cond_0
    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/support/design/widget/TabLayout$b;->b(II)V

    .line 1448
    return-void

    .line 1444
    :cond_1
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method a(I)V
    .locals 1

    .prologue
    .line 1337
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$b;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1338
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$b;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1339
    invoke-static {p0}, Landroid/support/v4/view/ai;->d(Landroid/view/View;)V

    .line 1341
    :cond_0
    return-void
.end method

.method a(IF)V
    .locals 0

    .prologue
    .line 1361
    iput p1, p0, Landroid/support/design/widget/TabLayout$b;->d:I

    .line 1362
    iput p2, p0, Landroid/support/design/widget/TabLayout$b;->e:F

    .line 1363
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$b;->c()V

    .line 1364
    return-void
.end method

.method a(II)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 1460
    invoke-static {p0}, Landroid/support/v4/view/ai;->h(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 1463
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout$b;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1464
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1465
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    .line 1469
    iget v2, p0, Landroid/support/design/widget/TabLayout$b;->d:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v1, :cond_3

    .line 1471
    iget v2, p0, Landroid/support/design/widget/TabLayout$b;->f:I

    .line 1472
    iget v4, p0, Landroid/support/design/widget/TabLayout$b;->g:I

    .line 1493
    :goto_1
    if-ne v2, v3, :cond_0

    if-eq v4, v5, :cond_1

    .line 1494
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$b;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {}, Landroid/support/design/widget/v;->a()Landroid/support/design/widget/p;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;Landroid/support/design/widget/p;)Landroid/support/design/widget/p;

    move-result-object v6

    .line 1495
    sget-object v0, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v0}, Landroid/support/design/widget/p;->a(Landroid/view/animation/Interpolator;)V

    .line 1496
    invoke-virtual {v6, p2}, Landroid/support/design/widget/p;->a(I)V

    .line 1497
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v6, v0, v1}, Landroid/support/design/widget/p;->a(FF)V

    .line 1498
    new-instance v0, Landroid/support/design/widget/TabLayout$b$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/design/widget/TabLayout$b$1;-><init>(Landroid/support/design/widget/TabLayout$b;IIII)V

    invoke-virtual {v6, v0}, Landroid/support/design/widget/p;->a(Landroid/support/design/widget/p$c;)V

    .line 1507
    new-instance v0, Landroid/support/design/widget/TabLayout$b$2;

    invoke-direct {v0, p0, p1}, Landroid/support/design/widget/TabLayout$b$2;-><init>(Landroid/support/design/widget/TabLayout$b;I)V

    invoke-virtual {v6, v0}, Landroid/support/design/widget/p;->a(Landroid/support/design/widget/p$a;)V

    .line 1520
    invoke-virtual {v6}, Landroid/support/design/widget/p;->a()V

    .line 1522
    :cond_1
    return-void

    .line 1460
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1475
    :cond_3
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$b;->a:Landroid/support/design/widget/TabLayout;

    const/16 v2, 0x18

    invoke-static {v1, v2}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout;I)I

    move-result v1

    .line 1476
    iget v2, p0, Landroid/support/design/widget/TabLayout$b;->d:I

    if-ge p1, v2, :cond_5

    .line 1478
    if-eqz v0, :cond_4

    .line 1479
    sub-int v4, v3, v1

    move v2, v4

    goto :goto_1

    .line 1481
    :cond_4
    add-int v4, v5, v1

    move v2, v4

    goto :goto_1

    .line 1485
    :cond_5
    if-eqz v0, :cond_6

    .line 1486
    add-int v4, v5, v1

    move v2, v4

    goto :goto_1

    .line 1488
    :cond_6
    sub-int v4, v3, v1

    move v2, v4

    goto :goto_1
.end method

.method a()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1351
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$b;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1352
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$b;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1353
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1354
    const/4 v0, 0x1

    .line 1357
    :cond_0
    return v0

    .line 1351
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method b()F
    .locals 2

    .prologue
    .line 1367
    iget v0, p0, Landroid/support/design/widget/TabLayout$b;->d:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/design/widget/TabLayout$b;->e:F

    add-float/2addr v0, v1

    return v0
.end method

.method b(I)V
    .locals 1

    .prologue
    .line 1344
    iget v0, p0, Landroid/support/design/widget/TabLayout$b;->b:I

    if-eq v0, p1, :cond_0

    .line 1345
    iput p1, p0, Landroid/support/design/widget/TabLayout$b;->b:I

    .line 1346
    invoke-static {p0}, Landroid/support/v4/view/ai;->d(Landroid/view/View;)V

    .line 1348
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 1526
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1529
    iget v0, p0, Landroid/support/design/widget/TabLayout$b;->f:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout$b;->g:I

    iget v1, p0, Landroid/support/design/widget/TabLayout$b;->f:I

    if-le v0, v1, :cond_0

    .line 1530
    iget v0, p0, Landroid/support/design/widget/TabLayout$b;->f:I

    int-to-float v1, v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$b;->getHeight()I

    move-result v0

    iget v2, p0, Landroid/support/design/widget/TabLayout$b;->b:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Landroid/support/design/widget/TabLayout$b;->g:I

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$b;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$b;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1533
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 1422
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1424
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$b;->c()V

    .line 1425
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 1372
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1374
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_1

    .line 1418
    :cond_0
    :goto_0
    return-void

    .line 1380
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$b;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout;->j(Landroid/support/design/widget/TabLayout;)I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$b;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout;->k(Landroid/support/design/widget/TabLayout;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1381
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$b;->getChildCount()I

    move-result v3

    .line 1383
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move v1, v0

    move v2, v0

    .line 1387
    :goto_1
    if-ge v1, v3, :cond_2

    .line 1388
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$b;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1389
    invoke-virtual {v5, v4, p2}, Landroid/view/View;->measure(II)V

    .line 1390
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1387
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1393
    :cond_2
    if-lez v2, :cond_0

    .line 1398
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$b;->a:Landroid/support/design/widget/TabLayout;

    const/16 v4, 0x10

    invoke-static {v1, v4}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout;I)I

    move-result v1

    .line 1399
    mul-int v4, v2, v3

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$b;->getMeasuredWidth()I

    move-result v5

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v5, v1

    if-gt v4, v1, :cond_3

    move v1, v0

    .line 1402
    :goto_2
    if-ge v1, v3, :cond_4

    .line 1403
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1404
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1405
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1406
    const/4 v4, 0x0

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1402
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1411
    :cond_3
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$b;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v1, v0}, Landroid/support/design/widget/TabLayout;->c(Landroid/support/design/widget/TabLayout;I)I

    .line 1412
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$b;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->l(Landroid/support/design/widget/TabLayout;)V

    .line 1416
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0
.end method
