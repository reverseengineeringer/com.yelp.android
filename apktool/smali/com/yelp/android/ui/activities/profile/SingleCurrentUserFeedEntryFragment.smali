.class public abstract Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;
.super Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;
.source "SingleCurrentUserFeedEntryFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ObjectType:",
        "Lcom/yelp/android/serializable/FeedEntry;",
        ">",
        "Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;"
    }
.end annotation


# instance fields
.field protected c:Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;"
        }
    .end annotation
.end field

.field protected d:I

.field protected e:Lcom/yelp/android/serializable/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;-><init>()V

    .line 27
    return-void
.end method

.method private static a(Lcom/yelp/android/serializable/User;ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "objects_total"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    const-string/jumbo v0, "user"

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 45
    return-void
.end method

.method public static a(Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;Lcom/yelp/android/serializable/User;I)V
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    invoke-static {p1, p2, v0}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->a(Lcom/yelp/android/serializable/User;ILandroid/os/Bundle;)V

    .line 40
    :goto_0
    return-void

    .line 36
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    invoke-static {p1, p2, v0}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->a(Lcom/yelp/android/serializable/User;ILandroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public b()V
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->r()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 90
    :cond_0
    return-void
.end method

.method protected c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TObjectType;>;)V"
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->a(Ljava/util/List;)V

    .line 100
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->d:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->a(Z)V

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->j()V

    .line 104
    return-void
.end method

.method protected abstract g()I
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->r()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->e:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->ME:Lcom/yelp/android/ui/activities/feed/FeedType;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedType;)V

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->b(Ljava/util/List;)V

    .line 67
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->r()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->r()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->d:I

    if-ge v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->d:I

    if-nez v0, :cond_3

    .line 68
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->a(Z)V

    .line 69
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->d:I

    if-nez v0, :cond_3

    .line 70
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_FEED_ITEMS:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 71
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->y()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setText(I)V

    .line 75
    :cond_3
    return-void

    .line 60
    :cond_4
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->USER:Lcom/yelp/android/ui/activities/feed/FeedType;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "objects_total"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->d:I

    .line 51
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->e:Lcom/yelp/android/serializable/User;

    .line 52
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->onDetach()V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;->b(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 83
    return-void
.end method
