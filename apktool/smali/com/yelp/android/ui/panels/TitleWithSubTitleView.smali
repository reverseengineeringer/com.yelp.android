.class public Lcom/yelp/android/ui/panels/TitleWithSubTitleView;
.super Landroid/widget/RelativeLayout;
.source "TitleWithSubTitleView.java"


# instance fields
.field protected final a:Landroid/widget/TextView;

.field protected final b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 44
    const v0, 0x7f0101dc

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030175

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    const/4 v0, 0x0

    sget-object v1, Lcom/yelp/android/b$a;->GapSizes:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 33
    const/4 v2, 0x1

    sget v3, Lcom/yelp/android/appdata/n;->e:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 35
    const/4 v3, 0x2

    sget v4, Lcom/yelp/android/appdata/n;->e:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 37
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    invoke-virtual {p0, v2, v1, v3, v1}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->setPadding(IIII)V

    .line 39
    const v0, 0x7f0f024d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->a:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f0f04cc

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->b:Landroid/widget/TextView;

    .line 41
    return-void
.end method


# virtual methods
.method public getSubTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->a:Landroid/widget/TextView;

    return-object v0
.end method
