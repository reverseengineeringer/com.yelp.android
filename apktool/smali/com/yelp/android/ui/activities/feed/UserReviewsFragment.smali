.class public Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;
.super Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;
.source "UserReviewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment",
        "<",
        "Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;-><init>()V

    .line 62
    new-instance v0, Lcom/yelp/android/ui/activities/feed/bt;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/bt;-><init>(Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;->g:Lcom/yelp/android/appdata/webrequests/m;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;)Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;->e:Lcom/yelp/android/serializable/User;

    return-object v0
.end method

.method public static a(Lcom/yelp/android/serializable/User;I)Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;-><init>()V

    .line 29
    invoke-static {v0, p0, p1}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->a(Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;Lcom/yelp/android/serializable/User;I)V

    .line 30
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;->c(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 45
    invoke-super {p0}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->b()V

    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/gy;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;->g:Lcom/yelp/android/appdata/webrequests/m;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;->e:Lcom/yelp/android/serializable/User;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;->p()I

    move-result v3

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;->q()I

    move-result v4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/gy;-><init>(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/serializable/User;IIZ)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 50
    :cond_1
    return-void
.end method

.method protected g()I
    .locals 1

    .prologue
    .line 59
    const v0, 0x7f0703c4

    return v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ProfileReviews:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;->e:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0703c3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070659

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;->e:Lcom/yelp/android/serializable/User;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/User;->getFirstName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
