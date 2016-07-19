.class public Lcom/yelp/android/ui/panels/PanelLoading;
.super Landroid/widget/LinearLayout;
.source "PanelLoading.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/LayoutInflater;

.field private c:Landroid/widget/FrameLayout;

.field private d:Lcom/yelp/android/ui/util/v;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/panels/PanelLoading;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-object p1, p0, Lcom/yelp/android/ui/panels/PanelLoading;->a:Landroid/content/Context;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->b:Landroid/view/LayoutInflater;

    .line 44
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/PanelLoading;->a()V

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/PanelLoading;->a(Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/yelp/android/co/a$l;->PanelLoading:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    sget v1, Lcom/yelp/android/co/a$l;->PanelLoading_loadingSpinner:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    invoke-static {}, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;->values()[Lcom/yelp/android/ui/panels/CommonLoadingSpinner;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/PanelLoading;->setSpinner(Lcom/yelp/android/ui/panels/c;)V

    .line 51
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 132
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->g:Z

    if-eqz v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 136
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/PanelLoading;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/PanelLoading;->setGravity(I)V

    .line 141
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/panels/PanelLoading;->setOrientation(I)V

    .line 142
    sget v0, Lcom/yelp/android/appdata/n;->e:I

    sget v1, Lcom/yelp/android/appdata/n;->e:I

    invoke-virtual {p0, v0, v3, v1, v3}, Lcom/yelp/android/ui/panels/PanelLoading;->setPadding(IIII)V

    .line 144
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/panels/PanelLoading;->setClickable(Z)V

    .line 146
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->b:Landroid/view/LayoutInflater;

    sget v1, Lcom/yelp/android/co/a$h;->panel_loading:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 147
    sget v0, Lcom/yelp/android/co/a$f;->loading_spinner_holder:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/PanelLoading;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->c:Landroid/widget/FrameLayout;

    .line 148
    sget v0, Lcom/yelp/android/co/a$f;->loading_text:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/PanelLoading;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->f:Landroid/widget/TextView;

    .line 150
    iput-boolean v2, p0, Lcom/yelp/android/ui/panels/PanelLoading;->g:Z

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 158
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/PanelLoading;->a(Ljava/lang/String;)V

    .line 159
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/PanelLoading;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, -0x2

    const/4 v2, 0x0

    .line 166
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 170
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 171
    iget-object v1, p0, Lcom/yelp/android/ui/panels/PanelLoading;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->d:Lcom/yelp/android/ui/util/v;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->e:Landroid/view/View;

    if-nez v0, :cond_0

    .line 183
    sget-object v0, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;->DEFAULT:Lcom/yelp/android/ui/panels/CommonLoadingSpinner;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/PanelLoading;->setSpinner(Lcom/yelp/android/ui/panels/c;)V

    .line 184
    const-string/jumbo v0, "PanelLoading"

    const-string/jumbo v1, "Animation was started with no spinner reverting to default"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->d(Ljava/lang/Object;Ljava/lang/String;)I

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->d:Lcom/yelp/android/ui/util/v;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->d:Lcom/yelp/android/ui/util/v;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/v;->a()V

    .line 190
    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->d:Lcom/yelp/android/ui/util/v;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->d:Lcom/yelp/android/ui/util/v;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/v;->b()V

    .line 197
    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/PanelLoading;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yelp/android/co/a$c;->gray_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    const/high16 v0, -0x56000000

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/PanelLoading;->setBackgroundColor(I)V

    .line 202
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 75
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/PanelLoading;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/PanelLoading;->b()V

    .line 78
    :cond_0
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->d:Lcom/yelp/android/ui/util/v;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->d:Lcom/yelp/android/ui/util/v;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/v;->a(I)V

    .line 86
    :cond_0
    return-void
.end method

.method public setCustomSpinnerView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->e:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 124
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/PanelLoading;->c()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->d:Lcom/yelp/android/ui/util/v;

    .line 120
    iput-object p1, p0, Lcom/yelp/android/ui/panels/PanelLoading;->e:Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->c:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/PanelLoading;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 123
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/PanelLoading;->b()V

    goto :goto_0
.end method

.method public setSpinner(Lcom/yelp/android/ui/panels/c;)V
    .locals 5

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/PanelLoading;->c()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->e:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelLoading;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 98
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/PanelLoading;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 99
    iget-object v1, p0, Lcom/yelp/android/ui/panels/PanelLoading;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 102
    new-instance v1, Lcom/yelp/android/ui/util/v;

    iget-object v2, p0, Lcom/yelp/android/ui/panels/PanelLoading;->a:Landroid/content/Context;

    invoke-interface {p1}, Lcom/yelp/android/ui/panels/c;->getFrames()[I

    move-result-object v3

    const/16 v4, 0x14

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/yelp/android/ui/util/v;-><init>(Landroid/content/Context;Landroid/widget/ImageView;[II)V

    iput-object v1, p0, Lcom/yelp/android/ui/panels/PanelLoading;->d:Lcom/yelp/android/ui/util/v;

    .line 104
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/PanelLoading;->b()V

    .line 105
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 64
    if-nez p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/PanelLoading;->b()V

    .line 67
    :cond_0
    return-void
.end method
