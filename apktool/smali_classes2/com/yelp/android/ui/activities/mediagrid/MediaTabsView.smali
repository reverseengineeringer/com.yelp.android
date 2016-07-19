.class public Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;
.super Landroid/widget/HorizontalScrollView;
.source "MediaTabsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$b;,
        Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$a;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/view/View;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->setHorizontalScrollBarEnabled(Z)V

    .line 46
    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    new-array v2, v7, [I

    const v3, 0x7f01017b

    aput v3, v2, v6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 133
    const v2, 0x7f0e0113

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 134
    const v2, 0x7f0e0092

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 138
    new-instance v2, Landroid/content/res/ColorStateList;

    new-array v3, v9, [[I

    new-array v4, v7, [I

    const v5, 0x10100a1

    aput v5, v4, v6

    aput-object v4, v3, v6

    new-array v4, v7, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    aput-object v4, v3, v7

    sget-object v4, Landroid/util/StateSet;->WILD_CARD:[I

    aput-object v4, v3, v8

    new-array v4, v9, [I

    aput v1, v4, v6

    aput v1, v4, v7

    aput v0, v4, v8

    invoke-direct {v2, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private a(Lcom/yelp/android/serializable/MediaCategory;)Landroid/view/View;
    .locals 5

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030207

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->b:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0703b4

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MediaCategory;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MediaCategory;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 86
    const v0, 0x7f0f05d8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->a(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 93
    new-instance v1, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$b;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$b;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 94
    new-instance v1, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$2;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$2;-><init>(Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;Lcom/yelp/android/serializable/MediaCategory;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 119
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->smoothScrollTo(II)V

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->c:Landroid/view/View;

    return-object p1
.end method

.method private b()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->c:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->a(Landroid/view/View;)V

    .line 115
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;)Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$a;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;Lcom/yelp/android/serializable/MediaCategory;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/MediaCategory;",
            ">;",
            "Lcom/yelp/android/serializable/MediaCategory;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 49
    const v0, 0x7f0f032b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->b:Landroid/widget/LinearLayout;

    .line 50
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/MediaCategory;

    .line 51
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->a(Lcom/yelp/android/serializable/MediaCategory;)Landroid/view/View;

    move-result-object v2

    .line 52
    invoke-virtual {v0, p2}, Lcom/yelp/android/serializable/MediaCategory;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iput-object v2, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->c:Landroid/view/View;

    .line 54
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$1;-><init>(Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 66
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->d:Z

    .line 67
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->d:Z

    return v0
.end method

.method public setMediaTabClickListener(Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$a;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$a;

    .line 75
    return-void
.end method
