.class public abstract Lcom/yelp/android/ui/activities/profile/AnyUserSingleFeedEntryActivity;
.super Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;
.source "AnyUserSingleFeedEntryActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ObjectType:",
        "Lcom/yelp/android/serializable/FeedEntry;",
        ">",
        "Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity",
        "<TObjectType;>;"
    }
.end annotation


# instance fields
.field protected a:Lcom/yelp/android/serializable/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/yelp/android/serializable/User;Ljava/lang/Class;I)Landroid/content/Intent;
    .locals 2
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
    .line 21
    invoke-static {p0, p2, p3}, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->a(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v0

    .line 22
    const-string/jumbo v1, "user_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 23
    return-object v0
.end method


# virtual methods
.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/AnyUserSingleFeedEntryActivity;->a:Lcom/yelp/android/serializable/User;

    if-eqz v1, :cond_0

    .line 38
    const-string/jumbo v0, "id"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/AnyUserSingleFeedEntryActivity;->a:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 40
    :cond_0
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/AnyUserSingleFeedEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "user_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/AnyUserSingleFeedEntryActivity;->a:Lcom/yelp/android/serializable/User;

    .line 31
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    return-void
.end method
