.class Lcom/yelp/android/ui/activities/notifications/l;
.super Landroid/content/BroadcastReceiver;
.source "NotificationsFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/yelp/android/ui/activities/notifications/l;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 358
    const-string/jumbo v0, "android.intent.action.EDIT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    invoke-static {p2}, Lcom/yelp/android/ui/activities/profile/j;->a(Landroid/content/Intent;)Lcom/yelp/android/ui/activities/profile/j;

    move-result-object v0

    .line 360
    iget-object v1, v0, Lcom/yelp/android/ui/activities/profile/j;->a:Lcom/yelp/android/serializable/Compliment;

    if-eqz v1, :cond_0

    .line 361
    const-string/jumbo v1, "/compliment/approve?thanx_id=%s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/yelp/android/ui/activities/profile/j;->a:Lcom/yelp/android/serializable/Compliment;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Compliment;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 363
    iget v2, v0, Lcom/yelp/android/ui/activities/profile/j;->b:I

    if-lez v2, :cond_2

    .line 364
    iget-object v2, p0, Lcom/yelp/android/ui/activities/notifications/l;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v2, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->b(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;Ljava/lang/String;)V

    .line 371
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/yelp/android/ui/activities/profile/j;->c:Lcom/yelp/android/serializable/FriendRequest;

    if-eqz v1, :cond_1

    .line 372
    const-string/jumbo v1, "/user/accept_friend?user_id=%s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/yelp/android/ui/activities/profile/j;->c:Lcom/yelp/android/serializable/FriendRequest;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/FriendRequest;->getUserId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 374
    iget v0, v0, Lcom/yelp/android/ui/activities/profile/j;->d:I

    if-lez v0, :cond_3

    .line 375
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/l;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->b(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;Ljava/lang/String;)V

    .line 382
    :cond_1
    :goto_1
    return-void

    .line 367
    :cond_2
    iget-object v2, p0, Lcom/yelp/android/ui/activities/notifications/l;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v2, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/l;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;Ljava/lang/String;)V

    goto :goto_1
.end method
