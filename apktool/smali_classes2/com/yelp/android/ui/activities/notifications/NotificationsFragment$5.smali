.class Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$5;
.super Landroid/content/BroadcastReceiver;
.source "NotificationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$5;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 396
    const-string/jumbo v0, "android.intent.action.EDIT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    invoke-static {p2}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->a(Landroid/content/Intent;)Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;

    move-result-object v0

    .line 398
    iget-object v1, v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->a:Lcom/yelp/android/serializable/Compliment;

    if-eqz v1, :cond_0

    .line 399
    const-string/jumbo v1, "/compliment/approve?thanx_id=%s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->a:Lcom/yelp/android/serializable/Compliment;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Compliment;->r()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 403
    iget v2, v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->b:I

    if-lez v2, :cond_2

    .line 404
    iget-object v2, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$5;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v2, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->b(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;Ljava/lang/String;)V

    .line 411
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->c:Lcom/yelp/android/serializable/FriendRequest;

    if-eqz v1, :cond_1

    .line 412
    const-string/jumbo v1, "/user/accept_friend?user_id=%s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->c:Lcom/yelp/android/serializable/FriendRequest;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/FriendRequest;->i()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 416
    iget v0, v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->d:I

    if-lez v0, :cond_3

    .line 417
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$5;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->b(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;Ljava/lang/String;)V

    .line 424
    :cond_1
    :goto_1
    return-void

    .line 407
    :cond_2
    iget-object v2, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$5;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v2, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 420
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$5;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;Ljava/lang/String;)V

    goto :goto_1
.end method
