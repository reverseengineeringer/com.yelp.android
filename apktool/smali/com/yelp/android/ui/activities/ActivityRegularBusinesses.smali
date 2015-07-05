.class public Lcom/yelp/android/ui/activities/ActivityRegularBusinesses;
.super Lcom/yelp/android/ui/activities/ActivityCheckInsList;
.source "ActivityRegularBusinesses.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCheckInsList;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityRegularBusinesses;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 27
    return-object v0
.end method


# virtual methods
.method protected b_()Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<**",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v1, Lcom/yelp/android/appdata/webrequests/ef;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRegularBusinesses;->g()Lcom/yelp/android/serializable/User;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityRegularBusinesses;->b:Landroid/widget/SimpleAdapter;

    invoke-virtual {v2}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v2

    invoke-direct {v1, p0, v0, v2}, Lcom/yelp/android/appdata/webrequests/ef;-><init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;I)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRegularBusinesses;->g()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRegularBusinesses;->g()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getRegularCount()I

    move-result v0

    return v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->UserRankingsBusinesses:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRegularBusinesses;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRegularBusinesses;->g()Lcom/yelp/android/serializable/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 37
    :goto_0
    if-eqz v0, :cond_1

    .line 38
    const v0, 0x7f0703cd

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRegularBusinesses;->g()Lcom/yelp/android/serializable/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/User;->getFirstName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityRegularBusinesses;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRegularBusinesses;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    :goto_1
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRegularBusinesses;->g()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_1
    const v0, 0x7f0702f1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRegularBusinesses;->setTitle(I)V

    goto :goto_1
.end method
