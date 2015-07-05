.class Landroid/support/v7/internal/widget/SpinnerCompat;
.super Landroid/support/v7/internal/widget/AbsSpinnerCompat;
.source "SpinnerCompat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field E:I

.field private F:Landroid/support/v7/widget/aq;

.field private G:Landroid/support/v7/internal/widget/bb;

.field private H:Landroid/support/v7/internal/widget/ax;

.field private I:I

.field private J:Z

.field private K:Landroid/graphics/Rect;

.field private final L:Landroid/support/v7/internal/widget/bd;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 141
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 142
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 161
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->K:Landroid/graphics/Rect;

    .line 163
    sget-object v0, Lcom/yelp/android/g/l;->Spinner:[I

    invoke-static {p1, p2, v0, p3, v4}, Landroid/support/v7/internal/widget/bg;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/bg;

    move-result-object v0

    .line 167
    sget v1, Lcom/yelp/android/g/l;->Spinner_android_background:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/bg;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    const/4 v1, -0x1

    if-ne p4, v1, :cond_0

    .line 170
    sget v1, Lcom/yelp/android/g/l;->Spinner_spinnerMode:I

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/internal/widget/bg;->a(II)I

    move-result p4

    .line 173
    :cond_0
    packed-switch p4, :pswitch_data_0

    .line 207
    :goto_0
    sget v1, Lcom/yelp/android/g/l;->Spinner_android_gravity:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/bg;->a(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->I:I

    .line 209
    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->G:Landroid/support/v7/internal/widget/bb;

    sget v2, Lcom/yelp/android/g/l;->Spinner_prompt:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/bg;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/internal/widget/bb;->a(Ljava/lang/CharSequence;)V

    .line 211
    sget v1, Lcom/yelp/android/g/l;->Spinner_disableChildrenWhenDisabled:I

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/internal/widget/bg;->a(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->J:Z

    .line 214
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/bg;->b()V

    .line 218
    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->H:Landroid/support/v7/internal/widget/ax;

    if-eqz v1, :cond_1

    .line 219
    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->G:Landroid/support/v7/internal/widget/bb;

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->H:Landroid/support/v7/internal/widget/ax;

    invoke-interface {v1, v2}, Landroid/support/v7/internal/widget/bb;->a(Landroid/widget/ListAdapter;)V

    .line 220
    iput-object v5, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->H:Landroid/support/v7/internal/widget/ax;

    .line 224
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/bg;->c()Landroid/support/v7/internal/widget/bd;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->L:Landroid/support/v7/internal/widget/bd;

    .line 225
    return-void

    .line 175
    :pswitch_0
    new-instance v1, Landroid/support/v7/internal/widget/aw;

    invoke-direct {v1, p0, v5}, Landroid/support/v7/internal/widget/aw;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/support/v7/internal/widget/au;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->G:Landroid/support/v7/internal/widget/bb;

    goto :goto_0

    .line 180
    :pswitch_1
    new-instance v1, Landroid/support/v7/internal/widget/ay;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/support/v7/internal/widget/ay;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 182
    sget v2, Lcom/yelp/android/g/l;->Spinner_android_dropDownWidth:I

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/internal/widget/bg;->e(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->E:I

    .line 185
    sget v2, Lcom/yelp/android/g/l;->Spinner_android_popupBackground:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/bg;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ay;->a(Landroid/graphics/drawable/Drawable;)V

    .line 188
    iput-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->G:Landroid/support/v7/internal/widget/bb;

    .line 189
    new-instance v2, Landroid/support/v7/internal/widget/au;

    invoke-direct {v2, p0, p0, v1}, Landroid/support/v7/internal/widget/au;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/view/View;Landroid/support/v7/internal/widget/ay;)V

    iput-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->F:Landroid/support/v7/widget/aq;

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/SpinnerCompat;)Landroid/support/v7/internal/widget/bb;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->G:Landroid/support/v7/internal/widget/bb;

    return-object v0
.end method

.method private a(Landroid/view/View;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 556
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 557
    if-nez v0, :cond_0

    .line 558
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 561
    :cond_0
    if-eqz p2, :cond_1

    .line 562
    invoke-virtual {p0, p1, v5, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 565
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 566
    iget-boolean v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->J:Z

    if-eqz v1, :cond_2

    .line 567
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 571
    :cond_2
    iget v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->b:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 573
    iget v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->c:I

    iget-object v3, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 577
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 583
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 586
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    .line 588
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 590
    add-int/2addr v2, v5

    .line 592
    invoke-virtual {p1, v5, v0, v2, v1}, Landroid/view/View;->layout(IIII)V

    .line 593
    return-void
.end method

.method private c(IZ)Landroid/view/View;
    .locals 2

    .prologue
    .line 527
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->u:Z

    if-nez v0, :cond_0

    .line 528
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->i:Landroid/support/v7/internal/widget/c;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/c;->a(I)Landroid/view/View;

    move-result-object v0

    .line 529
    if-eqz v0, :cond_0

    .line 531
    invoke-direct {p0, v0, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/view/View;Z)V

    .line 543
    :goto_0
    return-object v0

    .line 538
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 541
    invoke-direct {p0, v0, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/view/View;Z)V

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v9, -0x2

    const/4 v0, 0x0

    .line 639
    if-nez p1, :cond_0

    .line 679
    :goto_0
    return v0

    .line 646
    :cond_0
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 648
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 653
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 654
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v4, v1, 0xf

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 655
    sub-int v3, v8, v1

    .line 656
    rsub-int/lit8 v3, v3, 0xf

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v5, v1

    move-object v3, v2

    move v4, v0

    move v1, v0

    .line 657
    :goto_1
    if-ge v5, v8, :cond_2

    .line 658
    invoke-interface {p1, v5}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v0

    .line 659
    if-eq v0, v1, :cond_4

    move-object v1, v2

    .line 663
    :goto_2
    invoke-interface {p1, v5, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 664
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    .line 665
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    :cond_1
    invoke-virtual {v3, v6, v7}, Landroid/view/View;->measure(II)V

    .line 670
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 657
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_1

    .line 674
    :cond_2
    if-eqz p2, :cond_3

    .line 675
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->K:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 676
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->K:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->K:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v1

    move-object v1, v3

    goto :goto_2
.end method

.method a(IZ)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 461
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 462
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 464
    iget-boolean v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->u:Z

    if-eqz v2, :cond_0

    .line 465
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->g()V

    .line 469
    :cond_0
    iget v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->z:I

    if-nez v2, :cond_1

    .line 470
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->a()V

    .line 512
    :goto_0
    return-void

    .line 474
    :cond_1
    iget v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->v:I

    if-ltz v2, :cond_2

    .line 475
    iget v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->v:I

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelectedPositionInt(I)V

    .line 478
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->b()V

    .line 481
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->removeAllViewsInLayout()V

    .line 484
    iget v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:I

    iput v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->j:I

    .line 485
    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v2, :cond_3

    .line 486
    iget v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/support/v7/internal/widget/SpinnerCompat;->c(IZ)Landroid/view/View;

    move-result-object v2

    .line 487
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 489
    invoke-static {p0}, Landroid/support/v4/view/ce;->h(Landroid/view/View;)I

    move-result v4

    .line 490
    iget v5, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->I:I

    invoke-static {v5, v4}, Landroid/support/v4/view/q;->a(II)I

    move-result v4

    .line 491
    and-int/lit8 v4, v4, 0x7

    sparse-switch v4, :sswitch_data_0

    .line 499
    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 503
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->i:Landroid/support/v7/internal/widget/c;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/c;->a()V

    .line 505
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->invalidate()V

    .line 507
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->h()V

    .line 509
    iput-boolean v6, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->u:Z

    .line 510
    iput-boolean v6, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->o:Z

    .line 511
    iget v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 493
    :sswitch_0
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v1, v3, 0x2

    sub-int/2addr v0, v1

    .line 494
    goto :goto_1

    .line 496
    :sswitch_1
    add-int/2addr v0, v1

    sub-int/2addr v0, v3

    goto :goto_1

    .line 491
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method a(Landroid/support/v7/internal/widget/ac;)V
    .locals 0

    .prologue
    .line 416
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setOnItemClickListener(Landroid/support/v7/internal/widget/ac;)V

    .line 417
    return-void
.end method

.method public a(Landroid/widget/SpinnerAdapter;)V
    .locals 2

    .prologue
    .line 360
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->a(Landroid/widget/SpinnerAdapter;)V

    .line 362
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->i:Landroid/support/v7/internal/widget/c;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/c;->a()V

    .line 364
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 365
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getViewTypeCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 367
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Spinner adapter view type count must be 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->G:Landroid/support/v7/internal/widget/bb;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->G:Landroid/support/v7/internal/widget/bb;

    new-instance v1, Landroid/support/v7/internal/widget/ax;

    invoke-direct {v1, p1}, Landroid/support/v7/internal/widget/ax;-><init>(Landroid/widget/SpinnerAdapter;)V

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/bb;->a(Landroid/widget/ListAdapter;)V

    .line 374
    :goto_0
    return-void

    .line 372
    :cond_1
    new-instance v0, Landroid/support/v7/internal/widget/ax;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/widget/ax;-><init>(Landroid/widget/SpinnerAdapter;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->H:Landroid/support/v7/internal/widget/ax;

    goto :goto_0
.end method

.method public getBaseline()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 378
    const/4 v1, 0x0

    .line 380
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 381
    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/SpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 387
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 388
    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v2

    .line 389
    if-ltz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, v2

    .line 391
    :cond_1
    return v0

    .line 382
    :cond_2
    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 383
    invoke-direct {p0, v3, v3}, Landroid/support/v7/internal/widget/SpinnerCompat;->c(IZ)Landroid/view/View;

    move-result-object v1

    .line 384
    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->i:Landroid/support/v7/internal/widget/c;

    invoke-virtual {v2, v3, v1}, Landroid/support/v7/internal/widget/c;->a(ILandroid/view/View;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 611
    invoke-virtual {p0, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 612
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 613
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 397
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onDetachedFromWindow()V

    .line 399
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->G:Landroid/support/v7/internal/widget/bb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->G:Landroid/support/v7/internal/widget/bb;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/bb;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->G:Landroid/support/v7/internal/widget/bb;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/bb;->a()V

    .line 402
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 447
    invoke-super/range {p0 .. p5}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onLayout(ZIIII)V

    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->q:Z

    .line 449
    invoke-virtual {p0, v1, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(IZ)V

    .line 450
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->q:Z

    .line 451
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 430
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onMeasure(II)V

    .line 431
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->G:Landroid/support/v7/internal/widget/bb;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 432
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getMeasuredWidth()I

    move-result v0

    .line 433
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->c()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setMeasuredDimension(II)V

    .line 438
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 691
    check-cast p1, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;

    .line 693
    invoke-virtual {p1}, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 695
    iget-boolean v0, p1, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;->showDropdown:Z

    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 697
    if-eqz v0, :cond_0

    .line 698
    new-instance v1, Landroid/support/v7/internal/widget/av;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/av;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;)V

    .line 711
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 714
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 684
    new-instance v1, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;

    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 685
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->G:Landroid/support/v7/internal/widget/bb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->G:Landroid/support/v7/internal/widget/bb;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/bb;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;->showDropdown:Z

    .line 686
    return-object v1

    .line 685
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->F:Landroid/support/v7/widget/aq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->F:Landroid/support/v7/widget/aq;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/aq;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    const/4 v0, 0x1

    .line 425
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 597
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->performClick()Z

    move-result v0

    .line 599
    if-nez v0, :cond_0

    .line 600
    const/4 v0, 0x1

    .line 602
    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->G:Landroid/support/v7/internal/widget/bb;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/bb;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 603
    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->G:Landroid/support/v7/internal/widget/bb;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/bb;->c()V

    .line 607
    :cond_0
    return v0
.end method

.method public synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .prologue
    .line 333
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setEnabled(Z)V

    .line 334
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->J:Z

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getChildCount()I

    move-result v1

    .line 336
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 337
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/support/v7/internal/widget/ac;)V
    .locals 2

    .prologue
    .line 412
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "setOnItemClickListener cannot be used with a spinner."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
