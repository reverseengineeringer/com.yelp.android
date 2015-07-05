.class public Lcom/yelp/android/ui/activities/nearby/ComboListFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "ComboListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/yelp/android/serializable/by;",
        ">",
        "Lcom/yelp/android/ui/activities/support/YelpListFragment;"
    }
.end annotation


# instance fields
.field a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private b:Lcom/yelp/android/ui/activities/nearby/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/nearby/i",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Lcom/yelp/android/ui/activities/nearby/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/nearby/h",
            "<TT;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Runnable;

.field private e:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/RelativeLayout;

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

    .line 242
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/g;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/nearby/g;-><init>(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 59
    return-void
.end method

.method public static a(IZ)Lcom/yelp/android/ui/activities/nearby/ComboListFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/yelp/android/serializable/by;",
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

.method static synthetic a(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;)Lcom/yelp/android/ui/activities/nearby/h;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->c:Lcom/yelp/android/ui/activities/nearby/h;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->i:Landroid/view/View;

    return-object v0
.end method

.method private e(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 149
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
    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->b:Lcom/yelp/android/ui/activities/nearby/i;

    if-nez v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 186
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->e(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->b:Lcom/yelp/android/ui/activities/nearby/i;

    invoke-interface {v0, p0}, Lcom/yelp/android/ui/activities/nearby/i;->a(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;)V

    goto :goto_0

    .line 188
    :cond_2
    instance-of v1, v0, Landroid/os/Parcelable;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->b:Lcom/yelp/android/ui/activities/nearby/i;

    invoke-interface {v1, p0, v0}, Lcom/yelp/android/ui/activities/nearby/i;->a(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/ui/activities/nearby/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/nearby/h",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 198
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->c:Lcom/yelp/android/ui/activities/nearby/h;

    .line 199
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/nearby/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/nearby/i",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 194
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->b:Lcom/yelp/android/ui/activities/nearby/i;

    .line 195
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 202
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->d:Ljava/lang/Runnable;

    .line 204
    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnLoadNeeded(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->l:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->l:Landroid/widget/LinearLayout;

    const v1, 0x7f0c0084

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->j:I

    return v0
.end method

.method public e()I
    .locals 3

    .prologue
    .line 136
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

    .line 137
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public g()I
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public h()V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->h:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->h:Landroid/widget/RelativeLayout;

    const v1, 0x7f0c0238

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 160
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 161
    sget v1, Lcom/yelp/android/ui/util/cw;->e:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/cw;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->k:Z

    goto :goto_0
.end method

.method public i()V
    .locals 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->h:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->h:Landroid/widget/RelativeLayout;

    const v1, 0x7f0c0238

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 173
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 174
    sget v1, Lcom/yelp/android/ui/util/cw;->e:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/cw;->b(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->k:Z

    goto :goto_0
.end method

.method public l_()V
    .locals 1

    .prologue
    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-interface {v0}, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;->onGlobalLayout()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return-void

    .line 226
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
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->b:Lcom/yelp/android/ui/activities/nearby/i;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->b:Lcom/yelp/android/ui/activities/nearby/i;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnPullDownCallback(Lcom/yelp/android/ui/util/bp;)V

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

    const v1, 0x7f030086

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->l:Landroid/widget/LinearLayout;

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->l:Landroid/widget/LinearLayout;

    const v1, 0x7f0c0235

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->e:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->l:Landroid/widget/LinearLayout;

    const v1, 0x7f0c0236

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->g:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->l:Landroid/widget/LinearLayout;

    const v1, 0x7f0c0237

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->h:Landroid/widget/RelativeLayout;

    .line 97
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->k:Z

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->l:Landroid/widget/LinearLayout;

    const v1, 0x7f0c0238

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :cond_2
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->i:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->i:Landroid/view/View;

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->i:Landroid/view/View;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->l:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v4, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 107
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v1, v4, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 108
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSelector(I)V

    .line 111
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->c:Lcom/yelp/android/ui/activities/nearby/h;

    if-eqz v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->c:Lcom/yelp/android/ui/activities/nearby/h;

    invoke-interface {v0, p0}, Lcom/yelp/android/ui/activities/nearby/h;->c(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;)Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a(Landroid/widget/ListAdapter;)V

    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->c:Lcom/yelp/android/ui/activities/nearby/h;

    invoke-interface {v0, p0}, Lcom/yelp/android/ui/activities/nearby/h;->a(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;)V

    .line 115
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
    .line 119
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onDestroyView()V

    .line 120
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cp;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 121
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 126
    const-string/jumbo v0, "position"

    iget v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->j:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    const-string/jumbo v0, "show_handle_image"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->k:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 128
    return-void
.end method
