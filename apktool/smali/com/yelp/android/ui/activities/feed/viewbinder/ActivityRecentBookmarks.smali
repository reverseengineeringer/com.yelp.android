.class public Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityRecentBookmarks.java"


# instance fields
.field private a:Lcom/yelp/android/ui/activities/feed/viewbinder/s;

.field private b:Lcom/yelp/android/util/c;

.field private c:Lcom/yelp/android/serializable/YelpBusiness;

.field private final d:Lcom/yelp/android/util/c$a;

.field private final e:Lcom/yelp/android/ui/activities/feed/viewbinder/s$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 97
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks$1;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->d:Lcom/yelp/android/util/c$a;

    .line 111
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks$2;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->e:Lcom/yelp/android/ui/activities/feed/viewbinder/s$a;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;",
            "Lcom/yelp/android/serializable/User;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    const-string/jumbo v1, "businesses"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 40
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 41
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->c:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->c:Lcom/yelp/android/serializable/YelpBusiness;

    return-object p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;)Lcom/yelp/android/ui/activities/feed/viewbinder/s;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/s;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;)Lcom/yelp/android/util/c;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->b:Lcom/yelp/android/util/c;

    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->b:Lcom/yelp/android/util/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->c:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, p1, p2, v1}, Lcom/yelp/android/util/c;->a(IILcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->c:Lcom/yelp/android/serializable/YelpBusiness;

    .line 90
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    if-eqz p1, :cond_0

    .line 48
    const-string/jumbo v0, "business_to_bookmark"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->c:Lcom/yelp/android/serializable/YelpBusiness;

    .line 50
    :cond_0
    const v1, 0x7f070631

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "user"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->Z()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "businesses"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/yelp/android/util/c;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->d:Lcom/yelp/android/util/c$a;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->c:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v1, p0, v2, v3}, Lcom/yelp/android/util/c;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/yelp/android/util/c$a;Lcom/yelp/android/serializable/YelpBusiness;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->b:Lcom/yelp/android/util/c;

    .line 57
    new-instance v1, Lcom/yelp/android/ui/activities/feed/viewbinder/s;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->e:Lcom/yelp/android/ui/activities/feed/viewbinder/s$a;

    invoke-direct {v1, v2}, Lcom/yelp/android/ui/activities/feed/viewbinder/s;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/s$a;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/s;

    .line 58
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/s;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/s;->a(Ljava/util/List;)V

    .line 59
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/s;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 61
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onPause()V

    .line 74
    const-string/jumbo v0, "add_bookmark"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->b:Lcom/yelp/android/util/c;

    invoke-virtual {v1}, Lcom/yelp/android/util/c;->a()Lcom/yelp/android/appdata/webrequests/h;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 75
    const-string/jumbo v0, "remove_bookmark"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->b:Lcom/yelp/android/util/c;

    invoke-virtual {v1}, Lcom/yelp/android/util/c;->b()Lcom/yelp/android/appdata/webrequests/dk;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 76
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onResume()V

    .line 66
    const-string/jumbo v0, "remove_bookmark"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->b:Lcom/yelp/android/util/c;

    invoke-virtual {v1}, Lcom/yelp/android/util/c;->d()Lcom/yelp/android/appdata/webrequests/core/c$a;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 68
    const-string/jumbo v0, "add_bookmark"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->b:Lcom/yelp/android/util/c;

    invoke-virtual {v1}, Lcom/yelp/android/util/c;->c()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 69
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 81
    const-string/jumbo v0, "business_to_bookmark"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->c:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 82
    return-void
.end method
