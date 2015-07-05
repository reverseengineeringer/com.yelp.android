.class public Lcom/yelp/android/ui/util/ScrollToLoadListView;
.super Lcom/yelp/android/ui/util/PullDownListView;
.source "ScrollToLoadListView.java"


# instance fields
.field private a:Lcom/yelp/android/ui/panels/PanelLoading;

.field private b:Lcom/yelp/android/ui/util/bq;

.field private c:Lcom/yelp/android/ui/util/bm;

.field private d:Lcom/yelp/android/ui/util/bp;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Landroid/view/View;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/util/PullDownListView;-><init>(Landroid/content/Context;)V

    .line 43
    sget v0, Lcom/yelp/android/bf/f;->gray_section_background:I

    iput v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->e:I

    .line 44
    iput-boolean v1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f:Z

    .line 45
    iput-boolean v1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->g:Z

    .line 47
    iput-boolean v1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->i:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/util/PullDownListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    sget v0, Lcom/yelp/android/bf/f;->gray_section_background:I

    iput v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->e:I

    .line 44
    iput-boolean v1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f:Z

    .line 45
    iput-boolean v1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->g:Z

    .line 47
    iput-boolean v1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->i:Z

    .line 60
    sget-object v0, Lcom/yelp/android/bf/m;->ScrollToLoadListView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f:Z

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/PullDownListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    sget v0, Lcom/yelp/android/bf/f;->gray_section_background:I

    iput v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->e:I

    .line 44
    iput-boolean v1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f:Z

    .line 45
    iput-boolean v1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->g:Z

    .line 47
    iput-boolean v1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->i:Z

    .line 56
    return-void
.end method

.method private a(Lcom/yelp/android/ui/util/bo;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 171
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {p0, v0, p1, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {p0, v0, p1, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/ScrollToLoadListView;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->i:Z

    return p1
.end method

.method private j()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->b:Lcom/yelp/android/ui/util/bq;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/yelp/android/ui/util/bq;

    invoke-direct {v0, p0, p0}, Lcom/yelp/android/ui/util/bq;-><init>(Lcom/yelp/android/ui/util/ScrollToLoadListView;Lcom/yelp/android/ui/util/ScrollToLoadListView;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->b:Lcom/yelp/android/ui/util/bq;

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->b:Lcom/yelp/android/ui/util/bq;

    invoke-super {p0, v0}, Lcom/yelp/android/ui/util/PullDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->c:Lcom/yelp/android/ui/util/bm;

    if-nez v0, :cond_1

    .line 134
    new-instance v0, Lcom/yelp/android/ui/util/bm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/util/bm;-><init>(Lcom/yelp/android/ui/util/ScrollToLoadListView;Lcom/yelp/android/ui/util/bk;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->c:Lcom/yelp/android/ui/util/bm;

    .line 136
    :cond_1
    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->d:Lcom/yelp/android/ui/util/bp;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->b:Lcom/yelp/android/ui/util/bq;

    .line 143
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->c:Lcom/yelp/android/ui/util/bm;

    invoke-super {p0, v0}, Lcom/yelp/android/ui/util/PullDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 145
    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f:Z

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->removeHeaderView(Landroid/view/View;)Z

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;Lcom/yelp/android/ui/panels/PanelLoading;)V
    .locals 3

    .prologue
    .line 200
    iput-object p2, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget-object v2, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v2}, Lcom/yelp/android/ui/panels/PanelLoading;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    new-instance v0, Lcom/yelp/android/ui/util/bo;

    invoke-direct {v0, p1}, Lcom/yelp/android/ui/util/bo;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a(Lcom/yelp/android/ui/util/bo;)V

    .line 204
    new-instance v0, Lcom/yelp/android/ui/util/bq;

    invoke-direct {v0, p0, p0}, Lcom/yelp/android/ui/util/bq;-><init>(Lcom/yelp/android/ui/util/ScrollToLoadListView;Lcom/yelp/android/ui/util/ScrollToLoadListView;)V

    invoke-super {p0, v0}, Lcom/yelp/android/ui/util/PullDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 205
    return-void
.end method

.method public a(Ljava/lang/Runnable;Lcom/yelp/android/ui/panels/y;)V
    .locals 3

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->l()V

    .line 160
    new-instance v0, Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget-object v2, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v2}, Lcom/yelp/android/ui/panels/PanelLoading;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    iget v1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->e:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setBackgroundResource(I)V

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/panels/PanelLoading;->setSpinner(Lcom/yelp/android/ui/panels/y;)V

    .line 166
    if-eqz p1, :cond_0

    new-instance v0, Lcom/yelp/android/ui/util/bo;

    invoke-direct {v0, p1}, Lcom/yelp/android/ui/util/bo;-><init>(Ljava/lang/Runnable;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a(Lcom/yelp/android/ui/util/bo;)V

    .line 167
    invoke-direct {p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->j()V

    .line 168
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 271
    :goto_0
    return-void

    .line 261
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/util/bk;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/util/bk;-><init>(Lcom/yelp/android/ui/util/ScrollToLoadListView;Z)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 290
    :goto_0
    return-void

    .line 280
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/util/bl;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/util/bl;-><init>(Lcom/yelp/android/ui/util/ScrollToLoadListView;Z)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    if-eqz v0, :cond_0

    .line 464
    iget-object v1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 466
    :cond_0
    return-void

    .line 464
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->g:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f:Z

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->h:Landroid/view/View;

    if-nez v0, :cond_0

    .line 84
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/PullDownListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 86
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 193
    const/4 v0, 0x0

    sget-object v1, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;->SMALL:Lcom/yelp/android/ui/panels/CommonLoadingSpinner;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a(Ljava/lang/Runnable;Lcom/yelp/android/ui/panels/y;)V

    .line 194
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 231
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Lcom/yelp/android/ui/util/bn;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/bn;-><init>(Lcom/yelp/android/ui/util/bk;)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->l()V

    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelLoading;->c()V

    .line 242
    :cond_1
    iput-object v1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    .line 243
    invoke-direct {p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->k()V

    .line 244
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLoadingPanel()Lcom/yelp/android/ui/panels/PanelLoading;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->i:Z

    return v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->i:Z

    .line 474
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 298
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->b:Lcom/yelp/android/ui/util/bq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->b:Lcom/yelp/android/ui/util/bq;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bq;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 299
    :goto_0
    iget-object v3, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->d:Lcom/yelp/android/ui/util/bp;

    if-eqz v3, :cond_3

    .line 300
    iget-object v3, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->d:Lcom/yelp/android/ui/util/bp;

    invoke-interface {v3, p1}, Lcom/yelp/android/ui/util/bp;->a(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 301
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->d:Lcom/yelp/android/ui/util/bp;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/util/bp;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    .line 304
    :cond_0
    if-nez v3, :cond_1

    if-eqz v2, :cond_3

    .line 308
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v2

    .line 298
    goto :goto_0

    .line 308
    :cond_3
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/PullDownListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public setBottomReached(Z)V
    .locals 0

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->g:Z

    .line 120
    return-void
.end method

.method public setOnLoadNeeded(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;->SMALL:Lcom/yelp/android/ui/panels/CommonLoadingSpinner;

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a(Ljava/lang/Runnable;Lcom/yelp/android/ui/panels/y;)V

    .line 149
    return-void
.end method

.method public setOnPullDownCallback(Lcom/yelp/android/ui/util/bp;)V
    .locals 1

    .prologue
    .line 99
    iput-object p1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->d:Lcom/yelp/android/ui/util/bp;

    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->d:Lcom/yelp/android/ui/util/bp;

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->j()V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->k()V

    goto :goto_0
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setOnScrollListener() not allowed for ScrollToLoadListView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPanelLoadingBackground(I)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/panels/PanelLoading;->setBackgroundResource(I)V

    .line 111
    :cond_0
    iput p1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->e:I

    .line 112
    return-void
.end method

.method public setSendTouchesView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->h:Landroid/view/View;

    .line 96
    return-void
.end method
