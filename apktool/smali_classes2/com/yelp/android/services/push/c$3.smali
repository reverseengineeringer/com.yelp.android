.class Lcom/yelp/android/services/push/c$3;
.super Ljava/lang/Object;
.source "InAppNotificationHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/services/push/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/services/push/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/services/push/c;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/yelp/android/services/push/c$3;->a:Lcom/yelp/android/services/push/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 137
    invoke-static {}, Lcom/yelp/android/services/push/c;->a()Lcom/yelp/android/cb/a;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/services/push/c$3;->a:Lcom/yelp/android/services/push/c;

    invoke-static {v2}, Lcom/yelp/android/services/push/c;->a(Lcom/yelp/android/services/push/c;)Lcom/yelp/android/serializable/InAppNotification;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Lcom/yelp/android/cb/a;->a(Lcom/yelp/android/serializable/InAppNotification;Lcom/yelp/android/database/h$b;)V

    .line 140
    iget-object v0, p0, Lcom/yelp/android/services/push/c$3;->a:Lcom/yelp/android/services/push/c;

    invoke-static {v0}, Lcom/yelp/android/services/push/c;->e(Lcom/yelp/android/services/push/c;)Lcom/yelp/android/services/push/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/yelp/android/services/push/c$3;->a:Lcom/yelp/android/services/push/c;

    invoke-static {v0}, Lcom/yelp/android/services/push/c;->e(Lcom/yelp/android/services/push/c;)Lcom/yelp/android/services/push/c$a;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/services/push/c$3;->a:Lcom/yelp/android/services/push/c;

    invoke-static {v2}, Lcom/yelp/android/services/push/c;->a(Lcom/yelp/android/services/push/c;)Lcom/yelp/android/serializable/InAppNotification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/InAppNotification;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/yelp/android/services/push/c$a;->a(Ljava/lang/String;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/services/push/c$3;->a:Lcom/yelp/android/services/push/c;

    invoke-static {v0}, Lcom/yelp/android/services/push/c;->a(Lcom/yelp/android/services/push/c;)Lcom/yelp/android/serializable/InAppNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/InAppNotification;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 152
    iget-object v0, p0, Lcom/yelp/android/services/push/c$3;->a:Lcom/yelp/android/services/push/c;

    invoke-static {v0}, Lcom/yelp/android/services/push/c;->b(Lcom/yelp/android/services/push/c;)Lcom/yelp/android/ui/widgets/InAppNotificationView;

    move-result-object v0

    sget v1, Lcom/yelp/android/ui/util/av;->e:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v4}, Lcom/yelp/android/ui/util/av;->a(Landroid/view/View;IZLcom/yelp/android/ui/util/av$a;)V

    .line 156
    :goto_1
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->InAppNotificationTap:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v1, p0, Lcom/yelp/android/services/push/c$3;->a:Lcom/yelp/android/services/push/c;

    invoke-static {v1}, Lcom/yelp/android/services/push/c;->a(Lcom/yelp/android/services/push/c;)Lcom/yelp/android/serializable/InAppNotification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/InAppNotification;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 158
    iget-object v0, p0, Lcom/yelp/android/services/push/c$3;->a:Lcom/yelp/android/services/push/c;

    invoke-static {v0, v4}, Lcom/yelp/android/services/push/c;->a(Lcom/yelp/android/services/push/c;Lcom/yelp/android/serializable/InAppNotification;)Lcom/yelp/android/serializable/InAppNotification;

    .line 159
    return-void

    .line 146
    :pswitch_0
    const-string/jumbo v3, "find_friends"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 148
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/services/push/c$3;->a:Lcom/yelp/android/services/push/c;

    invoke-static {v0}, Lcom/yelp/android/services/push/c;->f(Lcom/yelp/android/services/push/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/services/push/c$3;->a:Lcom/yelp/android/services/push/c;

    invoke-static {v2}, Lcom/yelp/android/services/push/c;->f(Lcom/yelp/android/services/push/c;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x6daa1d0f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
