.class public abstract Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ComboMapListActivity.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/nearby/h;
.implements Lcom/yelp/android/ui/activities/nearby/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/yelp/android/serializable/by;",
        ">",
        "Lcom/yelp/android/ui/activities/support/YelpActivity;",
        "Lcom/yelp/android/ui/activities/nearby/h",
        "<TT;>;",
        "Lcom/yelp/android/ui/activities/nearby/l",
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

.field private g:Lcom/yelp/android/ui/activities/nearby/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity",
            "<TT;>.com/yelp/android/ui/activities/nearby/q;"
        }
    .end annotation
.end field

.field private h:Lcom/yelp/android/ui/activities/nearby/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity",
            "<TT;>.com/yelp/android/ui/activities/nearby/p;"
        }
    .end annotation
.end field

.field private i:Lcom/yelp/android/ui/activities/nearby/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity",
            "<TT;>.com/yelp/android/ui/activities/nearby/r;"
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

    .line 38
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->f:Z

    .line 53
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->k:Z

    .line 334
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Lcom/yelp/android/ui/activities/nearby/q;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->g:Lcom/yelp/android/ui/activities/nearby/q;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->c:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->j:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected abstract a(I)Lcom/yelp/android/ui/util/au;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yelp/android/ui/util/au",
            "<*>;"
        }
    .end annotation
.end method

.method protected abstract a(Lcom/yelp/android/serializable/by;)V
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
    .line 220
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->k:Z

    if-nez v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->h()V

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->k:Z

    .line 224
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
    .line 276
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->l()Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_0

    .line 278
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->f:Z

    if-eqz v1, :cond_1

    .line 279
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->h()V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->i()V

    goto :goto_0
.end method

.method protected abstract b(Lcom/yelp/android/serializable/by;)V
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
    .line 243
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->e()I

    move-result v0

    .line 244
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->c:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->setTopThreshold(I)V

    .line 245
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->c:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    sub-int v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->setBottomThreshold(I)V

    .line 247
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->f:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->c:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->a()V

    .line 253
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->f()I

    move-result v1

    sub-int/2addr v0, v1

    .line 254
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->j:Landroid/view/View;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a(I)V

    .line 257
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->l:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/PanelLoading;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->g()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 260
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->l:Lcom/yelp/android/ui/panels/PanelLoading;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/panels/PanelLoading;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    return-void

    .line 250
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
    .line 266
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a(I)Lcom/yelp/android/ui/util/au;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method protected g()I
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x1

    return v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public i()Lcom/yelp/android/ui/map/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/ui/map/f",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->h:Lcom/yelp/android/ui/activities/nearby/p;

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
    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    return-object v0
.end method

.method public k()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 191
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

    .line 195
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->i:Lcom/yelp/android/ui/activities/nearby/r;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 203
    :goto_0
    return-object v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->i:Lcom/yelp/android/ui/activities/nearby/r;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->e:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/ui/activities/nearby/r;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    .line 200
    instance-of v2, v0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    if-eqz v2, :cond_1

    .line 201
    check-cast v0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 203
    goto :goto_0
.end method

.method public m()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->c:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    const v1, 0x459c4000    # 5000.0f

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->b(F)V

    .line 234
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->l:Lcom/yelp/android/ui/panels/PanelLoading;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 235
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->l:Lcom/yelp/android/ui/panels/PanelLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 239
    return-void
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 153
    instance-of v0, p1, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    if-eqz v0, :cond_1

    .line 154
    check-cast p1, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    .line 155
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a(Lcom/yelp/android/ui/activities/nearby/l;)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    instance-of v0, p1, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->g:Lcom/yelp/android/ui/activities/nearby/q;

    if-nez v0, :cond_2

    .line 158
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/nearby/q;-><init>(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;Lcom/yelp/android/ui/activities/nearby/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->g:Lcom/yelp/android/ui/activities/nearby/q;

    :cond_2
    move-object v0, p1

    .line 160
    check-cast v0, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->g:Lcom/yelp/android/ui/activities/nearby/q;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a(Lcom/yelp/android/ui/activities/nearby/i;)V

    .line 161
    check-cast p1, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    invoke-virtual {p1, p0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a(Lcom/yelp/android/ui/activities/nearby/h;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->f:Z

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->c:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    const v1, 0x459c4000    # 5000.0f

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->b(F)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f030087

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->setContentView(I)V

    .line 75
    if-eqz p1, :cond_0

    .line 76
    const-string/jumbo v0, "map_expanded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->f:Z

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->g:Lcom/yelp/android/ui/activities/nearby/q;

    if-nez v0, :cond_1

    .line 80
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/q;

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/nearby/q;-><init>(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;Lcom/yelp/android/ui/activities/nearby/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->g:Lcom/yelp/android/ui/activities/nearby/q;

    .line 82
    :cond_1
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/p;

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/nearby/p;-><init>(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;Lcom/yelp/android/ui/activities/nearby/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->h:Lcom/yelp/android/ui/activities/nearby/p;

    .line 84
    const v0, 0x7f0c023a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->c:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    .line 85
    const v0, 0x7f0c023b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->e:Landroid/support/v4/view/ViewPager;

    .line 86
    const v0, 0x7f0c001d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->d:Landroid/widget/RelativeLayout;

    .line 87
    const v0, 0x7f0c023d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->j:Landroid/view/View;

    .line 88
    const v0, 0x7f0c023c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/PanelLoading;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->l:Lcom/yelp/android/ui/panels/PanelLoading;

    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->j:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/nearby/m;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/nearby/m;-><init>(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 112
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/r;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/nearby/r;-><init>(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->i:Lcom/yelp/android/ui/activities/nearby/r;

    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->e:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->i:Lcom/yelp/android/ui/activities/nearby/r;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bo;)V

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->e:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/yelp/android/ui/activities/nearby/n;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/nearby/n;-><init>(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/du;)V

    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->e:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/yelp/android/ui/activities/nearby/o;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/nearby/o;-><init>(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->c:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->g:Lcom/yelp/android/ui/activities/nearby/q;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->setSlideFrameCallback(Lcom/yelp/android/ui/activities/nearby/f;)V

    .line 132
    return-void
.end method

.method protected onResumeFragments()V
    .locals 4

    .prologue
    .line 136
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResumeFragments()V

    .line 137
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "map_tag"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    .line 140
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a(Lcom/yelp/android/ui/activities/nearby/l;)V

    .line 143
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0c0239

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    const-string/jumbo v3, "map_tag"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 148
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 168
    const-string/jumbo v0, "map_expanded"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    return-void
.end method
