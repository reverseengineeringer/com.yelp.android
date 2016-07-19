.class Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1$1;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/PanelError$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
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
    .line 222
    iput-object p1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1$1;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public q_()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1$1;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;Z)V

    .line 227
    return-void
.end method
