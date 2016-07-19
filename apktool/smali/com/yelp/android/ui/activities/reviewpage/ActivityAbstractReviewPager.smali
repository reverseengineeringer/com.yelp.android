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

.field protected e:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$b;

.field private f:Ljava/lang/String;

.field private g:Lcom/yelp/android/appdata/webrequests/dy;

.field private h:Lcom/yelp/android/appdata/webrequests/dt;

.field private i:Lcom/yelp/android/serializable/YelpBusinessReview;

.field private j:Z

.field private k:I

.field private l:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/dy$a;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/ReviewDeleteResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcom/yelp/android/ui/dialogs/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 392
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager$1;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->l:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 406
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager$2;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->m:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 444
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager$3;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->n:Lcom/yelp/android/ui/dialogs/b;

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
    .line 99
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    const-string/jumbo v0, "business_name"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string/jumbo v0, "business_id"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string/jumbo v0, "business_country"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    add-int/lit8 v0, p5, 0xa

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-le v0, v2, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    .line 108
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p4, p5, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 111
    const-string/jumbo v0, "reviews_extra"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 112
    const-string/jumbo v0, "review_index"

    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    const-string/jumbo v0, "hide_view_biz_button"

    invoke-virtual {v1, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    return-object v1

    .line 104
    :cond_0
    add-int/lit8 v0, p5, 0xa

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;)Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 1

    .prologue
    .line 118
    const-string/jumbo v0, "deleted_review"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;)Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->i:Lcom/yelp/android/serializable/YelpBusinessReview;

    return-object v0
.end method

.method public static b(Landroid/content/Intent;)Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 1

    .prologue
    .line 122
    const-string/jumbo v0, "previous_review"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    return-object v0
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

    .line 364
    if-eqz p1, :cond_0

    .line 376
    :goto_0
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 367
    :cond_0
    add-int/lit8 v1, p2, -0xa

    if-lez v1, :cond_1

    .line 371
    add-int/lit8 v1, p2, -0xa

    add-int/lit8 p2, v1, 0x1

    goto :goto_0

    .line 373
    :cond_1
    add-int/lit8 v0, p2, 0x1

    .line 374
    const/4 p2, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2

    .prologue
    .line 349
    invoke-virtual {p1, p0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 350
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->d:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a()V

    .line 351
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->disableLoading()V

    .line 352
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusinessReview;)V
    .locals 3

    .prologue
    .line 303
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->i:Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 304
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dt;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->m:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/dt;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->h:Lcom/yelp/android/appdata/webrequests/dt;

    .line 305
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->showLoadingDialog()V

    .line 306
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->h:Lcom/yelp/android/appdata/webrequests/dt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dt;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 307
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
    .line 355
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->d:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Ljava/util/List;)V

    .line 357
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->supportInvalidateOptionsMenu()V

    .line 358
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->disableLoading()V

    .line 359
    return-void
.end method

.method protected abstract b()Lcom/yelp/android/ui/widgets/ReviewPagerFragment$b;
.end method

.method protected c()Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->d:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->c()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->c()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected e()Z
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->g:Lcom/yelp/android/appdata/webrequests/dy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->g:Lcom/yelp/android/appdata/webrequests/dy;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dy;->u()Z

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
    .line 316
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessReviewsBrowse:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/analytics/g;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 326
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequestIdForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->g:Lcom/yelp/android/appdata/webrequests/dy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->g:Lcom/yelp/android/appdata/webrequests/dy;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dy;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->g:Lcom/yelp/android/appdata/webrequests/dy;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dy;->i_()Ljava/lang/String;

    move-result-object v0

    .line 334
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

    .line 127
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 129
    const-string/jumbo v1, "business_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->a:Ljava/lang/String;

    .line 130
    const-string/jumbo v1, "business_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->b:Ljava/lang/String;

    .line 131
    const-string/jumbo v1, "business_country"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->f:Ljava/lang/String;

    .line 133
    if-eqz p1, :cond_0

    .line 134
    const-string/jumbo v1, "business_reviews"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->c:Ljava/util/ArrayList;

    .line 144
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->b()Lcom/yelp/android/ui/widgets/ReviewPagerFragment$b;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->e:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$b;

    .line 146
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    const-string/jumbo v1, "hide_view_biz_button"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->j:Z

    .line 148
    return-void

    .line 136
    :cond_0
    const-string/jumbo v1, "reviews_extra"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    const-string/jumbo v1, "reviews_extra"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->c:Ljava/util/ArrayList;

    .line 138
    const-string/jumbo v1, "review_index"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->k:I

    goto :goto_0

    .line 140
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->c:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 311
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 206
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100021

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 207
    const v0, 0x7f0f04ad

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->a:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 214
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 246
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 216
    :pswitch_0
    new-instance v1, Lcom/yelp/android/services/ReviewShareFormatter;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->c()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yelp/android/services/ReviewShareFormatter;-><init>(Lcom/yelp/android/serializable/YelpBusinessReview;)V

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->showShareSheet(Lcom/yelp/android/services/ShareFormatter;)V

    goto :goto_0

    .line 219
    :pswitch_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->a:Ljava/lang/String;

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->ReviewDetailsEdit:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-static {p0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 224
    :pswitch_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->c()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->n:Lcom/yelp/android/ui/dialogs/b;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/dialogs/DeleteReviewDialog;->a(Lcom/yelp/android/serializable/YelpBusinessReview;Lcom/yelp/android/ui/dialogs/b;)Lcom/yelp/android/ui/dialogs/DeleteReviewDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v2

    const-string/jumbo v3, "delete_review_dialog"

    invoke-virtual {v1, v2, v3}, Lcom/yelp/android/ui/dialogs/DeleteReviewDialog;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :pswitch_3
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->a:Ljava/lang/String;

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->ReviewDetailsUpdate:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-static {p0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->c(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 233
    :pswitch_4
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->c()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->f:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusinessReview;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 236
    const v2, 0x7f070209

    const v3, 0x7f07039a

    invoke-static {p0, v2, v3, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f061a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 199
    const-string/jumbo v0, "single_review"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->g:Lcom/yelp/android/appdata/webrequests/dy;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 200
    const-string/jumbo v0, "delete_review"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->h:Lcom/yelp/android/appdata/webrequests/dt;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 201
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "tag_review_pager"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->d:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->d:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->c:Ljava/util/ArrayList;

    iget v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->k:I

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->a()I

    move-result v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Ljava/lang/String;Ljava/util/ArrayList;IILjava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->d:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    .line 170
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f0f020d

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->d:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    const-string/jumbo v3, "tag_review_pager"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/o;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->d:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->b()Lcom/yelp/android/ui/widgets/ReviewPagerFragment$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment$b;)V

    .line 178
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->supportInvalidateOptionsMenu()V

    .line 179
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8

    .prologue
    const v7, 0x7f0f061d

    const v6, 0x7f0f061c

    const v5, 0x7f0f061b

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 299
    :goto_0
    return v0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->d:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->d:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v3

    .line 263
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    .line 264
    if-eqz v3, :cond_4

    .line 265
    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusinessReview;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yelp/android/appdata/webrequests/co;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 266
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusinessReview;->q()Z

    move-result v4

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 268
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 269
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusinessReview;->f()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 270
    const v0, 0x7f0f061e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 285
    :goto_2
    const v0, 0x7f0f04ad

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 286
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->j:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->d:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 288
    :goto_3
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 290
    const v4, 0x7f0f061a

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 291
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusinessReview;->H()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    move v3, v1

    .line 293
    :goto_4
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 294
    if-eqz v0, :cond_7

    :goto_5
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 299
    :cond_1
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 269
    goto :goto_1

    .line 272
    :cond_3
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 273
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 274
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 275
    const v0, 0x7f0f061e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 278
    :cond_4
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 279
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 280
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 281
    const v0, 0x7f0f061e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 282
    const v0, 0x7f0f061a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_5
    move v0, v2

    .line 286
    goto :goto_3

    :cond_6
    move v3, v2

    .line 291
    goto :goto_4

    :cond_7
    move v2, v1

    .line 294
    goto :goto_5
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 183
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->d:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->f()V

    .line 185
    const-string/jumbo v0, "single_review"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->g:Lcom/yelp/android/appdata/webrequests/dy;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->l:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/dy;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->g:Lcom/yelp/android/appdata/webrequests/dy;

    .line 186
    const-string/jumbo v0, "delete_review"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->h:Lcom/yelp/android/appdata/webrequests/dt;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->m:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/dt;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->h:Lcom/yelp/android/appdata/webrequests/dt;

    .line 188
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 193
    const-string/jumbo v0, "business_reviews"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 194
    return-void
.end method
