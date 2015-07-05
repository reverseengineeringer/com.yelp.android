.class public Lcom/yelp/android/ui/widgets/QuantityDropDownView;
.super Landroid/widget/TextView;
.source "QuantityDropDownView.java"


# instance fields
.field protected a:Landroid/widget/PopupWindow;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/yelp/android/ui/widgets/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/yelp/android/bf/c;->quantityDropDownViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    sget-object v0, Lcom/yelp/android/bf/m;->QuantityDropDownView:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 71
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->e:I

    .line 72
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->f:I

    .line 73
    const/4 v1, 0x5

    const v2, 0x1090009

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->h:I

    .line 75
    const/4 v1, 0x6

    const v2, 0x1010076

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->g:I

    .line 77
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->c:I

    .line 78
    const v1, 0x3fffffff    # 1.9999999f

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->d:I

    .line 79
    iget v1, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->c:I

    iput v1, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->b:I

    .line 80
    iget v1, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    iget v0, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->c:I

    iget v1, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->d:I

    if-le v0, v1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "StartRange[%d] is greater than EndRange[%d]"

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->a()V

    .line 90
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/widgets/QuantityDropDownView;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->b()Landroid/widget/PopupWindow;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/yelp/android/ui/widgets/r;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/widgets/r;-><init>(Lcom/yelp/android/ui/widgets/QuantityDropDownView;)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-void
.end method

.method private b()Landroid/widget/PopupWindow;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->getRootView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->f:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 136
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->getRootView()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->e:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 138
    new-instance v3, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->g:I

    invoke-direct {v3, v4, v8, v5}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->getWidth()I

    move-result v5

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    new-instance v4, Lcom/yelp/android/ui/widgets/t;

    iget v5, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->h:I

    iget v6, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->d:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/yelp/android/ui/widgets/t;-><init>(ILandroid/util/Pair;)V

    .line 142
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 144
    new-instance v4, Lcom/yelp/android/ui/widgets/u;

    invoke-direct {v4, p0}, Lcom/yelp/android/ui/widgets/u;-><init>(Lcom/yelp/android/ui/widgets/QuantityDropDownView;)V

    .line 145
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 146
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 147
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView;->measure(II)V

    .line 148
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->g:I

    invoke-direct {v4, v5, v8, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 149
    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 150
    invoke-virtual {v4, v0, v0}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 151
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->getWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, v2, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 152
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual {v4, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 153
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 156
    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 159
    :goto_0
    const/4 v1, 0x2

    invoke-virtual {v3, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 160
    return-object v4

    .line 157
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getQuantity()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    if-eqz p1, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->a()V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 108
    iput-object v1, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->a:Landroid/widget/PopupWindow;

    goto :goto_0
.end method

.method public setEndRange(I)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->d:I

    .line 98
    return-void
.end method

.method public setQuantity(I)V
    .locals 2

    .prologue
    .line 58
    iget v0, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->b:I

    .line 60
    iput p1, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->b:I

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->i:Lcom/yelp/android/ui/widgets/s;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->i:Lcom/yelp/android/ui/widgets/s;

    invoke-interface {v1, v0, p0}, Lcom/yelp/android/ui/widgets/s;->a(ILcom/yelp/android/ui/widgets/QuantityDropDownView;)V

    .line 65
    :cond_0
    return-void
.end method

.method public setQuantityChangeListener(Lcom/yelp/android/ui/widgets/s;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->i:Lcom/yelp/android/ui/widgets/s;

    .line 132
    return-void
.end method

.method public setStartRange(I)V
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->c:I

    .line 94
    return-void
.end method
