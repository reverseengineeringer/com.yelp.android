.class Lcom/yelp/android/ui/activities/profile/MoreAboutUser$2;
.super Lcom/yelp/android/analytics/d;
.source "MoreAboutUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;Lcom/yelp/android/analytics/iris/EventIri;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$2;->a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-direct {p0, p2}, Lcom/yelp/android/analytics/d;-><init>(Lcom/yelp/android/analytics/iris/EventIri;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 9

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$2;->a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;)Lcom/yelp/android/serializable/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$2;->a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-static {v4}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;)Lcom/yelp/android/serializable/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/User;->ag()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$2;->a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-static {v5}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;)Lcom/yelp/android/serializable/User;

    move-result-object v5

    iget-object v6, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$2;->a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-static {v6}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;)Lcom/yelp/android/serializable/User;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yelp/android/serializable/User;->ag()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0x14

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;-><init>(Lcom/yelp/android/serializable/User;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    const v5, 0x7f07048d

    invoke-static {v1, v2, v3, v4, v5}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/yelp/android/appdata/webrequests/MediaRequest;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 264
    return-void
.end method
