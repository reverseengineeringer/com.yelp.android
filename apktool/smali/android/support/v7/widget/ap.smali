.class Landroid/support/v7/widget/ap;
.super Landroid/support/v7/internal/widget/ListViewCompat;
.source "ListPopupWindow.java"


# instance fields
.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Landroid/support/v4/view/eh;

.field private j:Landroid/support/v4/widget/ah;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 1548
    const/4 v0, 0x0

    sget v1, Lcom/yelp/android/g/b;->dropDownListViewStyle:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/internal/widget/ListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1549
    iput-boolean p2, p0, Landroid/support/v7/widget/ap;->g:Z

    .line 1550
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ap;->setCacheColorHint(I)V

    .line 1551
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 1620
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/ap;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1621
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/ap;->performItemClick(Landroid/view/View;IJ)Z

    .line 1622
    return-void
.end method

.method private a(Landroid/view/View;IFF)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1637
    iput-boolean v0, p0, Landroid/support/v7/widget/ap;->h:Z

    .line 1641
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ap;->setPressed(Z)V

    .line 1642
    invoke-virtual {p0}, Landroid/support/v7/widget/ap;->layoutChildren()V

    .line 1645
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/ap;->setSelection(I)V

    .line 1646
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/support/v7/widget/ap;->a(ILandroid/view/View;FF)V

    .line 1651
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ap;->setSelectorEnabled(Z)V

    .line 1655
    invoke-virtual {p0}, Landroid/support/v7/widget/ap;->refreshDrawableState()V

    .line 1656
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/ap;Z)Z
    .locals 0

    .prologue
    .line 1496
    iput-boolean p1, p0, Landroid/support/v7/widget/ap;->f:Z

    return p1
.end method

.method private d()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1625
    iput-boolean v0, p0, Landroid/support/v7/widget/ap;->h:Z

    .line 1626
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ap;->setPressed(Z)V

    .line 1628
    invoke-virtual {p0}, Landroid/support/v7/widget/ap;->drawableStateChanged()V

    .line 1630
    iget-object v0, p0, Landroid/support/v7/widget/ap;->i:Landroid/support/v4/view/eh;

    if-eqz v0, :cond_0

    .line 1631
    iget-object v0, p0, Landroid/support/v7/widget/ap;->i:Landroid/support/v4/view/eh;

    invoke-virtual {v0}, Landroid/support/v4/view/eh;->a()V

    .line 1632
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/ap;->i:Landroid/support/v4/view/eh;

    .line 1634
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;I)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1560
    .line 1563
    invoke-static {p1}, Landroid/support/v4/view/ba;->a(Landroid/view/MotionEvent;)I

    move-result v3

    .line 1564
    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    move v3, v2

    .line 1597
    :goto_1
    if-eqz v3, :cond_1

    if-eqz v0, :cond_2

    .line 1598
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/ap;->d()V

    .line 1602
    :cond_2
    if-eqz v3, :cond_7

    .line 1603
    iget-object v0, p0, Landroid/support/v7/widget/ap;->j:Landroid/support/v4/widget/ah;

    if-nez v0, :cond_3

    .line 1604
    new-instance v0, Landroid/support/v4/widget/ah;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/ah;-><init>(Landroid/widget/ListView;)V

    iput-object v0, p0, Landroid/support/v7/widget/ap;->j:Landroid/support/v4/widget/ah;

    .line 1606
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/ap;->j:Landroid/support/v4/widget/ah;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/ah;->a(Z)Landroid/support/v4/widget/a;

    .line 1607
    iget-object v0, p0, Landroid/support/v7/widget/ap;->j:Landroid/support/v4/widget/ah;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/widget/ah;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1612
    :cond_4
    :goto_2
    return v3

    :pswitch_0
    move v0, v1

    move v3, v1

    .line 1567
    goto :goto_1

    :pswitch_1
    move v0, v1

    .line 1572
    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 1573
    if-gez v4, :cond_5

    move v0, v1

    move v3, v1

    .line 1575
    goto :goto_1

    .line 1578
    :cond_5
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    .line 1579
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    .line 1580
    invoke-virtual {p0, v5, v4}, Landroid/support/v7/widget/ap;->pointToPosition(II)I

    move-result v6

    .line 1581
    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    move v3, v0

    move v0, v2

    .line 1583
    goto :goto_1

    .line 1586
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/ap;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v6, v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ap;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1587
    int-to-float v5, v5

    int-to-float v4, v4

    invoke-direct {p0, v0, v6, v5, v4}, Landroid/support/v7/widget/ap;->a(Landroid/view/View;IFF)V

    .line 1590
    if-ne v3, v2, :cond_0

    .line 1591
    invoke-direct {p0, v0, v6}, Landroid/support/v7/widget/ap;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 1608
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/ap;->j:Landroid/support/v4/widget/ah;

    if-eqz v0, :cond_4

    .line 1609
    iget-object v0, p0, Landroid/support/v7/widget/ap;->j:Landroid/support/v4/widget/ah;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ah;->a(Z)Landroid/support/v4/widget/a;

    goto :goto_2

    :pswitch_2
    move v0, v2

    goto :goto_3

    .line 1564
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 1660
    iget-boolean v0, p0, Landroid/support/v7/widget/ap;->h:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->c()Z

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

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 1696
    iget-boolean v0, p0, Landroid/support/v7/widget/ap;->g:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->hasFocus()Z

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

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 1676
    iget-boolean v0, p0, Landroid/support/v7/widget/ap;->g:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->hasWindowFocus()Z

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

.method public isFocused()Z
    .locals 1

    .prologue
    .line 1686
    iget-boolean v0, p0, Landroid/support/v7/widget/ap;->g:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->isFocused()Z

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

.method public isInTouchMode()Z
    .locals 1

    .prologue
    .line 1666
    iget-boolean v0, p0, Landroid/support/v7/widget/ap;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/ap;->f:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
