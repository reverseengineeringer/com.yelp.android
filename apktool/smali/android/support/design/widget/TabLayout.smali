.class public Landroid/support/design/widget/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/TabLayout$f;,
        Landroid/support/design/widget/TabLayout$d;,
        Landroid/support/design/widget/TabLayout$b;,
        Landroid/support/design/widget/TabLayout$e;,
        Landroid/support/design/widget/TabLayout$c;,
        Landroid/support/design/widget/TabLayout$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/TabLayout$c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/support/design/widget/TabLayout$c;

.field private final c:Landroid/support/design/widget/TabLayout$b;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/content/res/ColorStateList;

.field private final j:I

.field private final k:I

.field private l:I

.field private final m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Landroid/support/design/widget/TabLayout$a;

.field private r:Landroid/view/View$OnClickListener;

.field private s:Landroid/support/design/widget/p;

.field private t:Landroid/support/design/widget/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 220
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 223
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    .line 200
    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/design/widget/TabLayout;->l:I

    .line 226
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 228
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout;->setFillViewport(Z)V

    .line 231
    new-instance v0, Landroid/support/design/widget/TabLayout$b;

    invoke-direct {v0, p0, p1}, Landroid/support/design/widget/TabLayout$b;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    .line 232
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/design/widget/TabLayout;->addView(Landroid/view/View;II)V

    .line 234
    sget-object v0, Lcom/yelp/android/a/a$i;->TabLayout:[I

    sget v1, Lcom/yelp/android/a/a$h;->Widget_Design_TabLayout:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 237
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    sget v2, Lcom/yelp/android/a/a$i;->TabLayout_tabIndicatorHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$b;->b(I)V

    .line 239
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    sget v2, Lcom/yelp/android/a/a$i;->TabLayout_tabIndicatorColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$b;->a(I)V

    .line 241
    sget v1, Lcom/yelp/android/a/a$i;->TabLayout_tabTextAppearance:I

    sget v2, Lcom/yelp/android/a/a$h;->TextAppearance_Design_Tab:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->h:I

    .line 244
    sget v1, Lcom/yelp/android/a/a$i;->TabLayout_tabPadding:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->g:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->f:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->e:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->d:I

    .line 246
    sget v1, Lcom/yelp/android/a/a$i;->TabLayout_tabPaddingStart:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->d:I

    .line 248
    sget v1, Lcom/yelp/android/a/a$i;->TabLayout_tabPaddingTop:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->e:I

    .line 250
    sget v1, Lcom/yelp/android/a/a$i;->TabLayout_tabPaddingEnd:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->f:I

    .line 252
    sget v1, Lcom/yelp/android/a/a$i;->TabLayout_tabPaddingBottom:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->g:I

    .line 256
    iget v1, p0, Landroid/support/design/widget/TabLayout;->h:I

    invoke-direct {p0, v1}, Landroid/support/design/widget/TabLayout;->g(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->i:Landroid/content/res/ColorStateList;

    .line 258
    sget v1, Lcom/yelp/android/a/a$i;->TabLayout_tabTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    sget v1, Lcom/yelp/android/a/a$i;->TabLayout_tabTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->i:Landroid/content/res/ColorStateList;

    .line 263
    :cond_0
    sget v1, Lcom/yelp/android/a/a$i;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    sget v1, Lcom/yelp/android/a/a$i;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 268
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->i:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2, v1}, Landroid/support/design/widget/TabLayout;->b(II)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->i:Landroid/content/res/ColorStateList;

    .line 271
    :cond_1
    sget v1, Lcom/yelp/android/a/a$i;->TabLayout_tabMinWidth:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->k:I

    .line 272
    sget v1, Lcom/yelp/android/a/a$i;->TabLayout_tabMaxWidth:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->m:I

    .line 273
    sget v1, Lcom/yelp/android/a/a$i;->TabLayout_tabBackground:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->j:I

    .line 274
    sget v1, Lcom/yelp/android/a/a$i;->TabLayout_tabContentStart:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->n:I

    .line 275
    sget v1, Lcom/yelp/android/a/a$i;->TabLayout_tabMode:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->p:I

    .line 276
    sget v1, Lcom/yelp/android/a/a$i;->TabLayout_tabGravity:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->o:I

    .line 277
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 280
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->e()V

    .line 281
    return-void
.end method

.method private a(IF)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 843
    iget v1, p0, Landroid/support/design/widget/TabLayout;->p:I

    if-nez v1, :cond_1

    .line 844
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v1, p1}, Landroid/support/design/widget/TabLayout$b;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 845
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$b;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$b;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 848
    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 849
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 851
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v0, v2

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 856
    :cond_1
    return v0

    .line 845
    :cond_2
    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_0

    :cond_3
    move v1, v0

    .line 848
    goto :goto_1
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->j:I

    return v0
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout;Landroid/support/design/widget/p;)Landroid/support/design/widget/p;
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->t:Landroid/support/design/widget/p;

    return-object p1
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout;I)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->c(I)V

    return-void
.end method

.method private a(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2

    .prologue
    .line 692
    iget v0, p0, Landroid/support/design/widget/TabLayout;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout;->o:I

    if-nez v0, :cond_0

    .line 693
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 694
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 699
    :goto_0
    return-void

    .line 696
    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 697
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->d:I

    return v0
.end method

.method static synthetic b(Landroid/support/design/widget/TabLayout;I)I
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->d(I)I

    move-result v0

    return v0
.end method

.method private static b(II)Landroid/content/res/ColorStateList;
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 1537
    new-array v0, v1, [[I

    .line 1538
    new-array v1, v1, [I

    .line 1539
    const/4 v2, 0x0

    .line 1541
    sget-object v3, Landroid/support/design/widget/TabLayout;->SELECTED_STATE_SET:[I

    aput-object v3, v0, v2

    .line 1542
    aput p1, v1, v2

    .line 1543
    const/4 v2, 0x1

    .line 1546
    sget-object v3, Landroid/support/design/widget/TabLayout;->EMPTY_STATE_SET:[I

    aput-object v3, v0, v2

    .line 1547
    aput p0, v1, v2

    .line 1550
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private b(Landroid/support/design/widget/TabLayout$c;I)V
    .locals 3

    .prologue
    .line 652
    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout$c;->a(I)V

    .line 653
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 655
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 656
    add-int/lit8 v0, p2, 0x1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 657
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$c;->a(I)V

    .line 656
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 659
    :cond_0
    return-void
.end method

.method private b(Landroid/support/design/widget/TabLayout$c;IZ)V
    .locals 3

    .prologue
    .line 677
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->d(Landroid/support/design/widget/TabLayout$c;)Landroid/support/design/widget/TabLayout$e;

    move-result-object v0

    .line 678
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->d()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, p2, v2}, Landroid/support/design/widget/TabLayout$b;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 679
    if-eqz p3, :cond_0

    .line 680
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$e;->setSelected(Z)V

    .line 682
    :cond_0
    return-void
.end method

.method static synthetic c(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->e:I

    return v0
.end method

.method static synthetic c(Landroid/support/design/widget/TabLayout;I)I
    .locals 0

    .prologue
    .line 96
    iput p1, p0, Landroid/support/design/widget/TabLayout;->o:I

    return p1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 629
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$b;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 630
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->c(I)V

    .line 629
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 632
    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$e;

    .line 663
    if-eqz v0, :cond_0

    .line 664
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$e;->a()V

    .line 666
    :cond_0
    return-void
.end method

.method private c(Landroid/support/design/widget/TabLayout$c;Z)V
    .locals 3

    .prologue
    .line 669
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->d(Landroid/support/design/widget/TabLayout$c;)Landroid/support/design/widget/TabLayout$e;

    move-result-object v0

    .line 670
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->d()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/design/widget/TabLayout$b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 671
    if-eqz p2, :cond_0

    .line 672
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$e;->setSelected(Z)V

    .line 674
    :cond_0
    return-void
.end method

.method private d(I)I
    .locals 2

    .prologue
    .line 702
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method static synthetic d(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->f:I

    return v0
.end method

.method private d(Landroid/support/design/widget/TabLayout$c;)Landroid/support/design/widget/TabLayout$e;
    .locals 2

    .prologue
    .line 635
    new-instance v0, Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/support/design/widget/TabLayout$e;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;Landroid/support/design/widget/TabLayout$c;)V

    .line 636
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$e;->setFocusable(Z)V

    .line 638
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->r:Landroid/view/View$OnClickListener;

    if-nez v1, :cond_0

    .line 639
    new-instance v1, Landroid/support/design/widget/TabLayout$1;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TabLayout$1;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->r:Landroid/view/View$OnClickListener;

    .line 647
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$e;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    return-object v0
.end method

.method private d()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 685
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 687
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 688
    return-object v0
.end method

.method static synthetic e(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->g:I

    return v0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 860
    .line 861
    iget v0, p0, Landroid/support/design/widget/TabLayout;->p:I

    if-nez v0, :cond_0

    .line 863
    iget v0, p0, Landroid/support/design/widget/TabLayout;->n:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->d:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 865
    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-static {v2, v0, v1, v1, v1}, Landroid/support/v4/view/ai;->b(Landroid/view/View;IIII)V

    .line 867
    iget v0, p0, Landroid/support/design/widget/TabLayout;->p:I

    packed-switch v0, :pswitch_data_0

    .line 876
    :goto_1
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->f()V

    .line 877
    return-void

    .line 869
    :pswitch_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$b;->setGravity(I)V

    goto :goto_1

    .line 872
    :pswitch_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$b;->setGravity(I)V

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    .line 867
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private e(I)V
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$b;->removeViewAt(I)V

    .line 758
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->requestLayout()V

    .line 759
    return-void
.end method

.method static synthetic f(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->k:I

    return v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 880
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$b;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 881
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$b;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 882
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 883
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 880
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 885
    :cond_0
    return-void
.end method

.method private f(I)V
    .locals 5

    .prologue
    const/16 v4, 0x12c

    const/4 v1, 0x0

    .line 762
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 796
    :goto_0
    return-void

    .line 766
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/support/v4/view/ai;->D(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 770
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/support/design/widget/TabLayout;->a(IFZ)V

    goto :goto_0

    .line 774
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getScrollX()I

    move-result v0

    .line 775
    invoke-direct {p0, p1, v1}, Landroid/support/design/widget/TabLayout;->a(IF)I

    move-result v1

    .line 777
    if-eq v0, v1, :cond_4

    .line 778
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->s:Landroid/support/design/widget/p;

    if-nez v2, :cond_3

    .line 779
    invoke-static {}, Landroid/support/design/widget/v;->a()Landroid/support/design/widget/p;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->s:Landroid/support/design/widget/p;

    .line 780
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->s:Landroid/support/design/widget/p;

    sget-object v3, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/p;->a(Landroid/view/animation/Interpolator;)V

    .line 781
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->s:Landroid/support/design/widget/p;

    invoke-virtual {v2, v4}, Landroid/support/design/widget/p;->a(I)V

    .line 782
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->s:Landroid/support/design/widget/p;

    new-instance v3, Landroid/support/design/widget/TabLayout$2;

    invoke-direct {v3, p0}, Landroid/support/design/widget/TabLayout$2;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/p;->a(Landroid/support/design/widget/p$c;)V

    .line 790
    :cond_3
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->s:Landroid/support/design/widget/p;

    invoke-virtual {v2, v0, v1}, Landroid/support/design/widget/p;->a(II)V

    .line 791
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->s:Landroid/support/design/widget/p;

    invoke-virtual {v0}, Landroid/support/design/widget/p;->a()V

    .line 795
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v0, p1, v4}, Landroid/support/design/widget/TabLayout$b;->a(II)V

    goto :goto_0
.end method

.method static synthetic g(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->l:I

    return v0
.end method

.method private g(I)Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 1554
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/a/a$i;->TextAppearance:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1557
    :try_start_0
    sget v0, Lcom/yelp/android/a/a$i;->TextAppearance_android_textColor:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1559
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private getScrollPosition()F
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$b;->b()F

    move-result v0

    return v0
.end method

.method static synthetic h(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->h:I

    return v0
.end method

.method static synthetic i(Landroid/support/design/widget/TabLayout;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->i:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic j(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->p:I

    return v0
.end method

.method static synthetic k(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->o:I

    return v0
.end method

.method static synthetic l(Landroid/support/design/widget/TabLayout;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->f()V

    return-void
.end method

.method private setSelectedTabView(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 799
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$b;->getChildCount()I

    move-result v3

    .line 800
    if-ge p1, v3, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    move v2, v1

    .line 801
    :goto_0
    if-ge v2, v3, :cond_1

    .line 802
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout$b;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 803
    if-ne v2, p1, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 801
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 803
    goto :goto_1

    .line 806
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Landroid/support/design/widget/TabLayout$c;
    .locals 1

    .prologue
    .line 410
    new-instance v0, Landroid/support/design/widget/TabLayout$c;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TabLayout$c;-><init>(Landroid/support/design/widget/TabLayout;)V

    return-object v0
.end method

.method public a(I)Landroid/support/design/widget/TabLayout$c;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$c;

    return-object v0
.end method

.method public a(IFZ)V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->t:Landroid/support/design/widget/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->t:Landroid/support/design/widget/p;

    invoke-virtual {v0}, Landroid/support/design/widget/p;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$b;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 320
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v0, p1, p2}, Landroid/support/design/widget/TabLayout$b;->a(IF)V

    .line 321
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->a(IF)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/design/widget/TabLayout;->scrollTo(II)V

    .line 324
    if-eqz p3, :cond_0

    .line 325
    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabView(I)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 568
    invoke-static {p1, p2}, Landroid/support/design/widget/TabLayout;->b(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    .line 569
    return-void
.end method

.method public a(Landroid/support/design/widget/TabLayout$c;)V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$c;Z)V

    .line 341
    return-void
.end method

.method public a(Landroid/support/design/widget/TabLayout$c;I)V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$c;IZ)V

    .line 352
    return-void
.end method

.method public a(Landroid/support/design/widget/TabLayout$c;IZ)V
    .locals 2

    .prologue
    .line 380
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$c;->a(Landroid/support/design/widget/TabLayout$c;)Landroid/support/design/widget/TabLayout;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 381
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tab belongs to a different TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout$c;IZ)V

    .line 385
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout$c;I)V

    .line 386
    if-eqz p3, :cond_1

    .line 387
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$c;->e()V

    .line 389
    :cond_1
    return-void
.end method

.method public a(Landroid/support/design/widget/TabLayout$c;Z)V
    .locals 2

    .prologue
    .line 361
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$c;->a(Landroid/support/design/widget/TabLayout$c;)Landroid/support/design/widget/TabLayout;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 362
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tab belongs to a different TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->c(Landroid/support/design/widget/TabLayout$c;Z)V

    .line 366
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout$c;I)V

    .line 367
    if-eqz p2, :cond_1

    .line 368
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$c;->e()V

    .line 370
    :cond_1
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 483
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$b;->removeAllViews()V

    .line 485
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$c;

    .line 487
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout$c;->a(I)V

    .line 488
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 491
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/TabLayout$c;

    .line 492
    return-void
.end method

.method public b(I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 460
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/TabLayout$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$c;->c()I

    move-result v0

    move v1, v0

    .line 461
    :goto_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->e(I)V

    .line 463
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$c;

    .line 464
    if-eqz v0, :cond_0

    .line 465
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout$c;->a(I)V

    .line 468
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, p1

    .line 469
    :goto_1
    if-ge v3, v4, :cond_2

    .line 470
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout$c;->a(I)V

    .line 469
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    move v1, v2

    .line 460
    goto :goto_0

    .line 473
    :cond_2
    if-ne v1, p1, :cond_3

    .line 474
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->c(Landroid/support/design/widget/TabLayout$c;)V

    .line 476
    :cond_3
    return-void

    .line 474
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$c;

    goto :goto_2
.end method

.method public b(Landroid/support/design/widget/TabLayout$c;)V
    .locals 2

    .prologue
    .line 446
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$c;->a(Landroid/support/design/widget/TabLayout$c;)Landroid/support/design/widget/TabLayout;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 447
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tab does not belong to this TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_0
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$c;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->b(I)V

    .line 451
    return-void
.end method

.method b(Landroid/support/design/widget/TabLayout$c;Z)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 813
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/TabLayout$c;

    if-ne v0, p1, :cond_2

    .line 814
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/TabLayout$c;

    if-eqz v0, :cond_1

    .line 815
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$a;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$a;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/TabLayout$c;

    invoke-interface {v0, v1}, Landroid/support/design/widget/TabLayout$a;->c(Landroid/support/design/widget/TabLayout$c;)V

    .line 818
    :cond_0
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$c;->c()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->f(I)V

    .line 840
    :cond_1
    :goto_0
    return-void

    .line 821
    :cond_2
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$c;->c()I

    move-result v0

    .line 822
    :goto_1
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabView(I)V

    .line 823
    if-eqz p2, :cond_4

    .line 824
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/TabLayout$c;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$c;->c()I

    move-result v2

    if-ne v2, v1, :cond_7

    :cond_3
    if-eq v0, v1, :cond_7

    .line 827
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/design/widget/TabLayout;->a(IFZ)V

    .line 832
    :cond_4
    :goto_2
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/TabLayout$c;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$a;

    if-eqz v0, :cond_5

    .line 833
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$a;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/TabLayout$c;

    invoke-interface {v0, v1}, Landroid/support/design/widget/TabLayout$a;->b(Landroid/support/design/widget/TabLayout$c;)V

    .line 835
    :cond_5
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/TabLayout$c;

    .line 836
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/TabLayout$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$a;

    if-eqz v0, :cond_1

    .line 837
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$a;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/TabLayout$c;

    invoke-interface {v0, v1}, Landroid/support/design/widget/TabLayout$a;->a(Landroid/support/design/widget/TabLayout$c;)V

    goto :goto_0

    :cond_6
    move v0, v1

    .line 821
    goto :goto_1

    .line 829
    :cond_7
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->f(I)V

    goto :goto_2
.end method

.method c(Landroid/support/design/widget/TabLayout$c;)V
    .locals 1

    .prologue
    .line 809
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout$c;Z)V

    .line 810
    return-void
.end method

.method public getSelectedTabPosition()I
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/TabLayout$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$c;->c()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabGravity()I
    .locals 1

    .prologue
    .line 543
    iget v0, p0, Landroid/support/design/widget/TabLayout;->o:I

    return v0
.end method

.method public getTabMode()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Landroid/support/design/widget/TabLayout;->p:I

    return v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->i:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    .line 709
    const/16 v0, 0x30

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->d(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 710
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 722
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 724
    iget v0, p0, Landroid/support/design/widget/TabLayout;->p:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getChildCount()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 727
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 728
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v1

    .line 730
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 733
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v2, v3}, Landroid/support/design/widget/TabLayout;->getChildMeasureSpec(III)I

    move-result v2

    .line 735
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 736
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 742
    :cond_0
    iget v0, p0, Landroid/support/design/widget/TabLayout;->m:I

    .line 743
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v1

    const/16 v2, 0x38

    invoke-direct {p0, v2}, Landroid/support/design/widget/TabLayout;->d(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 744
    if-eqz v0, :cond_1

    if-le v0, v1, :cond_2

    :cond_1
    move v0, v1

    .line 749
    :cond_2
    iget v1, p0, Landroid/support/design/widget/TabLayout;->l:I

    if-eq v1, v0, :cond_3

    .line 751
    iput v0, p0, Landroid/support/design/widget/TabLayout;->l:I

    .line 752
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 754
    :cond_3
    return-void

    .line 712
    :sswitch_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 717
    :sswitch_1
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 710
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method public setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$a;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$a;

    .line 399
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$b;->a(I)V

    .line 290
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$b;->b(I)V

    .line 299
    return-void
.end method

.method public setTabGravity(I)V
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Landroid/support/design/widget/TabLayout;->o:I

    if-eq v0, p1, :cond_0

    .line 531
    iput p1, p0, Landroid/support/design/widget/TabLayout;->o:I

    .line 532
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->e()V

    .line 534
    :cond_0
    return-void
.end method

.method public setTabMode(I)V
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Landroid/support/design/widget/TabLayout;->p:I

    if-eq p1, v0, :cond_0

    .line 509
    iput p1, p0, Landroid/support/design/widget/TabLayout;->p:I

    .line 510
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->e()V

    .line 512
    :cond_0
    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->i:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 551
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->i:Landroid/content/res/ColorStateList;

    .line 552
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->c()V

    .line 554
    :cond_0
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroid/support/v4/view/ac;)V
    .locals 4

    .prologue
    .line 622
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->b()V

    .line 623
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/support/v4/view/ac;->b()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 624
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->a()Landroid/support/design/widget/TabLayout$c;

    move-result-object v2

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ac;->b(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$c;->a(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$c;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$c;)V

    .line 623
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 626
    :cond_0
    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 589
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/ac;

    move-result-object v0

    .line 590
    if-nez v0, :cond_0

    .line 591
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ViewPager does not have a PagerAdapter set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setTabsFromPagerAdapter(Landroid/support/v4/view/ac;)V

    .line 598
    new-instance v1, Landroid/support/design/widget/TabLayout$d;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TabLayout$d;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager$e;)V

    .line 601
    new-instance v1, Landroid/support/design/widget/TabLayout$f;

    invoke-direct {v1, p1}, Landroid/support/design/widget/TabLayout$f;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$a;)V

    .line 604
    invoke-virtual {v0}, Landroid/support/v4/view/ac;->b()I

    move-result v0

    if-lez v0, :cond_1

    .line 605
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 606
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 607
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->a(I)Landroid/support/design/widget/TabLayout$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->c(Landroid/support/design/widget/TabLayout$c;)V

    .line 610
    :cond_1
    return-void
.end method
