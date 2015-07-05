.class public Lcom/yelp/android/ui/panels/PanelLoading;
.super Landroid/widget/LinearLayout;
.source "PanelLoading.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private final c:Landroid/view/LayoutInflater;

.field private d:Lcom/yelp/android/ui/util/as;

.field private final e:Landroid/content/Context;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/panels/PanelLoading;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->f:Z

    .line 200
    new-instance v0, Lcom/yelp/android/ui/panels/ab;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/ab;-><init>(Lcom/yelp/android/ui/panels/PanelLoading;)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->i:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 35
    iput-object p1, p0, Lcom/yelp/android/ui/panels/PanelLoading;->e:Landroid/content/Context;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->c:Landroid/view/LayoutInflater;

    .line 37
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/PanelLoading;->a()V

    .line 38
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/PanelLoading;->a(Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/yelp/android/bf/m;->PanelLoading:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    invoke-static {}, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;->values()[Lcom/yelp/android/ui/panels/CommonLoadingSpinner;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/PanelLoading;->setSpinner(Lcom/yelp/android/ui/panels/y;)V

    .line 43
    return-void
.end method

.method private a([I)V
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->d:Lcom/yelp/android/ui/util/as;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->d:Lcom/yelp/android/ui/util/as;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/as;->b()V

    .line 86
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/util/as;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/PanelLoading;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/ui/panels/PanelLoading;->a:Landroid/widget/ImageView;

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/yelp/android/ui/util/as;-><init>(Landroid/content/Context;Landroid/widget/ImageView;[II)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->d:Lcom/yelp/android/ui/util/as;

    .line 87
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/PanelLoading;->b()V

    .line 88
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 153
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->h:Z

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/PanelLoading;->a()V

    .line 157
    :cond_0
    iget-object v3, p0, Lcom/yelp/android/ui/panels/PanelLoading;->a:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->f:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yelp/android/ui/panels/PanelLoading;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 157
    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 96
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->h:Z

    if-eqz v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 100
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/PanelLoading;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/PanelLoading;->setGravity(I)V

    .line 103
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/panels/PanelLoading;->setOrientation(I)V

    .line 104
    sget v0, Lcom/yelp/android/appdata/ao;->e:I

    sget v1, Lcom/yelp/android/appdata/ao;->e:I

    invoke-virtual {p0, v0, v3, v1, v3}, Lcom/yelp/android/ui/panels/PanelLoading;->setPadding(IIII)V

    .line 107
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/panels/PanelLoading;->setClickable(Z)V

    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->c:Landroid/view/LayoutInflater;

    sget v1, Lcom/yelp/android/bf/i;->panel_loading:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 110
    sget v0, Lcom/yelp/android/bf/g;->loading_spinner:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/PanelLoading;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->a:Landroid/widget/ImageView;

    .line 111
    sget v0, Lcom/yelp/android/bf/g;->loading_text:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/PanelLoading;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->b:Landroid/widget/TextView;

    .line 112
    sget-object v0, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;->DEFAULT:Lcom/yelp/android/ui/panels/CommonLoadingSpinner;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;->getFrames()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/panels/PanelLoading;->a([I)V

    .line 114
    iput-boolean v2, p0, Lcom/yelp/android/ui/panels/PanelLoading;->h:Z

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/PanelLoading;->a()V

    .line 92
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/panels/PanelLoading;->setBackgroundColor(I)V

    .line 93
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    const/4 v1, 0x0

    .line 131
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 133
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 134
    iget-object v1, p0, Lcom/yelp/android/ui/panels/PanelLoading;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, ""

    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ui/panels/PanelLoading;->g:Ljava/lang/String;

    .line 136
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/PanelLoading;->e()V

    .line 137
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->d:Lcom/yelp/android/ui/util/as;

    if-nez v0, :cond_0

    .line 169
    sget-object v0, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;->DEFAULT:Lcom/yelp/android/ui/panels/CommonLoadingSpinner;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;->getFrames()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/panels/PanelLoading;->a([I)V

    .line 170
    const-string/jumbo v0, "PanelLoading"

    const-string/jumbo v1, "Animation was started with no spinner reverting to default"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->d(Ljava/lang/Object;Ljava/lang/String;)I

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->d:Lcom/yelp/android/ui/util/as;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/as;->a()V

    .line 177
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/PanelLoading;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/PanelLoading;->i:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 178
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/PanelLoading;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/PanelLoading;->i:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 179
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 123
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/PanelLoading;->a(Ljava/lang/String;)V

    .line 124
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/PanelLoading;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->d:Lcom/yelp/android/ui/util/as;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->d:Lcom/yelp/android/ui/util/as;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/as;->b()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->d:Lcom/yelp/android/ui/util/as;

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/PanelLoading;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/PanelLoading;->i:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 189
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->h:Z

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/PanelLoading;->a()V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/PanelLoading;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yelp/android/bf/d;->gray_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    const/high16 v0, -0x56000000

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/PanelLoading;->setBackgroundColor(I)V

    .line 198
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 62
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/PanelLoading;->c()V

    .line 63
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->d:Lcom/yelp/android/ui/util/as;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->d:Lcom/yelp/android/ui/util/as;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/as;->a(I)V

    .line 71
    :cond_0
    return-void
.end method

.method public setSpinner(Lcom/yelp/android/ui/panels/y;)V
    .locals 1

    .prologue
    .line 77
    invoke-interface {p1}, Lcom/yelp/android/ui/panels/y;->getFrames()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/panels/PanelLoading;->a([I)V

    .line 78
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 54
    if-nez p1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/PanelLoading;->b()V

    .line 57
    :cond_0
    return-void
.end method
