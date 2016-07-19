.class public Lcom/yelp/android/ui/activities/profile/tips/a$b;
.super Ljava/lang/Object;
.source "UserTipsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/profile/tips/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/User;I)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra.user"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.total_feed_items"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.view_type"

    sget-object v2, Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;->NORMAL:Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Intent;)Lcom/yelp/android/serializable/UserTipsViewModel;
    .locals 6

    .prologue
    .line 44
    new-instance v2, Lcom/yelp/android/serializable/UserTipsViewModel;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "extra.user"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    const-string/jumbo v1, "extra.view_type"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    const-string/jumbo v4, "extra.total_feed_items"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/yelp/android/serializable/UserTipsViewModel;-><init>(Ljava/util/ArrayList;Lcom/yelp/android/serializable/User;Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;I)V

    return-object v2
.end method

.method public static b(Landroid/content/Context;Lcom/yelp/android/serializable/User;I)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/tips/a$b;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.view_type"

    sget-object v2, Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;->TIPS_OF_THE_DAY:Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
