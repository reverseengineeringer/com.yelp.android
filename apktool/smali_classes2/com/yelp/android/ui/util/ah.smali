.class public Lcom/yelp/android/ui/util/ah;
.super Ljava/lang/Object;
.source "SearchActionButtonUtil.java"


# direct methods
.method public static a([I)I
    .locals 3

    .prologue
    .line 54
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 55
    :cond_0
    const/4 v0, -0x1

    .line 57
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0
.end method

.method private static a(IIILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 62
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 63
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 64
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput p1, v4, v6

    const/4 v5, 0x1

    aput p2, v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 68
    invoke-virtual {v2, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 69
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 70
    invoke-virtual {v2, v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 71
    return-object v2
.end method

.method public static a(Landroid/view/ViewGroup;Lcom/yelp/android/serializable/SearchAction;Landroid/view/LayoutInflater;Landroid/content/Context;)Landroid/widget/Button;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 28
    const v0, 0x7f030080

    invoke-virtual {p2, v0, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 30
    invoke-interface {p1}, Lcom/yelp/android/serializable/SearchAction;->i()[I

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/util/ah;->a([I)I

    move-result v1

    .line 31
    invoke-interface {p1}, Lcom/yelp/android/serializable/SearchAction;->h()[I

    move-result-object v2

    invoke-static {v2}, Lcom/yelp/android/ui/util/ah;->a([I)I

    move-result v2

    .line 32
    invoke-interface {p1}, Lcom/yelp/android/serializable/SearchAction;->g()[I

    move-result-object v3

    invoke-static {v3}, Lcom/yelp/android/ui/util/ah;->a([I)I

    move-result v3

    .line 33
    invoke-interface {p1}, Lcom/yelp/android/serializable/SearchAction;->f()[I

    move-result-object v4

    invoke-static {v4}, Lcom/yelp/android/ui/util/ah;->a([I)I

    move-result v4

    .line 34
    invoke-interface {p1}, Lcom/yelp/android/serializable/SearchAction;->e()[I

    move-result-object v5

    invoke-static {v5}, Lcom/yelp/android/ui/util/ah;->a([I)I

    move-result v5

    .line 36
    invoke-static {v5, v1, v2, p3}, Lcom/yelp/android/ui/util/ah;->a(IIILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 38
    invoke-static {v5, v3, v4, p3}, Lcom/yelp/android/ui/util/ah;->a(IIILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    .line 41
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 42
    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 43
    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v3, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 45
    invoke-interface {p1}, Lcom/yelp/android/serializable/SearchAction;->j()[I

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/util/ah;->a([I)I

    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 47
    invoke-interface {p1}, Lcom/yelp/android/serializable/SearchAction;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 49
    return-object v0
.end method
