.class public Lcom/yelp/android/ui/activities/profile/UserBizMediaGrid;
.super Lcom/yelp/android/ui/activities/ActivityMediaBrowser;
.source "UserBizMediaGrid.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/lang/String;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 6

    .prologue
    .line 28
    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/profile/UserBizMediaGrid;->a(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/List;Z)Landroid/content/Intent;

    move-result-object v0

    .line 30
    const-class v1, Lcom/yelp/android/ui/activities/profile/UserBizMediaGrid;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 31
    const-string/jumbo v1, "extra.user"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 32
    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/appdata/webrequests/MediaRequest;",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/Media;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p1, p2, p3, p4}, Lcom/yelp/android/ui/activities/profile/UserBizMediaViewer;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x404

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/UserBizMediaGrid;->startActivityForResult(Landroid/content/Intent;I)V

    .line 52
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserBizMediaGrid;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserBizMediaGrid;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "extra.user"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v0

    return v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ProfileBizPhotosGrid:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserBizMediaGrid;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 37
    const v0, 0x7f0c0408

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 38
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
