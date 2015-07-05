.class public Landroid/support/v7/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "Toolbar.java"


# instance fields
.field private A:Z

.field private final B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final C:[I

.field private D:Landroid/support/v7/widget/dj;

.field private final E:Landroid/support/v7/widget/n;

.field private F:Landroid/support/v7/internal/widget/bh;

.field private G:Landroid/support/v7/widget/ActionMenuPresenter;

.field private H:Landroid/support/v7/widget/di;

.field private I:Landroid/support/v7/internal/view/menu/y;

.field private J:Landroid/support/v7/internal/view/menu/j;

.field private K:Z

.field private L:I

.field private final M:Ljava/lang/Runnable;

.field private final N:Landroid/support/v7/internal/widget/bd;

.field a:Landroid/view/View;

.field private b:Landroid/support/v7/widget/ActionMenuView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageButton;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Ljava/lang/CharSequence;

.field private i:Landroid/widget/ImageButton;

.field private j:Landroid/content/Context;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private final t:Landroid/support/v7/internal/widget/ao;

.field private u:I

.field private v:Ljava/lang/CharSequence;

.field private w:Ljava/lang/CharSequence;

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 192
    sget v0, Lcom/yelp/android/g/b;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/high16 v7, -0x80000000

    const/4 v3, -0x1

    const/4 v6, 0x0

    .line 196
    invoke-static {p1, p2, p3}, Landroid/support/v7/widget/Toolbar;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    new-instance v0, Landroid/support/v7/internal/widget/ao;

    invoke-direct {v0}, Landroid/support/v7/internal/widget/ao;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->t:Landroid/support/v7/internal/widget/ao;

    .line 141
    const v0, 0x800013

    iput v0, p0, Landroid/support/v7/widget/Toolbar;->u:I

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->B:Ljava/util/ArrayList;

    .line 155
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->C:[I

    .line 159
    new-instance v0, Landroid/support/v7/widget/df;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/df;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->E:Landroid/support/v7/widget/n;

    .line 179
    new-instance v0, Landroid/support/v7/widget/dg;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/dg;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->M:Ljava/lang/Runnable;

    .line 199
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/g/l;->Toolbar:[I

    invoke-static {v0, p2, v1, p3, v6}, Landroid/support/v7/internal/widget/bg;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/bg;

    move-result-object v0

    .line 202
    sget v1, Lcom/yelp/android/g/l;->Toolbar_titleTextAppearance:I

    invoke-virtual {v0, v1, v6}, Landroid/support/v7/internal/widget/bg;->f(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/Toolbar;->l:I

    .line 203
    sget v1, Lcom/yelp/android/g/l;->Toolbar_subtitleTextAppearance:I

    invoke-virtual {v0, v1, v6}, Landroid/support/v7/internal/widget/bg;->f(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/Toolbar;->m:I

    .line 204
    sget v1, Lcom/yelp/android/g/l;->Toolbar_android_gravity:I

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->u:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/bg;->b(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/Toolbar;->u:I

    .line 205
    const/16 v1, 0x30

    iput v1, p0, Landroid/support/v7/widget/Toolbar;->n:I

    .line 206
    sget v1, Lcom/yelp/android/g/l;->Toolbar_titleMargins:I

    invoke-virtual {v0, v1, v6}, Landroid/support/v7/internal/widget/bg;->c(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/Toolbar;->s:I

    iput v1, p0, Landroid/support/v7/widget/Toolbar;->r:I

    iput v1, p0, Landroid/support/v7/widget/Toolbar;->q:I

    iput v1, p0, Landroid/support/v7/widget/Toolbar;->p:I

    .line 209
    sget v1, Lcom/yelp/android/g/l;->Toolbar_titleMarginStart:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/internal/widget/bg;->c(II)I

    move-result v1

    .line 210
    if-ltz v1, :cond_0

    .line 211
    iput v1, p0, Landroid/support/v7/widget/Toolbar;->p:I

    .line 214
    :cond_0
    sget v1, Lcom/yelp/android/g/l;->Toolbar_titleMarginEnd:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/internal/widget/bg;->c(II)I

    move-result v1

    .line 215
    if-ltz v1, :cond_1

    .line 216
    iput v1, p0, Landroid/support/v7/widget/Toolbar;->q:I

    .line 219
    :cond_1
    sget v1, Lcom/yelp/android/g/l;->Toolbar_titleMarginTop:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/internal/widget/bg;->c(II)I

    move-result v1

    .line 220
    if-ltz v1, :cond_2

    .line 221
    iput v1, p0, Landroid/support/v7/widget/Toolbar;->r:I

    .line 224
    :cond_2
    sget v1, Lcom/yelp/android/g/l;->Toolbar_titleMarginBottom:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/internal/widget/bg;->c(II)I

    move-result v1

    .line 226
    if-ltz v1, :cond_3

    .line 227
    iput v1, p0, Landroid/support/v7/widget/Toolbar;->s:I

    .line 230
    :cond_3
    sget v1, Lcom/yelp/android/g/l;->Toolbar_maxButtonHeight:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/internal/widget/bg;->d(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/Toolbar;->o:I

    .line 232
    sget v1, Lcom/yelp/android/g/l;->Toolbar_contentInsetStart:I

    invoke-virtual {v0, v1, v7}, Landroid/support/v7/internal/widget/bg;->c(II)I

    move-result v1

    .line 235
    sget v2, Lcom/yelp/android/g/l;->Toolbar_contentInsetEnd:I

    invoke-virtual {v0, v2, v7}, Landroid/support/v7/internal/widget/bg;->c(II)I

    move-result v2

    .line 238
    sget v3, Lcom/yelp/android/g/l;->Toolbar_contentInsetLeft:I

    invoke-virtual {v0, v3, v6}, Landroid/support/v7/internal/widget/bg;->d(II)I

    move-result v3

    .line 240
    sget v4, Lcom/yelp/android/g/l;->Toolbar_contentInsetRight:I

    invoke-virtual {v0, v4, v6}, Landroid/support/v7/internal/widget/bg;->d(II)I

    move-result v4

    .line 243
    iget-object v5, p0, Landroid/support/v7/widget/Toolbar;->t:Landroid/support/v7/internal/widget/ao;

    invoke-virtual {v5, v3, v4}, Landroid/support/v7/internal/widget/ao;->b(II)V

    .line 245
    if-ne v1, v7, :cond_4

    if-eq v2, v7, :cond_5

    .line 247
    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/Toolbar;->t:Landroid/support/v7/internal/widget/ao;

    invoke-virtual {v3, v1, v2}, Landroid/support/v7/internal/widget/ao;->a(II)V

    .line 250
    :cond_5
    sget v1, Lcom/yelp/android/g/l;->Toolbar_collapseIcon:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/bg;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->g:Landroid/graphics/drawable/Drawable;

    .line 251
    sget v1, Lcom/yelp/android/g/l;->Toolbar_collapseContentDescription:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/bg;->b(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->h:Ljava/lang/CharSequence;

    .line 253
    sget v1, Lcom/yelp/android/g/l;->Toolbar_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/bg;->b(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 254
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 255
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 258
    :cond_6
    sget v1, Lcom/yelp/android/g/l;->Toolbar_subtitle:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/bg;->b(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 259
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 260
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 263
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->j:Landroid/content/Context;

    .line 264
    sget v1, Lcom/yelp/android/g/l;->Toolbar_popupTheme:I

    invoke-virtual {v0, v1, v6}, Landroid/support/v7/internal/widget/bg;->f(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 266
    sget v1, Lcom/yelp/android/g/l;->Toolbar_navigationIcon:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/bg;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 267
    if-eqz v1, :cond_8

    .line 268
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 270
    :cond_8
    sget v1, Lcom/yelp/android/g/l;->Toolbar_navigationContentDescription:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/bg;->b(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 271
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 272
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 276
    :cond_9
    sget v1, Lcom/yelp/android/g/l;->Toolbar_android_minHeight:I

    invoke-virtual {v0, v1, v6}, Landroid/support/v7/internal/widget/bg;->d(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/Toolbar;->L:I

    .line 278
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/bg;->b()V

    .line 281
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/bg;->c()Landroid/support/v7/internal/widget/bd;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->N:Landroid/support/v7/internal/widget/bd;

    .line 282
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 1620
    and-int/lit8 v0, p1, 0x70

    .line 1621
    sparse-switch v0, :sswitch_data_0

    .line 1627
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->u:I

    and-int/lit8 v0, v0, 0x70

    :sswitch_0
    return v0

    .line 1621
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Landroid/view/View;I)I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1588
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1589
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1590
    if-lez p2, :cond_0

    sub-int v1, v3, p2

    div-int/lit8 v1, v1, 0x2

    .line 1591
    :goto_0
    iget v4, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->a:I

    invoke-direct {p0, v4}, Landroid/support/v7/widget/Toolbar;->a(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 1601
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v4

    .line 1602
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v5

    .line 1603
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v6

    .line 1604
    sub-int v1, v6, v4

    sub-int/2addr v1, v5

    .line 1605
    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    .line 1606
    iget v7, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    if-ge v1, v7, :cond_1

    .line 1607
    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    .line 1615
    :goto_1
    add-int/2addr v0, v4

    :goto_2
    return v0

    :cond_0
    move v1, v2

    .line 1590
    goto :goto_0

    .line 1593
    :sswitch_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_2

    .line 1596
    :sswitch_1
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v3

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int v0, v2, v0

    sub-int/2addr v0, v1

    goto :goto_2

    .line 1609
    :cond_1
    sub-int v5, v6, v5

    sub-int v3, v5, v3

    sub-int/2addr v3, v1

    sub-int/2addr v3, v4

    .line 1611
    iget v5, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    if-ge v3, v5, :cond_2

    .line 1612
    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v0, v3

    sub-int v0, v1, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1

    .line 1591
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private a(Landroid/view/View;IIII[I)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1153
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1155
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    aget v2, p6, v5

    sub-int/2addr v1, v2

    .line 1156
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    aget v3, p6, v6

    sub-int/2addr v2, v3

    .line 1157
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1158
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1159
    add-int/2addr v3, v4

    .line 1160
    neg-int v1, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v5

    .line 1161
    neg-int v1, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v6

    .line 1163
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1165
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    add-int/2addr v2, p5

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v2, v0}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v0

    .line 1169
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1170
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v3

    return v0
.end method

.method private a(Landroid/view/View;I[II)I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1563
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1564
    iget v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I

    aget v2, p3, v3

    sub-int/2addr v1, v2

    .line 1565
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, p2

    .line 1566
    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v3

    .line 1567
    invoke-direct {p0, p1, p4}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I)I

    move-result v1

    .line 1568
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1569
    add-int v4, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p1, v2, v1, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 1570
    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    .line 1571
    return v0
.end method

.method private a(Ljava/util/List;[I)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1543
    aget v1, p2, v3

    .line 1544
    const/4 v0, 0x1

    aget v0, p2, v0

    .line 1546
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    move v2, v3

    move v4, v3

    move v5, v0

    move v6, v1

    .line 1547
    :goto_0
    if-ge v2, v7, :cond_0

    .line 1548
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1549
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1550
    iget v8, v1, Landroid/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I

    sub-int v6, v8, v6

    .line 1551
    iget v1, v1, Landroid/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v5

    .line 1552
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1553
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1554
    neg-int v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1555
    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1556
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v8

    add-int/2addr v0, v9

    add-int v1, v4, v0

    .line 1547
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v4, v1

    goto :goto_0

    .line 1558
    :cond_0
    return v4
.end method

.method private static a(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/content/Context;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2030
    sget-object v0, Lcom/yelp/android/g/l;->Toolbar:[I

    invoke-virtual {p0, p1, v0, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2032
    sget v0, Lcom/yelp/android/g/l;->Toolbar_theme:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 2033
    if-eqz v2, :cond_0

    .line 2034
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p0, v0

    .line 2036
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2037
    return-object p0
.end method

.method static synthetic a(Landroid/support/v7/widget/Toolbar;)Landroid/support/v7/widget/dj;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->D:Landroid/support/v7/widget/dj;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/widget/Toolbar;Z)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p1}, Landroid/support/v7/widget/Toolbar;->setChildVisibilityForExpandedActionView(Z)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1022
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1024
    if-nez v0, :cond_0

    .line 1025
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->i()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1031
    :goto_0
    const/4 v1, 0x1

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->b:I

    .line 1032
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1033
    return-void

    .line 1026
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1027
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    goto :goto_0

    .line 1029
    :cond_1
    check-cast v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    goto :goto_0
.end method

.method private a(Landroid/view/View;IIIII)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 1128
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1130
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1133
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p5

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v2, v0}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v0

    .line 1137
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1138
    if-eq v2, v4, :cond_1

    if-ltz p6, :cond_1

    .line 1139
    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    .line 1142
    :cond_0
    invoke-static {p6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1144
    :cond_1
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1145
    return-void
.end method

.method private a(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1639
    invoke-static {p0}, Landroid/support/v4/view/ce;->h(Landroid/view/View;)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 1640
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v2

    .line 1641
    invoke-static {p0}, Landroid/support/v4/view/ce;->h(Landroid/view/View;)I

    move-result v3

    invoke-static {p2, v3}, Landroid/support/v4/view/q;->a(II)I

    move-result v3

    .line 1644
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1646
    if-eqz v0, :cond_2

    .line 1647
    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_4

    .line 1648
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1649
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1650
    iget v4, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->b:I

    if-nez v4, :cond_0

    invoke-direct {p0, v2}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->a:I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->b(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1652
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1647
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 1639
    goto :goto_0

    .line 1656
    :cond_2
    :goto_2
    if-ge v1, v2, :cond_4

    .line 1657
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1658
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1659
    iget v5, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->b:I

    if-nez v5, :cond_3

    invoke-direct {p0, v4}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->a:I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->b(I)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 1661
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1656
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1665
    :cond_4
    return-void
.end method

.method private b(I)I
    .locals 2

    .prologue
    .line 1668
    invoke-static {p0}, Landroid/support/v4/view/ce;->h(Landroid/view/View;)I

    move-result v1

    .line 1669
    invoke-static {p1, v1}, Landroid/support/v4/view/q;->a(II)I

    move-result v0

    .line 1670
    and-int/lit8 v0, v0, 0x7

    .line 1671
    packed-switch v0, :pswitch_data_0

    .line 1677
    :pswitch_0
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    :pswitch_1
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 1671
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Landroid/view/View;I[II)I
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1576
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1577
    iget v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I

    aget v2, p3, v4

    sub-int/2addr v1, v2

    .line 1578
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v2, p2, v2

    .line 1579
    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v4

    .line 1580
    invoke-direct {p0, p1, p4}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I)I

    move-result v1

    .line 1581
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1582
    sub-int v4, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p1, v4, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 1583
    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I

    add-int/2addr v0, v3

    sub-int v0, v2, v0

    .line 1584
    return v0
.end method

.method static synthetic b(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->n()V

    return-void
.end method

.method private b(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 1682
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 1686
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1687
    invoke-static {v0}, Landroid/support/v4/view/an;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    invoke-static {v0}, Landroid/support/v4/view/an;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic c(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/widget/Toolbar;)I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->n:I

    return v0
.end method

.method private d(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 1692
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1693
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method private e(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1748
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1749
    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eq p1, v0, :cond_0

    .line 1750
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1752
    :cond_0
    return-void

    .line 1750
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 849
    new-instance v0, Lcom/yelp/android/l/e;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/l/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getMinimumHeightCompat()I
    .locals 2

    .prologue
    .line 1782
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1784
    invoke-static {p0}, Landroid/support/v4/view/ce;->p(Landroid/view/View;)I

    move-result v0

    .line 1787
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->L:I

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 509
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    .line 511
    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 823
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->l()V

    .line 824
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->d()Landroid/support/v7/internal/view/menu/i;

    move-result-object v0

    if-nez v0, :cond_1

    .line 826
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/i;

    .line 827
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->H:Landroid/support/v7/widget/di;

    if-nez v1, :cond_0

    .line 828
    new-instance v1, Landroid/support/v7/widget/di;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/support/v7/widget/di;-><init>(Landroid/support/v7/widget/Toolbar;Landroid/support/v7/widget/df;)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->H:Landroid/support/v7/widget/di;

    .line 830
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 831
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->H:Landroid/support/v7/widget/di;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->j:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/x;Landroid/content/Context;)V

    .line 833
    :cond_1
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    .line 836
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-nez v0, :cond_0

    .line 837
    new-instance v0, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    .line 838
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->k:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->setPopupTheme(I)V

    .line 839
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->E:Landroid/support/v7/widget/n;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->setOnMenuItemClickListener(Landroid/support/v7/widget/n;)V

    .line 840
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->I:Landroid/support/v7/internal/view/menu/y;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->J:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/support/v7/internal/view/menu/y;Landroid/support/v7/internal/view/menu/j;)V

    .line 841
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->i()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 842
    const v1, 0x800005

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->n:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->a:I

    .line 843
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 844
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)V

    .line 846
    :cond_0
    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    .line 993
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 994
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/yelp/android/g/b;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    .line 996
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->i()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 997
    const v1, 0x800003

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->n:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->a:I

    .line 998
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1000
    :cond_0
    return-void
.end method

.method private n()V
    .locals 4

    .prologue
    .line 1003
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1004
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/yelp/android/g/b;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    .line 1006
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1007
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->h:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1008
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->i()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1009
    const v1, 0x800003

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->n:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->a:I

    .line 1010
    const/4 v1, 0x2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->b:I

    .line 1011
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1012
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    new-instance v1, Landroid/support/v7/widget/dh;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/dh;-><init>(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1019
    :cond_0
    return-void
.end method

.method private o()V
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->M:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1067
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->M:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    .line 1068
    return-void
.end method

.method private p()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1177
    iget-boolean v1, p0, Landroid/support/v7/widget/Toolbar;->K:Z

    if-nez v1, :cond_1

    .line 1187
    :cond_0
    :goto_0
    return v0

    .line 1179
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v2

    move v1, v0

    .line 1180
    :goto_1
    if-ge v1, v2, :cond_3

    .line 1181
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1182
    invoke-direct {p0, v3}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-gtz v3, :cond_0

    .line 1180
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1187
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setChildVisibilityForExpandedActionView(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1737
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v3

    move v2, v1

    .line 1738
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1739
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1740
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1741
    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->b:I

    const/4 v5, 0x2

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eq v4, v0, :cond_0

    .line 1742
    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1738
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1742
    goto :goto_1

    .line 1745
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroid/util/AttributeSet;)Landroid/support/v7/widget/Toolbar$LayoutParams;
    .locals 2

    .prologue
    .line 1698
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$LayoutParams;
    .locals 1

    .prologue
    .line 1703
    instance-of v0, p1, Landroid/support/v7/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    .line 1704
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    check-cast p1, Landroid/support/v7/widget/Toolbar$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/support/v7/widget/Toolbar$LayoutParams;)V

    .line 1710
    :goto_0
    return-object v0

    .line 1705
    :cond_0
    instance-of v0, p1, Landroid/support/v7/app/ActionBar$LayoutParams;

    if-eqz v0, :cond_1

    .line 1706
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    check-cast p1, Landroid/support/v7/app/ActionBar$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/support/v7/app/ActionBar$LayoutParams;)V

    goto :goto_0

    .line 1707
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 1708
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 1710
    :cond_2
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->t:Landroid/support/v7/internal/widget/ao;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/internal/widget/ao;->a(II)V

    .line 894
    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 660
    iput p2, p0, Landroid/support/v7/widget/Toolbar;->l:I

    .line 661
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 664
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/i;Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 371
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-nez v0, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->l()V

    .line 376
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->d()Landroid/support/v7/internal/view/menu/i;

    move-result-object v0

    .line 377
    if-eq v0, p1, :cond_0

    .line 381
    if-eqz v0, :cond_2

    .line 382
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->G:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->b(Landroid/support/v7/internal/view/menu/x;)V

    .line 383
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->H:Landroid/support/v7/widget/di;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->b(Landroid/support/v7/internal/view/menu/x;)V

    .line 386
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->H:Landroid/support/v7/widget/di;

    if-nez v0, :cond_3

    .line 387
    new-instance v0, Landroid/support/v7/widget/di;

    invoke-direct {v0, p0, v3}, Landroid/support/v7/widget/di;-><init>(Landroid/support/v7/widget/Toolbar;Landroid/support/v7/widget/df;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->H:Landroid/support/v7/widget/di;

    .line 390
    :cond_3
    invoke-virtual {p2, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->d(Z)V

    .line 391
    if-eqz p1, :cond_4

    .line 392
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->j:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/x;Landroid/content/Context;)V

    .line 393
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->H:Landroid/support/v7/widget/di;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->j:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/x;Landroid/content/Context;)V

    .line 400
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->k:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->setPopupTheme(I)V

    .line 401
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/ActionMenuView;->setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 402
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar;->G:Landroid/support/v7/widget/ActionMenuPresenter;

    goto :goto_0

    .line 395
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->j:Landroid/content/Context;

    invoke-virtual {p2, v0, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;)V

    .line 396
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->H:Landroid/support/v7/widget/di;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->j:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/di;->a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;)V

    .line 397
    invoke-virtual {p2, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->b(Z)V

    .line 398
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->H:Landroid/support/v7/widget/di;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/di;->b(Z)V

    goto :goto_1
.end method

.method public a(Landroid/support/v7/internal/view/menu/y;Landroid/support/v7/internal/view/menu/j;)V
    .locals 0

    .prologue
    .line 1769
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->I:Landroid/support/v7/internal/view/menu/y;

    .line 1770
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar;->J:Landroid/support/v7/internal/view/menu/j;

    .line 1771
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 333
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 671
    iput p2, p0, Landroid/support/v7/widget/Toolbar;->m:I

    .line 672
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 675
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 1721
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/support/v7/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->i()V

    .line 412
    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->H:Landroid/support/v7/widget/di;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->H:Landroid/support/v7/widget/di;

    iget-object v0, v0, Landroid/support/v7/widget/di;->b:Landroid/support/v7/internal/view/menu/m;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->i()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/util/AttributeSet;)Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getContentInsetEnd()I
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->t:Landroid/support/v7/internal/widget/ao;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ao;->d()I

    move-result v0

    return v0
.end method

.method public getContentInsetLeft()I
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->t:Landroid/support/v7/internal/widget/ao;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ao;->a()I

    move-result v0

    return v0
.end method

.method public getContentInsetRight()I
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->t:Landroid/support/v7/internal/widget/ao;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ao;->b()I

    move-result v0

    return v0
.end method

.method public getContentInsetStart()I
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->t:Landroid/support/v7/internal/widget/ao;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ao;->c()I

    move-result v0

    return v0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 818
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->k()V

    .line 819
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->k:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->w:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->v:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getWrapper()Landroid/support/v7/internal/widget/ah;
    .locals 2

    .prologue
    .line 1730
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->F:Landroid/support/v7/internal/widget/bh;

    if-nez v0, :cond_0

    .line 1731
    new-instance v0, Landroid/support/v7/internal/widget/bh;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/bh;-><init>(Landroid/support/v7/widget/Toolbar;Z)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->F:Landroid/support/v7/internal/widget/bh;

    .line 1733
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->F:Landroid/support/v7/internal/widget/bh;

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->H:Landroid/support/v7/widget/di;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 540
    :goto_0
    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/m;->collapseActionView()Z

    .line 543
    :cond_0
    return-void

    .line 538
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->H:Landroid/support/v7/widget/di;

    iget-object v0, v0, Landroid/support/v7/widget/di;->b:Landroid/support/v7/internal/view/menu/m;

    goto :goto_0
.end method

.method protected i()Landroid/support/v7/widget/Toolbar$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 1716
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1072
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1073
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->M:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1074
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1107
    invoke-static {p1}, Landroid/support/v4/view/ba;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1108
    if-ne v0, v4, :cond_0

    .line 1109
    iput-boolean v2, p0, Landroid/support/v7/widget/Toolbar;->A:Z

    .line 1112
    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/widget/Toolbar;->A:Z

    if-nez v1, :cond_1

    .line 1113
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1114
    if-ne v0, v4, :cond_1

    if-nez v1, :cond_1

    .line 1115
    iput-boolean v3, p0, Landroid/support/v7/widget/Toolbar;->A:Z

    .line 1119
    :cond_1
    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1120
    :cond_2
    iput-boolean v2, p0, Landroid/support/v7/widget/Toolbar;->A:Z

    .line 1123
    :cond_3
    return v3
.end method

.method protected onLayout(ZIIII)V
    .locals 23

    .prologue
    .line 1328
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ce;->h(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    const/4 v3, 0x1

    move v5, v3

    .line 1329
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getWidth()I

    move-result v12

    .line 1330
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v13

    .line 1331
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v6

    .line 1332
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v14

    .line 1333
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v15

    .line 1334
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v16

    .line 1336
    sub-int v3, v12, v14

    .line 1338
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->C:[I

    move-object/from16 v17, v0

    .line 1339
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v17, v7

    aput v8, v17, v4

    .line 1342
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getMinimumHeightCompat()I

    move-result v18

    .line 1344
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1345
    if-eqz v5, :cond_9

    .line 1346
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v4, v3, v1, v2}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v3

    move v4, v6

    .line 1354
    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1355
    if-eqz v5, :cond_a

    .line 1356
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v7, v3, v1, v2}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v3

    .line 1364
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1365
    if-eqz v5, :cond_b

    .line 1366
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v7, v4, v1, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v4

    .line 1374
    :cond_1
    :goto_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetLeft()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v17, v7

    .line 1375
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetRight()I

    move-result v9

    sub-int v10, v12, v14

    sub-int/2addr v10, v3

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v17, v7

    .line 1376
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetLeft()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1377
    sub-int v7, v12, v14

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetRight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1379
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1380
    if-eqz v5, :cond_c

    .line 1381
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v7, v3, v1, v2}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v3

    .line 1389
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 1390
    if-eqz v5, :cond_d

    .line 1391
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v7, v3, v1, v2}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v3

    move v7, v3

    move v8, v4

    .line 1399
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v19

    .line 1400
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v20

    .line 1401
    const/4 v4, 0x0

    .line 1402
    if-eqz v19, :cond_3

    .line 1403
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1404
    iget v9, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    iget v3, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v9

    add-int/2addr v4, v3

    .line 1406
    :cond_3
    if-eqz v20, :cond_20

    .line 1407
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1408
    iget v9, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    iget v3, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v9

    add-int/2addr v3, v4

    move v11, v3

    .line 1411
    :goto_6
    if-nez v19, :cond_4

    if-eqz v20, :cond_7

    .line 1413
    :cond_4
    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    move-object v9, v3

    .line 1414
    :goto_7
    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    move-object v4, v3

    .line 1415
    :goto_8
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1416
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1417
    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    if-gtz v9, :cond_6

    :cond_5
    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    if-lez v9, :cond_10

    :cond_6
    const/4 v9, 0x1

    .line 1420
    :goto_9
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/widget/Toolbar;->u:I

    and-int/lit8 v10, v10, 0x70

    sparse-switch v10, :sswitch_data_0

    .line 1426
    sub-int v10, v13, v15

    sub-int v10, v10, v16

    .line 1427
    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    .line 1428
    iget v0, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->r:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    if-ge v10, v0, :cond_11

    .line 1429
    iget v3, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/Toolbar;->r:I

    add-int/2addr v3, v4

    .line 1438
    :goto_a
    add-int v10, v15, v3

    .line 1445
    :goto_b
    if-eqz v5, :cond_13

    .line 1446
    if-eqz v9, :cond_12

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/Toolbar;->p:I

    :goto_c
    const/4 v4, 0x1

    aget v4, v17, v4

    sub-int/2addr v3, v4

    .line 1447
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int v4, v7, v4

    .line 1448
    const/4 v5, 0x1

    const/4 v7, 0x0

    neg-int v3, v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v17, v5

    .line 1452
    if-eqz v19, :cond_1e

    .line 1453
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1454
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v4, v5

    .line 1455
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v10

    .line 1456
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v11, v5, v10, v4, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 1457
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/widget/Toolbar;->q:I

    sub-int/2addr v5, v10

    .line 1458
    iget v3, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v10, v7, v3

    move v7, v5

    .line 1460
    :goto_d
    if-eqz v20, :cond_1d

    .line 1461
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1462
    iget v5, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v5, v10

    .line 1463
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    sub-int v10, v4, v10

    .line 1464
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v5

    .line 1465
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v13, v10, v5, v4, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 1466
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/Toolbar;->q:I

    sub-int v5, v4, v5

    .line 1467
    iget v3, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v11

    move v3, v5

    .line 1469
    :goto_e
    if-eqz v9, :cond_1c

    .line 1470
    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_f
    move v7, v3

    .line 1505
    :cond_7
    :goto_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->B:Ljava/util/ArrayList;

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/support/v7/widget/Toolbar;->a(Ljava/util/List;I)V

    .line 1506
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->B:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1507
    const/4 v3, 0x0

    move v5, v3

    move v4, v8

    :goto_11
    if-ge v5, v9, :cond_15

    .line 1508
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->B:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v4

    .line 1507
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_11

    .line 1328
    :cond_8
    const/4 v3, 0x0

    move v5, v3

    goto/16 :goto_0

    .line 1349
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v4, v6, v1, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v4

    goto/16 :goto_1

    .line 1359
    :cond_a
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v7, v4, v1, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v4

    goto/16 :goto_2

    .line 1369
    :cond_b
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v7, v3, v1, v2}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v3

    goto/16 :goto_3

    .line 1384
    :cond_c
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v7, v4, v1, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v4

    goto/16 :goto_4

    .line 1394
    :cond_d
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v7, v4, v1, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v4

    move v7, v3

    move v8, v4

    goto/16 :goto_5

    .line 1413
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    move-object v9, v3

    goto/16 :goto_7

    .line 1414
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    move-object v4, v3

    goto/16 :goto_8

    .line 1417
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_9

    .line 1422
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v4

    iget v3, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/Toolbar;->r:I

    add-int v10, v3, v4

    .line 1423
    goto/16 :goto_b

    .line 1431
    :cond_11
    sub-int v13, v13, v16

    sub-int v11, v13, v11

    sub-int/2addr v11, v10

    sub-int/2addr v11, v15

    .line 1433
    iget v3, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v7/widget/Toolbar;->s:I

    add-int/2addr v3, v13

    if-ge v11, v3, :cond_1f

    .line 1434
    const/4 v3, 0x0

    iget v4, v4, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v7/widget/Toolbar;->s:I

    add-int/2addr v4, v13

    sub-int/2addr v4, v11

    sub-int v4, v10, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto/16 :goto_a

    .line 1441
    :sswitch_1
    sub-int v3, v13, v16

    iget v4, v4, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/Toolbar;->s:I

    sub-int/2addr v3, v4

    sub-int v10, v3, v11

    goto/16 :goto_b

    .line 1446
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_c

    .line 1473
    :cond_13
    if-eqz v9, :cond_14

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/Toolbar;->p:I

    :goto_12
    const/4 v4, 0x0

    aget v4, v17, v4

    sub-int/2addr v3, v4

    .line 1474
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v8, v4

    .line 1475
    const/4 v4, 0x0

    const/4 v5, 0x0

    neg-int v3, v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v17, v4

    .line 1479
    if-eqz v19, :cond_1b

    .line 1480
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1481
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v8

    .line 1482
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v10

    .line 1483
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v11, v8, v10, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 1484
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/widget/Toolbar;->q:I

    add-int/2addr v4, v10

    .line 1485
    iget v3, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v5

    move v5, v4

    move v4, v3

    .line 1487
    :goto_13
    if-eqz v20, :cond_1a

    .line 1488
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1489
    iget v10, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v4, v10

    .line 1490
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v8

    .line 1491
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v4

    .line 1492
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v13, v8, v4, v10, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 1493
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/Toolbar;->q:I

    add-int/2addr v4, v10

    .line 1494
    iget v3, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v11

    move v3, v4

    .line 1496
    :goto_14
    if-eqz v9, :cond_7

    .line 1497
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto/16 :goto_10

    .line 1473
    :cond_14
    const/4 v3, 0x0

    goto :goto_12

    .line 1512
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->B:Ljava/util/ArrayList;

    const/4 v5, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Landroid/support/v7/widget/Toolbar;->a(Ljava/util/List;I)V

    .line 1513
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->B:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1514
    const/4 v3, 0x0

    move v5, v3

    :goto_15
    if-ge v5, v8, :cond_16

    .line 1515
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->B:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v3, v7, v1, v2}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v7

    .line 1514
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_15

    .line 1521
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->B:Ljava/util/ArrayList;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Landroid/support/v7/widget/Toolbar;->a(Ljava/util/List;I)V

    .line 1522
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->B:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Landroid/support/v7/widget/Toolbar;->a(Ljava/util/List;[I)I

    move-result v5

    .line 1523
    sub-int v3, v12, v6

    sub-int/2addr v3, v14

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v6

    .line 1524
    div-int/lit8 v6, v5, 0x2

    .line 1525
    sub-int/2addr v3, v6

    .line 1526
    add-int/2addr v5, v3

    .line 1527
    if-ge v3, v4, :cond_18

    move v3, v4

    .line 1533
    :cond_17
    :goto_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->B:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1534
    const/4 v4, 0x0

    move v5, v3

    :goto_17
    if-ge v4, v6, :cond_19

    .line 1535
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->B:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v3, v5, v1, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v5

    .line 1534
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_17

    .line 1529
    :cond_18
    if-le v5, v7, :cond_17

    .line 1530
    sub-int v4, v5, v7

    sub-int/2addr v3, v4

    goto :goto_16

    .line 1539
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->B:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1540
    return-void

    :cond_1a
    move v3, v8

    goto/16 :goto_14

    :cond_1b
    move v5, v8

    move v4, v10

    goto/16 :goto_13

    :cond_1c
    move v3, v4

    goto/16 :goto_f

    :cond_1d
    move v3, v4

    goto/16 :goto_e

    :cond_1e
    move v7, v4

    goto/16 :goto_d

    :cond_1f
    move v3, v10

    goto/16 :goto_a

    :cond_20
    move v11, v4

    goto/16 :goto_6

    :cond_21
    move v7, v3

    move v8, v4

    goto/16 :goto_5

    :cond_22
    move v4, v6

    goto/16 :goto_1

    .line 1420
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    .line 1192
    const/4 v3, 0x0

    .line 1193
    const/4 v11, 0x0

    .line 1194
    const/4 v9, 0x0

    .line 1196
    iget-object v10, p0, Landroid/support/v7/widget/Toolbar;->C:[I

    .line 1199
    invoke-static {p0}, Landroid/support/v7/internal/widget/bm;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1200
    const/4 v1, 0x1

    .line 1201
    const/4 v0, 0x0

    move v7, v0

    move v8, v1

    .line 1209
    :goto_0
    const/4 v0, 0x0

    .line 1210
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1211
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, p0, Landroid/support/v7/widget/Toolbar;->o:I

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIIII)V

    .line 1213
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1214
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1216
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-static {v1}, Landroid/support/v4/view/ce;->l(Landroid/view/View;)I

    move-result v1

    invoke-static {v9, v1}, Landroid/support/v7/internal/widget/bm;->a(II)I

    move-result v1

    move v9, v1

    move v11, v2

    .line 1220
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1221
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, p0, Landroid/support/v7/widget/Toolbar;->o:I

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIIII)V

    .line 1223
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1225
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1227
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    invoke-static {v1}, Landroid/support/v4/view/ce;->l(Landroid/view/View;)I

    move-result v1

    invoke-static {v9, v1}, Landroid/support/v7/internal/widget/bm;->a(II)I

    move-result v9

    .line 1231
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    .line 1232
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v3, v2

    .line 1233
    const/4 v2, 0x0

    sub-int v0, v1, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v8

    .line 1235
    const/4 v0, 0x0

    .line 1236
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1237
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    const/4 v5, 0x0

    iget v6, p0, Landroid/support/v7/widget/Toolbar;->o:I

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIIII)V

    .line 1239
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1240
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1242
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-static {v1}, Landroid/support/v4/view/ce;->l(Landroid/view/View;)I

    move-result v1

    invoke-static {v9, v1}, Landroid/support/v7/internal/widget/bm;->a(II)I

    move-result v9

    .line 1246
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v1

    .line 1247
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v3, v2

    .line 1248
    const/4 v2, 0x0

    sub-int v0, v1, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v7

    .line 1250
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1251
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v3, v0

    .line 1253
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1255
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ce;->l(Landroid/view/View;)I

    move-result v0

    invoke-static {v9, v0}, Landroid/support/v7/internal/widget/bm;->a(II)I

    move-result v9

    .line 1259
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1260
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v3, v0

    .line 1262
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1264
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/support/v4/view/ce;->l(Landroid/view/View;)I

    move-result v0

    invoke-static {v9, v0}, Landroid/support/v7/internal/widget/bm;->a(II)I

    move-result v9

    .line 1268
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v8

    .line 1269
    const/4 v0, 0x0

    move v7, v0

    move v12, v11

    move v11, v9

    :goto_1
    if-ge v7, v8, :cond_7

    .line 1270
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1271
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1272
    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->b:I

    if-nez v0, :cond_b

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v11

    move v1, v12

    .line 1269
    :goto_2
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v11, v0

    move v12, v1

    goto :goto_1

    .line 1203
    :cond_5
    const/4 v1, 0x0

    .line 1204
    const/4 v0, 0x1

    move v7, v0

    move v8, v1

    goto/16 :goto_0

    .line 1277
    :cond_6
    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v3, v0

    .line 1279
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1280
    invoke-static {v1}, Landroid/support/v4/view/ce;->l(Landroid/view/View;)I

    move-result v0

    invoke-static {v11, v0}, Landroid/support/v7/internal/widget/bm;->a(II)I

    move-result v0

    move v1, v2

    goto :goto_2

    .line 1284
    :cond_7
    const/4 v1, 0x0

    .line 1285
    const/4 v0, 0x0

    .line 1286
    iget v2, p0, Landroid/support/v7/widget/Toolbar;->r:I

    iget v4, p0, Landroid/support/v7/widget/Toolbar;->s:I

    add-int v9, v2, v4

    .line 1287
    iget v2, p0, Landroid/support/v7/widget/Toolbar;->p:I

    iget v4, p0, Landroid/support/v7/widget/Toolbar;->q:I

    add-int/2addr v2, v4

    .line 1288
    iget-object v4, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1289
    iget-object v5, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    add-int v7, v3, v2

    move-object v4, p0

    move v6, p1

    move v8, p2

    invoke-direct/range {v4 .. v10}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    .line 1292
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    .line 1293
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v4, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v4

    add-int/2addr v0, v4

    .line 1294
    iget-object v4, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/support/v4/view/ce;->l(Landroid/view/View;)I

    move-result v4

    invoke-static {v11, v4}, Landroid/support/v7/internal/widget/bm;->a(II)I

    move-result v11

    .line 1297
    :cond_8
    iget-object v4, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1298
    iget-object v5, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    add-int v7, v3, v2

    add-int/2addr v9, v0

    move-object v4, p0

    move v6, p1

    move v8, p2

    invoke-direct/range {v4 .. v10}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1302
    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iget-object v4, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    .line 1304
    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/support/v4/view/ce;->l(Landroid/view/View;)I

    move-result v2

    invoke-static {v11, v2}, Landroid/support/v7/internal/widget/bm;->a(II)I

    move-result v11

    .line 1308
    :cond_9
    add-int/2addr v1, v3

    .line 1309
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1313
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 1314
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 1316
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v2, v11

    invoke-static {v1, p1, v2}, Landroid/support/v4/view/ce;->a(III)I

    move-result v1

    .line 1319
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int/lit8 v2, v11, 0x10

    invoke-static {v0, p2, v2}, Landroid/support/v4/view/ce;->a(III)I

    move-result v0

    .line 1323
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->p()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v0, 0x0

    :cond_a
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/Toolbar;->setMeasuredDimension(II)V

    .line 1324
    return-void

    :cond_b
    move v0, v11

    move v1, v12

    goto/16 :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 1049
    check-cast p1, Landroid/support/v7/widget/Toolbar$SavedState;

    .line 1050
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1052
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->d()Landroid/support/v7/internal/view/menu/i;

    move-result-object v0

    .line 1053
    :goto_0
    iget v1, p1, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->H:Landroid/support/v7/widget/di;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1054
    iget v1, p1, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1055
    if-eqz v0, :cond_0

    .line 1056
    invoke-static {v0}, Landroid/support/v4/view/as;->b(Landroid/view/MenuItem;)Z

    .line 1060
    :cond_0
    iget-boolean v0, p1, Landroid/support/v7/widget/Toolbar$SavedState;->isOverflowOpen:Z

    if-eqz v0, :cond_1

    .line 1061
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->o()V

    .line 1063
    :cond_1
    return-void

    .line 1052
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 312
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 313
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 315
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->t:Landroid/support/v7/internal/widget/ao;

    if-ne p1, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ao;->a(Z)V

    .line 316
    return-void

    .line 315
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1037
    new-instance v0, Landroid/support/v7/widget/Toolbar$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1039
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->H:Landroid/support/v7/widget/di;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->H:Landroid/support/v7/widget/di;

    iget-object v1, v1, Landroid/support/v7/widget/di;->b:Landroid/support/v7/internal/view/menu/m;

    if-eqz v1, :cond_0

    .line 1040
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->H:Landroid/support/v7/widget/di;

    iget-object v1, v1, Landroid/support/v7/widget/di;->b:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/m;->getItemId()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    .line 1043
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->b()Z

    move-result v1

    iput-boolean v1, v0, Landroid/support/v7/widget/Toolbar$SavedState;->isOverflowOpen:Z

    .line 1044
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1083
    invoke-static {p1}, Landroid/support/v4/view/ba;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1084
    if-nez v0, :cond_0

    .line 1085
    iput-boolean v3, p0, Landroid/support/v7/widget/Toolbar;->z:Z

    .line 1088
    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/widget/Toolbar;->z:Z

    if-nez v1, :cond_1

    .line 1089
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1090
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 1091
    iput-boolean v2, p0, Landroid/support/v7/widget/Toolbar;->z:Z

    .line 1095
    :cond_1
    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1096
    :cond_2
    iput-boolean v3, p0, Landroid/support/v7/widget/Toolbar;->z:Z

    .line 1099
    :cond_3
    return v2
.end method

.method public setCollapsible(Z)V
    .locals 0

    .prologue
    .line 1760
    iput-boolean p1, p0, Landroid/support/v7/widget/Toolbar;->K:Z

    .line 1761
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 1762
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->N:Landroid/support/v7/internal/widget/bd;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/bd;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 329
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 444
    if-eqz p1, :cond_2

    .line 445
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->j()V

    .line 446
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 447
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)V

    .line 448
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->e(Landroid/view/View;)V

    .line 453
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 456
    :cond_1
    return-void

    .line 450
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setLogoDescription(I)V
    .locals 1

    .prologue
    .line 478
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 479
    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 490
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->j()V

    .line 493
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 496
    :cond_1
    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0

    .prologue
    .line 1776
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->L:I

    .line 1778
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 1779
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1

    .prologue
    .line 722
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 723
    return-void

    .line 722
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 734
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 735
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->m()V

    .line 737
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 738
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 740
    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->N:Landroid/support/v7/internal/widget/bd;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/bd;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 756
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 771
    if-eqz p1, :cond_2

    .line 772
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->m()V

    .line 773
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 774
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)V

    .line 775
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->e(Landroid/view/View;)V

    .line 780
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 781
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 783
    :cond_1
    return-void

    .line 777
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 805
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->m()V

    .line 806
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 807
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/support/v7/widget/dj;)V
    .locals 0

    .prologue
    .line 873
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->D:Landroid/support/v7/widget/dj;

    .line 874
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    .prologue
    .line 292
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->k:I

    if-eq v0, p1, :cond_0

    .line 293
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->k:I

    .line 294
    if-nez p1, :cond_1

    .line 295
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->j:Landroid/content/Context;

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->j:Landroid/content/Context;

    goto :goto_0
.end method

.method public setSubtitle(I)V
    .locals 1

    .prologue
    .line 618
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 619
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 629
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 630
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 631
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 632
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    .line 633
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 634
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 635
    iget v1, p0, Landroid/support/v7/widget/Toolbar;->m:I

    if-eqz v1, :cond_0

    .line 636
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->m:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 638
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->y:I

    if-eqz v0, :cond_1

    .line 639
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->y:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 642
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 643
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)V

    .line 644
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->e(Landroid/view/View;)V

    .line 649
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 650
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    :cond_3
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->w:Ljava/lang/CharSequence;

    .line 653
    return-void

    .line 646
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 647
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setSubtitleTextColor(I)V
    .locals 1

    .prologue
    .line 695
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->y:I

    .line 696
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 699
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 564
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 575
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 576
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 577
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 578
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 579
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 580
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 581
    iget v1, p0, Landroid/support/v7/widget/Toolbar;->l:I

    if-eqz v1, :cond_0

    .line 582
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->l:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 584
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->x:I

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->x:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 588
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 589
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)V

    .line 590
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->e(Landroid/view/View;)V

    .line 595
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 596
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    :cond_3
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->v:Ljava/lang/CharSequence;

    .line 599
    return-void

    .line 592
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 593
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setTitleTextColor(I)V
    .locals 1

    .prologue
    .line 683
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->x:I

    .line 684
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 687
    :cond_0
    return-void
.end method
