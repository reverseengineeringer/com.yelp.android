.class public abstract Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "UserBadgeList.java"


# instance fields
.field private a:Lcom/yelp/android/ui/activities/reviewpage/f;

.field private b:Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<",
            "Ljava/lang/Void;",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Intent;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/yelp/android/serializable/DisplayableAsUserBadge;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 33
    const-string/jumbo v0, "pre_populated"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 34
    return-object p0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    return-object p1
.end method


# virtual methods
.method public abstract a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<",
            "Ljava/lang/Void;",
            "**>;)",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<",
            "Ljava/lang/Void;",
            "**>;"
        }
    .end annotation
.end method

.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 107
    instance-of v1, v0, Lcom/yelp/android/serializable/DisplayableAsUserBadge;

    if-eqz v1, :cond_0

    .line 108
    check-cast v0, Lcom/yelp/android/serializable/DisplayableAsUserBadge;

    invoke-interface {v0}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->startActivity(Landroid/content/Intent;)V

    .line 112
    :cond_0
    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/DisplayableAsUserBadge;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->a:Lcom/yelp/android/ui/activities/reviewpage/f;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/f;->a(Ljava/util/Collection;)V

    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->a:Lcom/yelp/android/ui/activities/reviewpage/f;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/f;->notifyDataSetChanged()V

    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->a:Lcom/yelp/android/ui/activities/reviewpage/f;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/f;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const v0, 0x7f0700bf

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 75
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->finish()V

    .line 77
    :cond_0
    return-void
.end method

.method public b()Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    return-object v0
.end method

.method public f()Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;"
        }
    .end annotation

    .prologue
    .line 95
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiRequest;

    return-object v0
.end method

.method public synthetic getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->f()Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 42
    invoke-static {p1}, Lcom/yelp/android/ui/activities/reviewpage/f;->b(Landroid/os/Bundle;)Lcom/yelp/android/ui/activities/reviewpage/f;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->a:Lcom/yelp/android/ui/activities/reviewpage/f;

    .line 43
    const-string/jumbo v1, "pre_populated"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->a:Lcom/yelp/android/ui/activities/reviewpage/f;

    if-nez v2, :cond_0

    .line 46
    new-instance v2, Lcom/yelp/android/ui/activities/reviewpage/f;

    invoke-direct {v2}, Lcom/yelp/android/ui/activities/reviewpage/f;-><init>()V

    iput-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->a:Lcom/yelp/android/ui/activities/reviewpage/f;

    .line 47
    if-eqz v1, :cond_0

    .line 48
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->a:Lcom/yelp/android/ui/activities/reviewpage/f;

    invoke-virtual {v2, v1}, Lcom/yelp/android/ui/activities/reviewpage/f;->a(Ljava/util/Collection;)V

    .line 52
    :cond_0
    const-string/jumbo v2, "title_res"

    const v3, 0x7f0704a6

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->setTitle(I)V

    .line 54
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->a:Lcom/yelp/android/ui/activities/reviewpage/f;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    new-instance v2, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList$1;

    invoke-direct {v2, p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList$1;-><init>(Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnLoadNeeded(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method

.method public synthetic onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->b()Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->a:Lcom/yelp/android/ui/activities/reviewpage/f;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/f;->a(Landroid/os/Bundle;)V

    .line 102
    return-void
.end method
