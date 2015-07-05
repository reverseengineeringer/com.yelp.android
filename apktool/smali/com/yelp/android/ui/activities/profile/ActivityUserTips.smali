.class public Lcom/yelp/android/ui/activities/profile/ActivityUserTips;
.super Lcom/yelp/android/ui/activities/profile/AnyUserSingleFeedEntryActivity;
.source "ActivityUserTips.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/profile/AnyUserSingleFeedEntryActivity",
        "<",
        "Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "extra.firsts_only"

    sput-object v0, Lcom/yelp/android/ui/activities/profile/ActivityUserTips;->c:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "extra.tips_of_the_day"

    sput-object v0, Lcom/yelp/android/ui/activities/profile/ActivityUserTips;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/AnyUserSingleFeedEntryActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/User;Ljava/lang/Class;I)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/serializable/User;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/yelp/android/ui/activities/profile/AnyUserSingleFeedEntryActivity",
            "<*>;>;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 28
    invoke-static {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/profile/AnyUserSingleFeedEntryActivity;->b(Landroid/content/Context;Lcom/yelp/android/serializable/User;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v0

    .line 29
    sget-object v1, Lcom/yelp/android/ui/activities/profile/ActivityUserTips;->d:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 30
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f0703c7

    return v0
.end method

.method public a(II)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserTips;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/profile/ActivityUserTips;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserTips;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/profile/ActivityUserTips;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 49
    new-instance v0, Lcom/yelp/android/appdata/webrequests/gz;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserTips;->a:Lcom/yelp/android/serializable/User;

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/gz;-><init>(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/serializable/User;IIZZ)V

    .line 51
    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/gz;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ProfileTips:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserTips;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/profile/AnyUserSingleFeedEntryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f070606

    .line 37
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserTips;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ActivityUserTips;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    const v0, 0x7f07028b

    .line 42
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserTips;->setTitle(I)V

    .line 43
    return-void

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserTips;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/ui/activities/profile/ActivityUserTips;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    const v0, 0x7f070600

    goto :goto_0
.end method
