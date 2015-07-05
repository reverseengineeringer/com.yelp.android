.class Lcom/yelp/android/ui/panels/businesssearch/c;
.super Lcom/yelp/android/ui/util/x;
.source "BusinessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/x",
        "<TT;[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesssearch/c;->a:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/x;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 534
    check-cast p2, Lcom/yelp/android/ui/panels/businesssearch/f;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/panels/businesssearch/c;->a(Landroid/content/Context;Lcom/yelp/android/ui/panels/businesssearch/f;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/yelp/android/ui/panels/businesssearch/f;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 537
    invoke-interface {p2}, Lcom/yelp/android/ui/panels/businesssearch/f;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    .line 538
    if-nez v1, :cond_1

    .line 583
    :cond_0
    :goto_0
    return-object v0

    .line 541
    :cond_1
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getRecentCheckInFriends()Lcom/yelp/android/serializable/RecentFriendCheckIns;

    move-result-object v3

    .line 542
    if-eqz v3, :cond_0

    .line 548
    invoke-virtual {v3}, Lcom/yelp/android/serializable/RecentFriendCheckIns;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 549
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RecentCheckIn;

    .line 550
    invoke-virtual {v0}, Lcom/yelp/android/serializable/RecentCheckIn;->getUser()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    .line 551
    :goto_1
    invoke-virtual {v3}, Lcom/yelp/android/serializable/RecentFriendCheckIns;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 552
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RecentCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RecentCheckIn;->getUser()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 553
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 554
    add-int/lit8 v0, v1, 0x1

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 559
    :cond_2
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RecentCheckIn;

    .line 563
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_4

    .line 564
    const v1, 0x7f070691

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 566
    const-string/jumbo v1, ", "

    new-instance v5, Lcom/yelp/android/ui/panels/businesssearch/d;

    invoke-direct {v5, p0}, Lcom/yelp/android/ui/panels/businesssearch/d;-><init>(Lcom/yelp/android/ui/panels/businesssearch/c;)V

    invoke-static {v1, v4, v5}, Lcom/yelp/android/util/StringUtils;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;Lcom/yelp/android/util/ag;)Ljava/lang/String;

    move-result-object v1

    .line 579
    :goto_2
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    .line 580
    aput-object v3, v4, v6

    .line 581
    aput-object v1, v4, v2

    .line 582
    const/4 v1, 0x2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RecentCheckIn;->getUser()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    move-object v0, v4

    .line 583
    goto/16 :goto_0

    .line 551
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 574
    :cond_4
    const v1, 0x7f070693

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RecentCheckIn;->getUser()Lcom/yelp/android/serializable/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/User;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 576
    sget-object v1, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RecentCheckIn;->getDateCreated()Ljava/util/Date;

    move-result-object v4

    invoke-static {p1, v1, v4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method
