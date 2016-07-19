.class public Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityUserFollowing.java"


# instance fields
.field private a:Lcom/yelp/android/ui/util/ap;

.field private b:Lcom/yelp/android/appdata/webrequests/fg;

.field private c:I

.field private d:I

.field private e:Z

.field private final f:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/fg$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->d:I

    .line 114
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing$1;-><init>(Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->f:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->c:I

    return p1
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;)Lcom/yelp/android/ui/util/ap;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->a:Lcom/yelp/android/ui/util/ap;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->c:I

    return v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->d:I

    return p1
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->d:I

    return v0
.end method


# virtual methods
.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->a:Lcom/yelp/android/ui/util/ap;

    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/util/ap;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method

.method protected c()V
    .locals 3

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->e:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->a:Lcom/yelp/android/ui/util/ap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ap;->getCount()I

    move-result v0

    iget v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->d:I

    if-ge v0, v1, :cond_1

    .line 102
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->e:Z

    .line 103
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fg;

    iget v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->c:I

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->f:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/fg;-><init>(ILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->b:Lcom/yelp/android/appdata/webrequests/fg;

    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->b:Lcom/yelp/android/appdata/webrequests/fg;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fg;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 107
    :cond_1
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f0702e6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->setTitle(I)V

    .line 44
    if-eqz p1, :cond_0

    .line 45
    const-string/jumbo v0, "request_offset"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->c:I

    .line 46
    const-string/jumbo v0, "total"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->d:I

    .line 49
    :cond_0
    invoke-static {p1}, Lcom/yelp/android/ui/util/ap;->a(Landroid/os/Bundle;)Lcom/yelp/android/ui/util/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->a:Lcom/yelp/android/ui/util/ap;

    .line 50
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->a:Lcom/yelp/android/ui/util/ap;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 52
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->enableLoading()V

    .line 53
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->c()V

    .line 57
    :cond_1
    :goto_0
    return-void

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->a:Lcom/yelp/android/ui/util/ap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ap;->getCount()I

    move-result v0

    iget v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->d:I

    if-ne v0, v1, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->a()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onDestroy()V

    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->b:Lcom/yelp/android/appdata/webrequests/fg;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->b:Lcom/yelp/android/appdata/webrequests/fg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fg;->a(Z)V

    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->b:Lcom/yelp/android/appdata/webrequests/fg;

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/fg;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 89
    iput-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->b:Lcom/yelp/android/appdata/webrequests/fg;

    .line 91
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onPause()V

    .line 72
    const-string/jumbo v0, "user_following"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->b:Lcom/yelp/android/appdata/webrequests/fg;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 73
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 61
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onResume()V

    .line 62
    const-string/jumbo v0, "user_following"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->b:Lcom/yelp/android/appdata/webrequests/fg;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->f:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/fg;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->b:Lcom/yelp/android/appdata/webrequests/fg;

    .line 67
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 78
    const-string/jumbo v0, "request_offset"

    iget v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    const-string/jumbo v0, "total"

    iget v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->a:Lcom/yelp/android/ui/util/ap;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ap;->b(Landroid/os/Bundle;)V

    .line 81
    return-void
.end method
