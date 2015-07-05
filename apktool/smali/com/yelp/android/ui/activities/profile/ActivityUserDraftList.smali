.class public Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;
.super Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;
.source "ActivityUserDraftList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity",
        "<",
        "Lcom/yelp/android/serializable/ReviewDraftFeedEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f0703bd

    return v0
.end method

.method public a(II)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/yelp/android/appdata/webrequests/go;

    invoke-direct {v0, p0, p2, p1}, Lcom/yelp/android/appdata/webrequests/go;-><init>(Lcom/yelp/android/appdata/webrequests/m;II)V

    .line 37
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/go;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 38
    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ProfileDrafts:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f0703bc

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->setTitle(I)V

    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->b:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->registerForContextMenu(Landroid/view/View;)V

    .line 27
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 45
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->b:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewDraftFeedEntry;

    .line 48
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewDraftFeedEntry;->getBusinessName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 50
    const v1, 0x7f0703d1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 51
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewDraftFeedEntry;->getBusinessId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 53
    const v1, 0x7f070282

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 54
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewDraftFeedEntry;->getBusinessId()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewState;->DRAFTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    sget-object v3, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->ProfileReviewDrafts:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-static {p0, v0, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/ui/activities/reviews/ReviewState;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 56
    return-void
.end method
