.class public abstract Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityAbstractReviewPager.java"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

.field protected e:Lcom/yelp/android/ui/widgets/ah;

.field private f:Ljava/lang/String;

.field private g:Lcom/yelp/android/appdata/webrequests/ey;

.field private h:Z

.field private i:I

.field private j:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ez;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 311
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/f;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/f;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->j:Lcom/yelp/android/appdata/webrequests/m;

    return-void
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IZLjava/lang/Class;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;IZ",
            "Ljava/lang/Class",
            "<+",
            "Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    const-string/jumbo v0, "business_name"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string/jumbo v0, "business_id"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string/jumbo v0, "business_country"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    add-int/lit8 v0, p5, 0xa

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-le v0, v2, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    .line 85
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p4, p5, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    const-string/jumbo v0, "reviews_extra"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 89
    const-string/jumbo v0, "review_index"

    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    const-string/jumbo v0, "hide_view_biz_button"

    invoke-virtual {v1, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    return-object v1

    .line 83
    :cond_0
    add-int/lit8 v0, p5, 0xa

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected a(ZI)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v0, 0xa

    .line 283
    if-eqz p1, :cond_0

    .line 295
    :goto_0
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 286
    :cond_0
    add-int/lit8 v1, p2, -0xa

    if-lez v1, :cond_1

    .line 290
    add-int/lit8 v1, p2, -0xa

    add-int/lit8 p2, v1, 0x1

    goto :goto_0

    .line 292
    :cond_1
    add-int/lit8 v0, p2, 0x1

    .line 293
    const/4 p2, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2

    .prologue
    .line 268
    invoke-virtual {p1, p0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    .line 269
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->d:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a()V

    .line 270
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->disableLoading()V

    .line 271
    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->d:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Ljava/util/List;)V

    .line 276
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->supportInvalidateOptionsMenu()V

    .line 277
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->disableLoading()V

    .line 278
    return-void
.end method

.method protected abstract b()Lcom/yelp/android/ui/widgets/ah;
.end method

.method protected c()Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->d:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->c()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->c()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected e()Z
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->g:Lcom/yelp/android/appdata/webrequests/ey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->g:Lcom/yelp/android/appdata/webrequests/ey;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ey;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessReviewsBrowse:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/analytics/g;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequestIdForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->g:Lcom/yelp/android/appdata/webrequests/ey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->g:Lcom/yelp/android/appdata/webrequests/ey;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ey;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->g:Lcom/yelp/android/appdata/webrequests/ey;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ey;->getRequestId()Ljava/lang/String;

    move-result-object v0

    .line 253
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 98
    const-string/jumbo v1, "business_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->a:Ljava/lang/String;

    .line 99
    const-string/jumbo v1, "business_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->b:Ljava/lang/String;

    .line 100
    const-string/jumbo v1, "business_country"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->f:Ljava/lang/String;

    .line 102
    if-eqz p1, :cond_0

    .line 103
    const-string/jumbo v1, "business_reviews"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->c:Ljava/util/ArrayList;

    .line 113
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->b()Lcom/yelp/android/ui/widgets/ah;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->e:Lcom/yelp/android/ui/widgets/ah;

    .line 115
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    const-string/jumbo v1, "hide_view_biz_button"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->h:Z

    .line 117
    return-void

    .line 105
    :cond_0
    const-string/jumbo v1, "reviews_extra"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    const-string/jumbo v1, "reviews_extra"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->c:Ljava/util/ArrayList;

    .line 107
    const-string/jumbo v1, "review_index"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->i:I

    goto :goto_0

    .line 109
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->c:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 164
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10001d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 165
    const v0, 0x7f0c03c9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->a:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 191
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 174
    :pswitch_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->a:Ljava/lang/String;

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->ReviewDetailsEdit:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-static {p0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 178
    :pswitch_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->a:Ljava/lang/String;

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->ReviewDetailsUpdate:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-static {p0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->c(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 182
    :pswitch_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->c()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->f:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusinessReview;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 184
    const v2, 0x7f07063f

    const v3, 0x7f07035e

    invoke-static {p0, v2, v3, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0511
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 158
    const-string/jumbo v0, "single_review"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->g:Lcom/yelp/android/appdata/webrequests/ey;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 159
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "tag_review_pager"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->d:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->d:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->c:Ljava/util/ArrayList;

    iget v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->i:I

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->a()I

    move-result v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Ljava/lang/String;Ljava/util/ArrayList;IILjava/lang/String;)Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->d:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    .line 131
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0c01d4

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->d:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    const-string/jumbo v3, "tag_review_pager"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->d:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->b()Lcom/yelp/android/ui/widgets/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ah;)V

    .line 139
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->supportInvalidateOptionsMenu()V

    .line 140
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8

    .prologue
    const v7, 0x7f0c0513

    const v6, 0x7f0c0512

    const v5, 0x7f0c0511

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 199
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 230
    :goto_0
    return v0

    .line 206
    :cond_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->d:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    if-eqz v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->d:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-virtual {v2}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v2

    .line 208
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v3

    .line 209
    if-eqz v2, :cond_3

    .line 210
    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yelp/android/appdata/webrequests/dc;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 211
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusinessReview;->isUpdatableByCurrentUser()Z

    move-result v2

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 213
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 214
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 226
    :goto_1
    const v2, 0x7f0c03c9

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 227
    iget-boolean v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->h:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->d:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-virtual {v3}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v3

    if-eqz v3, :cond_4

    :goto_2
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 230
    :cond_1
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    .line 216
    :cond_2
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 217
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 218
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 221
    :cond_3
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 222
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 223
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_4
    move v0, v1

    .line 227
    goto :goto_2
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 144
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->d:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->e()V

    .line 146
    const-string/jumbo v0, "single_review"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->g:Lcom/yelp/android/appdata/webrequests/ey;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->j:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ey;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->g:Lcom/yelp/android/appdata/webrequests/ey;

    .line 147
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 152
    const-string/jumbo v0, "business_reviews"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 153
    return-void
.end method
