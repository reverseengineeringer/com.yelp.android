.class public Lcom/yelp/android/ui/activities/nearby/ComboListFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "ComboListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/nearby/ComboListFragment$a;,
        Lcom/yelp/android/ui/activities/nearby/ComboListFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/yelp/android/serializable/f;",
        ">",
        "Lcom/yelp/android/ui/activities/support/YelpListFragment;"
    }
.end annotation


# instance fields
.field a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private b:Lcom/yelp/android/ui/activities/nearby/ComboListFragment$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/nearby/ComboListFragment$b",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Lcom/yelp/android/ui/activities/nearby/ComboListFragment$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/nearby/ComboListFragment$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Runnable;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/RelativeLayout;

.field private i:Landroid/view/View;

.field private j:I

.field private k:Z

.field private l:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    .line 43
    iput v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->j:I

    .line 44
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->k:Z

    .line 245
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment$1;-><init>(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;)Lcom/yelp/android/ui/activities/nearby/ComboListFragment$a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->c:Lcom/yelp/android/ui/activities/nearby/ComboListFragment$a;

    return-object v0
.end method

.method public static a(IZ)Lcom/yelp/android/ui/activities/nearby/ComboListFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/yelp/android/serializable/f;",
            ">(IZ)",
            "Lcom/yelp/android/ui/activities/nearby/ComboListFragment",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;-><init>()V

    .line 50
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 51
    const-string/jumbo v2, "position"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    const-string/jumbo v2, "show_handle_image"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 54
    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->i:Landroid/view/View;

    return-object v0
.end method

.method private f(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->l:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->b:Lcom/yelp/android/ui/activities/nearby/ComboListFragment$b;

    if-nez v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 189
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->f(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->b:Lcom/yelp/android/ui/activities/nearby/ComboListFragment$b;

    invoke-interface {v0, p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment$b;->a(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;)V

    goto :goto_0

    .line 191
    :cond_2
    instance-of v1, v0, Landroid/os/Parcelable;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->b:Lcom/yelp/android/ui/activities/nearby/ComboListFragment$b;

    invoke-interface {v1, p0, v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment$b;->a(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/ui/activities/nearby/ComboListFragment$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/nearby/ComboListFragment$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 201
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->c:Lcom/yelp/android/ui/activities/nearby/ComboListFragment$a;

    .line 202
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/nearby/ComboListFragment$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/nearby/ComboListFragment$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 197
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->b:Lcom/yelp/android/ui/activities/nearby/ComboListFragment$b;

    .line 198
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 205
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->d:Ljava/lang/Runnable;

    .line 207
    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnLoadNeeded(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->l:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->l:Landroid/widget/LinearLayout;

    const v1, 0x7f0f00a9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :cond_0
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->j:I

    return v0
.end method

.method public f()I
    .locals 3

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->measure(II)V

    .line 140
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public h()I
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i()V
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->g:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->g:Landroid/widget/RelativeLayout;

    const v1, 0x7f0f027f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 163
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 164
    sget v1, Lcom/yelp/android/ui/util/av;->e:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->k:Z

    goto :goto_0
.end method

.method public j()V
    .locals 4

    .prologue
    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->g:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->g:Landroid/widget/RelativeLayout;

    const v1, 0x7f0f027f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 176
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 177
    sget v1, Lcom/yelp/android/ui/util/av;->e:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->b(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->k:Z

    goto :goto_0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-interface {v0}, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;->onGlobalLayout()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 78
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 80
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->b:Lcom/yelp/android/ui/activities/nearby/ComboListFragment$b;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->b:Lcom/yelp/android/ui/activities/nearby/ComboListFragment$b;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnPullDownCallback(Lcom/yelp/android/ui/util/ScrollToLoadListView$d;)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnLoadNeeded(Ljava/lang/Runnable;)V

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008f

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->l:Landroid/widget/LinearLayout;

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->l:Landroid/widget/LinearLayout;

    const v1, 0x7f0f027c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->e:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->l:Landroid/widget/LinearLayout;

    const v1, 0x7f0f027d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->f:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->l:Landroid/widget/LinearLayout;

    const v1, 0x7f0f027e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->g:Landroid/widget/RelativeLayout;

    .line 100
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->k:Z

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->l:Landroid/widget/LinearLayout;

    const v1, 0x7f0f027f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 104
    :cond_2
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->i:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->i:Landroid/view/View;

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->i:Landroid/view/View;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->l:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v4, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 110
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v1, v4, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 111
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSelector(I)V

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->c:Lcom/yelp/android/ui/activities/nearby/ComboListFragment$a;

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->c:Lcom/yelp/android/ui/activities/nearby/ComboListFragment$a;

    invoke-interface {v0, p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment$a;->c(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;)Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a(Landroid/widget/ListAdapter;)V

    .line 116
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->c:Lcom/yelp/android/ui/activities/nearby/ComboListFragment$a;

    invoke-interface {v0, p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment$a;->a(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;)V

    .line 118
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    if-eqz p1, :cond_1

    .line 66
    const-string/jumbo v0, "position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->j:I

    .line 67
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "show_handle_image"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->k:Z

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "position"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->j:I

    .line 71
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "show_handle_image"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->k:Z

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onDestroyView()V

    .line 123
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/ar;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 124
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 129
    const-string/jumbo v0, "position"

    iget v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->j:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    const-string/jumbo v0, "show_handle_image"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->k:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 131
    return-void
.end method
