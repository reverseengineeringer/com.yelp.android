.class public Lcom/yelp/android/ui/panels/businesssearch/g;
.super Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;
.source "BusinessSearchResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/yelp/android/ui/panels/businesssearch/i;",
        ">",
        "Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/g;->c:Landroid/view/LayoutInflater;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/g;->c:Landroid/view/LayoutInflater;

    .line 47
    return-void
.end method

.method private a([I)I
    .locals 3

    .prologue
    .line 131
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 132
    :cond_0
    const/4 v0, -0x1

    .line 134
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0
.end method

.method private a(III)Landroid/graphics/drawable/GradientDrawable;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/g;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/g;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 141
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput p2, v4, v6

    const/4 v5, 0x1

    aput p3, v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 143
    invoke-virtual {v2, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 144
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 145
    invoke-virtual {v2, v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 146
    return-object v2
.end method

.method private a(Landroid/view/ViewGroup;Lcom/yelp/android/serializable/SearchAction;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/g;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f03006e

    invoke-virtual {v0, v1, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 107
    invoke-interface {p2}, Lcom/yelp/android/serializable/SearchAction;->getDefaultColorTop()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/panels/businesssearch/g;->a([I)I

    move-result v1

    .line 108
    invoke-interface {p2}, Lcom/yelp/android/serializable/SearchAction;->getDefaultColorBottom()[I

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yelp/android/ui/panels/businesssearch/g;->a([I)I

    move-result v2

    .line 109
    invoke-interface {p2}, Lcom/yelp/android/serializable/SearchAction;->getSelectedColorTop()[I

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yelp/android/ui/panels/businesssearch/g;->a([I)I

    move-result v3

    .line 110
    invoke-interface {p2}, Lcom/yelp/android/serializable/SearchAction;->getSelectedColorBottom()[I

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yelp/android/ui/panels/businesssearch/g;->a([I)I

    move-result v4

    .line 111
    invoke-interface {p2}, Lcom/yelp/android/serializable/SearchAction;->getBorderColor()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yelp/android/ui/panels/businesssearch/g;->a([I)I

    move-result v5

    .line 113
    invoke-direct {p0, v5, v1, v2}, Lcom/yelp/android/ui/panels/businesssearch/g;->a(III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 115
    invoke-direct {p0, v5, v3, v4}, Lcom/yelp/android/ui/panels/businesssearch/g;->a(III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    .line 118
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 119
    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 120
    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v3, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 122
    invoke-interface {p2}, Lcom/yelp/android/serializable/SearchAction;->getTextColor()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/panels/businesssearch/g;->a([I)I

    move-result v1

    .line 123
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 124
    invoke-interface {p2}, Lcom/yelp/android/serializable/SearchAction;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    return-object v0
.end method

.method private a(Landroid/view/View;Lcom/yelp/android/serializable/BusinessSearchResult;)V
    .locals 5

    .prologue
    .line 87
    const v0, 0x7f0c0483

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 88
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 89
    invoke-virtual {p2}, Lcom/yelp/android/serializable/BusinessSearchResult;->getSearchActions()Ljava/util/ArrayList;

    move-result-object v1

    .line 90
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/SearchAction;

    .line 91
    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/g;->a(Landroid/view/ViewGroup;Lcom/yelp/android/serializable/SearchAction;)Landroid/view/View;

    move-result-object v3

    .line 92
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    invoke-interface {v1}, Lcom/yelp/android/serializable/SearchAction;->isDisabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 94
    new-instance v4, Lcom/yelp/android/ui/panels/businesssearch/h;

    invoke-direct {v4, p0, v1, p2}, Lcom/yelp/android/ui/panels/businesssearch/h;-><init>(Lcom/yelp/android/ui/panels/businesssearch/g;Lcom/yelp/android/serializable/SearchAction;Lcom/yelp/android/serializable/BusinessSearchResult;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 102
    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/SearchResultAnnotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    const v0, 0x7f0c0482

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 66
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 67
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/SearchResultAnnotation;

    .line 68
    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesssearch/g;->c:Landroid/view/LayoutInflater;

    const v3, 0x7f03013f

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 70
    const v3, 0x7f0c0430

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 71
    invoke-virtual {v1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->getRedVal()I

    move-result v5

    invoke-virtual {v1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->getGreenVal()I

    move-result v6

    invoke-virtual {v1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->getBlueVal()I

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    const v3, 0x7f0c042f

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 77
    iget-object v5, p0, Lcom/yelp/android/ui/panels/businesssearch/g;->b:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->getImagePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v3, v6}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 78
    iget-object v5, p0, Lcom/yelp/android/ui/panels/businesssearch/g;->a:Lcom/bumptech/glide/j;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/d;->d()Lcom/bumptech/glide/c;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/yelp/android/ag/j;

    .line 82
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 84
    :cond_1
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 52
    const v0, 0x7f0c0385

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 53
    if-nez v0, :cond_0

    .line 54
    const v0, 0x7f0c0384

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 55
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 57
    :goto_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/panels/businesssearch/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/businesssearch/i;

    invoke-interface {v0}, Lcom/yelp/android/ui/panels/businesssearch/i;->getBusinessSearchResult()Lcom/yelp/android/serializable/BusinessSearchResult;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->getAnnotations()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/yelp/android/ui/panels/businesssearch/g;->a(Landroid/view/View;Ljava/util/List;)V

    .line 59
    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/panels/businesssearch/g;->a(Landroid/view/View;Lcom/yelp/android/serializable/BusinessSearchResult;)V

    .line 60
    return-object v2

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method
