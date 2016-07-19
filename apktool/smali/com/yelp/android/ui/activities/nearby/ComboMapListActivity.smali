.class public abstract Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ComboMapListActivity.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/nearby/ComboListFragment$a;
.implements Lcom/yelp/android/ui/activities/nearby/ComboMapFragment$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;,
        Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$a;,
        Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/yelp/android/serializable/f;",
        ">",
        "Lcom/yelp/android/ui/activities/support/YelpActivity;",
        "Lcom/yelp/android/ui/activities/nearby/ComboListFragment$a",
        "<TT;>;",
        "Lcom/yelp/android/ui/activities/nearby/ComboMapFragment$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/nearby/ComboMapFragment",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected b:Z

.field private c:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/support/v4/view/ViewPager;

.field private f:Z

.field private g:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity",
            "<TT;>.b;"
        }
    .end annotation
.end field

.field private h:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity",
            "<TT;>.a;"
        }
    .end annotation
.end field

.field private i:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity",
            "<TT;>.c;"
        }
    .end annotation
.end field

.field private j:Landroid/view/View;

.field private k:Z

.field private l:Lcom/yelp/android/ui/panels/PanelLoading;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->f:Z

    .line 54
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->k:Z

    .line 341
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->g:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->c:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->j:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected abstract a(I)Lcom/yelp/android/ui/util/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yelp/android/ui/util/w",
            "<*>;"
        }
    .end annotation
.end method

.method protected abstract a(Lcom/yelp/android/serializable/f;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public a(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/nearby/ComboListFragment",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->k:Z

    if-nez v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->h()V

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->k:Z

    .line 233
    :cond_0
    return-void
.end method

.method protected abstract a(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/nearby/ComboListFragment",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method protected b(I)V
    .locals 2

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->l()Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_0

    .line 285
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->f:Z

    if-eqz v1, :cond_1

    .line 286
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->i()V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->j()V

    goto :goto_0
.end method

.method protected abstract b(Lcom/yelp/android/serializable/f;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public b(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/nearby/ComboListFragment",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 250
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->f()I

    move-result v0

    .line 251
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->c:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->setTopThreshold(I)V

    .line 252
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->c:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    sub-int v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->setBottomThreshold(I)V

    .line 254
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->f:Z

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->c:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->a()V

    .line 260
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->g()I

    move-result v1

    sub-int/2addr v0, v1

    .line 261
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->j:Landroid/view/View;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a(I)V

    .line 265
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->l:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/PanelLoading;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->h()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 268
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->l:Lcom/yelp/android/ui/panels/PanelLoading;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/panels/PanelLoading;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->c:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->b()V

    goto :goto_0
.end method

.method public c(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;)Landroid/widget/ListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/nearby/ComboListFragment",
            "<TT;>;)",
            "Landroid/widget/ListAdapter;"
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a(I)Lcom/yelp/android/ui/util/w;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method protected g()I
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method public i()Lcom/yelp/android/ui/map/e$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/ui/map/e$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->h:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$a;

    return-object v0
.end method

.method public j()Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/ui/activities/nearby/ComboMapFragment",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    return-object v0
.end method

.method public k()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->e:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public l()Lcom/yelp/android/ui/activities/nearby/ComboListFragment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/ui/activities/nearby/ComboListFragment",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 204
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->i:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$c;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 212
    :goto_0
    return-object v0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->i:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$c;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->e:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$c;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    .line 209
    instance-of v2, v0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    if-eqz v2, :cond_1

    .line 210
    check-cast v0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 212
    goto :goto_0
.end method

.method public m()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->c:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    const v1, 0x459c4000    # 5000.0f

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->b(F)V

    .line 241
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->l:Lcom/yelp/android/ui/panels/PanelLoading;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 242
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->l:Lcom/yelp/android/ui/panels/PanelLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 246
    return-void
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 162
    instance-of v0, p1, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    if-eqz v0, :cond_1

    .line 163
    check-cast p1, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a(Lcom/yelp/android/ui/activities/nearby/ComboMapFragment$a;)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    instance-of v0, p1, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->g:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;

    if-nez v0, :cond_2

    .line 167
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;-><init>(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$1;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->g:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;

    :cond_2
    move-object v0, p1

    .line 169
    check-cast v0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->g:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a(Lcom/yelp/android/ui/activities/nearby/ComboListFragment$b;)V

    .line 170
    check-cast p1, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    invoke-virtual {p1, p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a(Lcom/yelp/android/ui/activities/nearby/ComboListFragment$a;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->f:Z

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->c:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    const v1, 0x459c4000    # 5000.0f

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->b(F)V

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f030090

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->setContentView(I)V

    .line 76
    if-eqz p1, :cond_0

    .line 77
    const-string/jumbo v0, "map_expanded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->f:Z

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->g:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;-><init>(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$1;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->g:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;

    .line 83
    :cond_1
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$a;

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$a;-><init>(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$1;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->h:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$a;

    .line 85
    const v0, 0x7f0f0281

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->c:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    .line 86
    const v0, 0x7f0f0282

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->e:Landroid/support/v4/view/ViewPager;

    .line 87
    const v0, 0x7f0f001f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->d:Landroid/widget/RelativeLayout;

    .line 88
    const v0, 0x7f0f0284

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->j:Landroid/view/View;

    .line 89
    const v0, 0x7f0f0283

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/PanelLoading;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->l:Lcom/yelp/android/ui/panels/PanelLoading;

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->j:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$1;-><init>(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 115
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$c;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$c;-><init>(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;Landroid/support/v4/app/l;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->i:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$c;

    .line 116
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->e:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->i:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$c;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/ac;)V

    .line 117
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->e:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$2;-><init>(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$e;)V

    .line 126
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->e:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$3;-><init>(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 136
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->c:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->g:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->setSlideFrameCallback(Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout$a;)V

    .line 137
    return-void
.end method

.method protected onResumeFragments()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .prologue
    .line 143
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResumeFragments()V

    .line 144
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "map_tag"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    .line 150
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a(Lcom/yelp/android/ui/activities/nearby/ComboMapFragment$a;)V

    .line 151
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f0f0280

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    const-string/jumbo v3, "map_tag"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/o;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 157
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 177
    const-string/jumbo v0, "map_expanded"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 178
    return-void
.end method
