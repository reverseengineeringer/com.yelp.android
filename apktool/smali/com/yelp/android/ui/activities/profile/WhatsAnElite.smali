.class public Lcom/yelp/android/ui/activities/profile/WhatsAnElite;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "WhatsAnElite.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 87
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/profile/WhatsAnElite;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    const-string/jumbo v1, "extra.user"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 41
    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->WhatsAnElite:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/WhatsAnElite;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const v6, 0x7f070583

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 46
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/WhatsAnElite;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 48
    const v1, 0x7f070582

    .line 49
    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->isEliteUser()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    const v1, 0x7f070581

    .line 52
    :cond_0
    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getFirstName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/profile/WhatsAnElite;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/profile/WhatsAnElite;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    new-instance v1, Lcom/yelp/android/ui/util/bs;

    invoke-direct {v1}, Lcom/yelp/android/ui/util/bs;-><init>()V

    .line 74
    new-instance v2, Lcom/yelp/android/ui/activities/profile/af;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getYearsElite()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yelp/android/ui/activities/profile/af;-><init>(Ljava/util/List;)V

    .line 75
    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getFirstName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v6, v3}, Lcom/yelp/android/ui/activities/profile/WhatsAnElite;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    const v2, 0x7f01015e

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/bw;->a(I)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    const v2, 0x7f0c001d

    sget v3, Lcom/yelp/android/appdata/ao;->c:I

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {v0, v2, v4, v3}, Lcom/yelp/android/ui/util/bw;->a(III)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 83
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/WhatsAnElite;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/WhatsAnElite;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 85
    return-void
.end method
