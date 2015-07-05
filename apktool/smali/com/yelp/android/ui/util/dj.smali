.class public Lcom/yelp/android/ui/util/dj;
.super Ljava/lang/Object;
.source "YelpViewMaker.java"


# direct methods
.method private static a(Landroid/view/View;Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 41
    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 42
    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    :try_start_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 45
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 57
    :cond_0
    :goto_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 58
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 61
    invoke-static {}, Landroid/graphics/PorterDuff$Mode;->values()[Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object v1, v1, v2

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 65
    :cond_1
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const-string/jumbo v1, "YelpViewMaker"

    const-string/jumbo v2, "We got an access violation looking up the drawable Class"

    invoke-static {v1, v2, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 51
    :catch_1
    move-exception v0

    .line 52
    const-string/jumbo v1, "YelpViewMaker"

    const-string/jumbo v2, "Could not instaniate Drawable Class"

    invoke-static {v1, v2, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 53
    :catch_2
    move-exception v0

    .line 54
    const-string/jumbo v1, "YelpViewMaker"

    const-string/jumbo v2, "Could not find Drawable Class"

    invoke-static {v1, v2, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/SparseIntArray;)V
    .locals 3

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/bf/m;->YelpView:[I

    invoke-virtual {v0, p2, v1, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 32
    const/4 v1, 0x4

    .line 33
    invoke-virtual {p4, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/util/dj;->a(Landroid/view/View;Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 36
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    return-void
.end method
