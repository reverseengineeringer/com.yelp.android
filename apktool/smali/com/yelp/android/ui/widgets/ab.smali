.class Lcom/yelp/android/ui/widgets/ab;
.super Ljava/lang/Object;
.source "ReviewPagerFragment.java"

# interfaces
.implements Lcom/yelp/android/av/i;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/ab;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    .line 276
    check-cast p1, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;

    .line 277
    const/4 v1, 0x0

    .line 278
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ab;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 279
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    :goto_0
    new-instance v1, Lcom/yelp/android/util/ObjectDirtyEvent;

    const-string/jumbo v2, "com.yelp.android.review.update"

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ab;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 289
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 296
    check-cast p1, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;

    move v1, v2

    .line 297
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ab;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ab;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    :cond_0
    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ab;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Lcom/yelp/android/ui/widgets/ag;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/ag;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$LoadingFragment;

    if-eqz v0, :cond_1

    .line 305
    add-int/lit8 v1, v1, 0x1

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ab;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Lcom/yelp/android/ui/widgets/ag;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ab;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->c(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/yelp/android/ui/widgets/ag;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a()V

    .line 310
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    .line 311
    return-void

    .line 297
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 272
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/widgets/ab;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
