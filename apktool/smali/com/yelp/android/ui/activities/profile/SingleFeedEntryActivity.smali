.class public abstract Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "SingleFeedEntryActivity.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;
.implements Lcom/yelp/android/ui/activities/feed/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ObjectType:",
        "Lcom/yelp/android/serializable/FeedEntry;",
        ">",
        "Lcom/yelp/android/ui/activities/support/YelpActivity;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Ljava/util/List",
        "<TObjectType;>;>;",
        "Lcom/yelp/android/ui/activities/feed/u;"
    }
.end annotation


# instance fields
.field private a:I

.field protected b:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

.field private c:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 71
    new-instance v0, Lcom/yelp/android/ui/activities/profile/r;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/r;-><init>(Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->c:Landroid/database/DataSetObserver;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity",
            "<*>;>;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    const-string/jumbo v1, "extra.total_feed_items"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;)Lcom/yelp/android/ui/panels/PanelError;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->getErrorPanel()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/List",
            "<TObjectType;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->b:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->e()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->b:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->f()Lcom/yelp/android/ui/activities/feed/aq;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->b:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->ME:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedType;)V

    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->b:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a(Lcom/yelp/android/ui/activities/feed/u;)V

    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->b:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->f()Lcom/yelp/android/ui/activities/feed/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->c:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/aq;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 59
    :cond_0
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->a(Ljava/util/List;)V

    .line 60
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->b:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->e()I

    move-result v0

    iget v1, p0, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->a:I

    if-lt v0, v1, :cond_2

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->b:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->disableLoading()V

    .line 64
    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TObjectType;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->b:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a(Ljava/util/List;)V

    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->b:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->setRetainInstance(Z)V

    .line 69
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f03004b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0c01b2

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->b:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    .line 42
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.total_feed_items"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->a:I

    .line 43
    const/16 v0, 0x14

    invoke-virtual {p0, v2, v0}, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->a(II)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 44
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method
