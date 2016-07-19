.class Lcom/yelp/android/ui/activities/profile/UserProfileView$1;
.super Ljava/lang/Object;
.source "UserProfileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/profile/UserProfileView;->setUpHeaderButtons(Lcom/yelp/android/serializable/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/User;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/yelp/android/ui/activities/profile/UserProfileView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/UserProfileView;Lcom/yelp/android/serializable/User;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView$1;->c:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView$1;->a:Lcom/yelp/android/serializable/User;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 226
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->ProfileButtonBar_Photos:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 231
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView$1;->c:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView$1;->c:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView$1;->a:Lcom/yelp/android/serializable/User;

    new-instance v3, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView$1;->a:Lcom/yelp/android/serializable/User;

    invoke-direct {v3, v4}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;-><init>(Lcom/yelp/android/serializable/User;)V

    iget-object v4, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView$1;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserBizMediaGrid;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 238
    return-void
.end method
