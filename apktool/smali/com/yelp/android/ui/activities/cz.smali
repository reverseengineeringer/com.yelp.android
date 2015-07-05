.class final Lcom/yelp/android/ui/activities/cz;
.super Ljava/lang/Object;
.source "ActivityMediaBrowser.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;


# direct methods
.method private constructor <init>(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/yelp/android/ui/activities/cz;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;Lcom/yelp/android/ui/activities/cr;)V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/cz;-><init>(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    .prologue
    .line 321
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    div-int/lit8 v1, p4, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/cz;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->c(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/cz;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->c(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->isFetching()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cz;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->c(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/cz;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->e(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 324
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cz;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->c(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cz;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/cz;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->c(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v1

    mul-int/lit8 v2, p3, 0x2

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->next(I)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->a(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;Lcom/yelp/android/appdata/webrequests/MediaRequest;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cz;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->c(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cz;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/cz;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->c(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->retry()Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->a(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;Lcom/yelp/android/appdata/webrequests/MediaRequest;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    goto :goto_0

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cz;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->c(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 337
    return-void
.end method
