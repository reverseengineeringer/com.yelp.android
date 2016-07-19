.class public Lcom/yelp/android/ui/util/ScrollToLoadListView;
.super Lcom/yelp/android/ui/util/PullDownListView;
.source "ScrollToLoadListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/util/ScrollToLoadListView$b;,
        Lcom/yelp/android/ui/util/ScrollToLoadListView$d;,
        Lcom/yelp/android/ui/util/ScrollToLoadListView$a;,
        Lcom/yelp/android/ui/util/ScrollToLoadListView$e;,
        Lcom/yelp/android/ui/util/ScrollToLoadListView$c;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/panels/PanelLoading;

.field private b:Lcom/yelp/android/ui/util/ScrollToLoadListView$e;

.field private c:Lcom/yelp/android/ui/util/ScrollToLoadListView$a;

.field private d:Lcom/yelp/android/ui/util/ScrollToLoadListView$d;

.field private e:Landroid/widget/AbsListView$OnScrollListener;

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Landroid/view/View;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/PullDownListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    sget v0, Lcom/yelp/android/co/a$e;->gray_section_background:I

    iput v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f:I

    .line 45
    iput-boolean v2, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->g:Z

    .line 46
    iput-boolean v2, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->h:Z

    .line 48
    iput-boolean v2, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->j:Z

    .line 60
    sget-object v0, Lcom/yelp/android/co/a$l;->ScrollToLoadListView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    sget v1, Lcom/yelp/android/co/a$l;->ScrollToLoadListView_topLoading:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->g:Z

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/util/ScrollToLoadListView$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView$a;-><init>(Lcom/yelp/android/ui/util/ScrollToLoadListView;Lcom/yelp/android/ui/util/ScrollToLoadListView$1;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->c:Lcom/yelp/android/ui/util/ScrollToLoadListView$a;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/ScrollToLoadListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->e:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method private a(Lcom/yelp/android/ui/util/ScrollToLoadListView$c;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->g:Z

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {p0, v0, p1, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {p0, v0, p1, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/ScrollToLoadListView;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->j:Z

    return p1
.end method

.method private j()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->b:Lcom/yelp/android/ui/util/ScrollToLoadListView$e;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/yelp/android/ui/util/ScrollToLoadListView$e;

    invoke-direct {v0, p0, p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView$e;-><init>(Lcom/yelp/android/ui/util/ScrollToLoadListView;Lcom/yelp/android/ui/util/ScrollToLoadListView;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->b:Lcom/yelp/android/ui/util/ScrollToLoadListView$e;

    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->b:Lcom/yelp/android/ui/util/ScrollToLoadListView$e;

    invoke-super {p0, v0}, Lcom/yelp/android/ui/util/PullDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 126
    :cond_0
    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView$d;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->b:Lcom/yelp/android/ui/util/ScrollToLoadListView$e;

    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->c:Lcom/yelp/android/ui/util/ScrollToLoadListView$a;

    invoke-super {p0, v0}, Lcom/yelp/android/ui/util/PullDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 135
    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->g:Z

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->removeHeaderView(Landroid/view/View;)Z

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;Lcom/yelp/android/ui/panels/PanelLoading;)V
    .locals 3

    .prologue
    .line 190
    iput-object p2, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget-object v2, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v2}, Lcom/yelp/android/ui/panels/PanelLoading;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    new-instance v0, Lcom/yelp/android/ui/util/ScrollToLoadListView$c;

    invoke-direct {v0, p1}, Lcom/yelp/android/ui/util/ScrollToLoadListView$c;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a(Lcom/yelp/android/ui/util/ScrollToLoadListView$c;)V

    .line 194
    new-instance v0, Lcom/yelp/android/ui/util/ScrollToLoadListView$e;

    invoke-direct {v0, p0, p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView$e;-><init>(Lcom/yelp/android/ui/util/ScrollToLoadListView;Lcom/yelp/android/ui/util/ScrollToLoadListView;)V

    invoke-super {p0, v0}, Lcom/yelp/android/ui/util/PullDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 195
    return-void
.end method

.method public a(Ljava/lang/Runnable;Lcom/yelp/android/ui/panels/c;)V
    .locals 3

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->l()V

    .line 150
    new-instance v0, Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget-object v2, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v2}, Lcom/yelp/android/ui/panels/PanelLoading;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    iget v1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setBackgroundResource(I)V

    .line 154
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/panels/PanelLoading;->setSpinner(Lcom/yelp/android/ui/panels/c;)V

    .line 156
    if-eqz p1, :cond_0

    new-instance v0, Lcom/yelp/android/ui/util/ScrollToLoadListView$c;

    invoke-direct {v0, p1}, Lcom/yelp/android/ui/util/ScrollToLoadListView$c;-><init>(Ljava/lang/Runnable;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a(Lcom/yelp/android/ui/util/ScrollToLoadListView$c;)V

    .line 157
    invoke-direct {p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->j()V

    .line 158
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 262
    :goto_0
    return-void

    .line 251
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/util/ScrollToLoadListView$1;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/util/ScrollToLoadListView$1;-><init>(Lcom/yelp/android/ui/util/ScrollToLoadListView;Z)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 282
    :goto_0
    return-void

    .line 271
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/util/ScrollToLoadListView$2;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/util/ScrollToLoadListView$2;-><init>(Lcom/yelp/android/ui/util/ScrollToLoadListView;Z)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    if-eqz v0, :cond_0

    .line 466
    iget-object v1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 468
    :cond_0
    return-void

    .line 466
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->h:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->g:Z

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->i:Landroid/view/View;

    if-nez v0, :cond_0

    .line 78
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/PullDownListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->i:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 183
    const/4 v0, 0x0

    sget-object v1, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;->SMALL:Lcom/yelp/android/ui/panels/CommonLoadingSpinner;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a(Ljava/lang/Runnable;Lcom/yelp/android/ui/panels/c;)V

    .line 184
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 221
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Lcom/yelp/android/ui/util/ScrollToLoadListView$b;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView$b;-><init>(Lcom/yelp/android/ui/util/ScrollToLoadListView$1;)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 228
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->l()V

    .line 229
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelLoading;->c()V

    .line 232
    :cond_1
    iput-object v1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    .line 233
    invoke-direct {p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->k()V

    .line 234
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 237
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
    .line 241
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->j:Z

    return v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->j:Z

    .line 476
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 290
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->b:Lcom/yelp/android/ui/util/ScrollToLoadListView$e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->b:Lcom/yelp/android/ui/util/ScrollToLoadListView$e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView$e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 291
    :goto_0
    iget-object v3, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView$d;

    if-eqz v3, :cond_3

    .line 292
    iget-object v3, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView$d;

    invoke-interface {v3, p1}, Lcom/yelp/android/ui/util/ScrollToLoadListView$d;->a(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 293
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView$d;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/util/ScrollToLoadListView$d;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    .line 296
    :cond_0
    if-nez v3, :cond_1

    if-eqz v2, :cond_3

    .line 300
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v2

    .line 290
    goto :goto_0

    .line 300
    :cond_3
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/PullDownListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public setBottomReached(Z)V
    .locals 0

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->h:Z

    .line 114
    return-void
.end method

.method public setOnLoadNeeded(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;->SMALL:Lcom/yelp/android/ui/panels/CommonLoadingSpinner;

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a(Ljava/lang/Runnable;Lcom/yelp/android/ui/panels/c;)V

    .line 139
    return-void
.end method

.method public setOnPullDownCallback(Lcom/yelp/android/ui/util/ScrollToLoadListView$d;)V
    .locals 1

    .prologue
    .line 93
    iput-object p1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView$d;

    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView$d;

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->j()V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->k()V

    goto :goto_0
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->e:Landroid/widget/AbsListView$OnScrollListener;

    .line 73
    return-void
.end method

.method public setPanelLoadingBackground(I)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/panels/PanelLoading;->setBackgroundResource(I)V

    .line 105
    :cond_0
    iput p1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f:I

    .line 106
    return-void
.end method

.method public setSendTouchesView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView;->i:Landroid/view/View;

    .line 90
    return-void
.end method
