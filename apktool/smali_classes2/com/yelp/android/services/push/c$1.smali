.class Lcom/yelp/android/services/push/c$1;
.super Lcom/yelp/android/database/h$c;
.source "InAppNotificationHelper.java"


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
    .line 77
    iput-object p1, p0, Lcom/yelp/android/services/push/c$1;->a:Lcom/yelp/android/services/push/c;

    invoke-direct {p0}, Lcom/yelp/android/database/h$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 81
    check-cast p1, Ljava/util/List;

    .line 83
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 84
    instance-of v4, v0, Lcom/yelp/android/serializable/InAppNotification;

    if-eqz v4, :cond_0

    .line 85
    check-cast v0, Lcom/yelp/android/serializable/InAppNotification;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 90
    iget-object v3, p0, Lcom/yelp/android/services/push/c$1;->a:Lcom/yelp/android/services/push/c;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/InAppNotification;

    invoke-static {v3, v0}, Lcom/yelp/android/services/push/c;->a(Lcom/yelp/android/services/push/c;Lcom/yelp/android/serializable/InAppNotification;)Lcom/yelp/android/serializable/InAppNotification;

    .line 91
    iget-object v0, p0, Lcom/yelp/android/services/push/c$1;->a:Lcom/yelp/android/services/push/c;

    invoke-static {v0}, Lcom/yelp/android/services/push/c;->a(Lcom/yelp/android/services/push/c;)Lcom/yelp/android/serializable/InAppNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/InAppNotification;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 112
    :cond_3
    :goto_2
    return-void

    .line 91
    :sswitch_0
    const-string/jumbo v3, "no_message_control"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "message_cohort_1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 93
    :pswitch_0
    invoke-static {}, Lcom/yelp/android/services/push/c;->a()Lcom/yelp/android/cb/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/services/push/c$1;->a:Lcom/yelp/android/services/push/c;

    invoke-static {v1}, Lcom/yelp/android/services/push/c;->a(Lcom/yelp/android/services/push/c;)Lcom/yelp/android/serializable/InAppNotification;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/yelp/android/cb/a;->a(Lcom/yelp/android/serializable/InAppNotification;Lcom/yelp/android/database/h$b;)V

    .line 94
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->InAppNotificationShown:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v1, p0, Lcom/yelp/android/services/push/c$1;->a:Lcom/yelp/android/services/push/c;

    invoke-static {v1}, Lcom/yelp/android/services/push/c;->a(Lcom/yelp/android/services/push/c;)Lcom/yelp/android/serializable/InAppNotification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/InAppNotification;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 97
    iget-object v0, p0, Lcom/yelp/android/services/push/c$1;->a:Lcom/yelp/android/services/push/c;

    invoke-static {v0, v5}, Lcom/yelp/android/services/push/c;->a(Lcom/yelp/android/services/push/c;Lcom/yelp/android/serializable/InAppNotification;)Lcom/yelp/android/serializable/InAppNotification;

    goto :goto_2

    .line 100
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/services/push/c$1;->a:Lcom/yelp/android/services/push/c;

    invoke-static {v0}, Lcom/yelp/android/services/push/c;->b(Lcom/yelp/android/services/push/c;)Lcom/yelp/android/ui/widgets/InAppNotificationView;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/services/push/c$1;->a:Lcom/yelp/android/services/push/c;

    invoke-static {v2}, Lcom/yelp/android/services/push/c;->a(Lcom/yelp/android/services/push/c;)Lcom/yelp/android/serializable/InAppNotification;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/InAppNotificationView;->setupNotification(Lcom/yelp/android/serializable/InAppNotification;)V

    .line 101
    iget-object v0, p0, Lcom/yelp/android/services/push/c$1;->a:Lcom/yelp/android/services/push/c;

    invoke-static {v0}, Lcom/yelp/android/services/push/c;->b(Lcom/yelp/android/services/push/c;)Lcom/yelp/android/ui/widgets/InAppNotificationView;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/services/push/c$1;->a:Lcom/yelp/android/services/push/c;

    invoke-static {v2}, Lcom/yelp/android/services/push/c;->c(Lcom/yelp/android/services/push/c;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/InAppNotificationView;->setOnCancelListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/yelp/android/services/push/c$1;->a:Lcom/yelp/android/services/push/c;

    invoke-static {v0}, Lcom/yelp/android/services/push/c;->b(Lcom/yelp/android/services/push/c;)Lcom/yelp/android/ui/widgets/InAppNotificationView;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/services/push/c$1;->a:Lcom/yelp/android/services/push/c;

    invoke-static {v2}, Lcom/yelp/android/services/push/c;->d(Lcom/yelp/android/services/push/c;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/InAppNotificationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/yelp/android/services/push/c$1;->a:Lcom/yelp/android/services/push/c;

    invoke-static {v0}, Lcom/yelp/android/services/push/c;->b(Lcom/yelp/android/services/push/c;)Lcom/yelp/android/ui/widgets/InAppNotificationView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/InAppNotificationView;->setVisibility(I)V

    .line 104
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->InAppNotificationShown:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v1, p0, Lcom/yelp/android/services/push/c$1;->a:Lcom/yelp/android/services/push/c;

    invoke-static {v1}, Lcom/yelp/android/services/push/c;->a(Lcom/yelp/android/services/push/c;)Lcom/yelp/android/serializable/InAppNotification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/InAppNotification;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    goto :goto_2

    .line 91
    :sswitch_data_0
    .sparse-switch
        0x1688d6a7 -> :sswitch_0
        0x268e179f -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method
