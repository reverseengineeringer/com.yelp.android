.class public Lcom/yelp/android/ui/activities/profile/WhatsAnElite;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "WhatsAnElite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/profile/WhatsAnElite$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 96
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/profile/WhatsAnElite;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    const-string/jumbo v1, "extra.user"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 42
    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->WhatsAnElite:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/WhatsAnElite;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const v6, 0x7f07058b

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 47
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/WhatsAnElite;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 49
    const v1, 0x7f07058a

    .line 50
    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    const v1, 0x7f070589

    .line 53
    :cond_0
    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->Z()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/profile/WhatsAnElite;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/profile/WhatsAnElite;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    new-instance v1, Lcom/yelp/android/ui/util/aj;

    invoke-direct {v1}, Lcom/yelp/android/ui/util/aj;-><init>()V

    .line 83
    new-instance v2, Lcom/yelp/android/ui/activities/profile/WhatsAnElite$a;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->u()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yelp/android/ui/activities/profile/WhatsAnElite$a;-><init>(Ljava/util/List;)V

    .line 84
    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->Z()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v6, v3}, Lcom/yelp/android/ui/activities/profile/WhatsAnElite;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    const v2, 0x7f0101cc

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    const v2, 0x7f0f001f

    sget v3, Lcom/yelp/android/appdata/n;->c:I

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {v0, v2, v4, v3}, Lcom/yelp/android/ui/util/aj$c;->a(III)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 92
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/WhatsAnElite;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/WhatsAnElite;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 94
    return-void
.end method
