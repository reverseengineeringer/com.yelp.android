.class Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1$2;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/PanelError$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/AlertsResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1$2;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public q_()V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1$2;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1$2;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->startActivity(Landroid/content/Intent;)V

    .line 267
    return-void
.end method
