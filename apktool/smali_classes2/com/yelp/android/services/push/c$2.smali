.class Lcom/yelp/android/services/push/c$2;
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
    .line 121
    iput-object p1, p0, Lcom/yelp/android/services/push/c$2;->a:Lcom/yelp/android/services/push/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 124
    invoke-static {}, Lcom/yelp/android/services/push/c;->a()Lcom/yelp/android/cb/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/services/push/c$2;->a:Lcom/yelp/android/services/push/c;

    invoke-static {v1}, Lcom/yelp/android/services/push/c;->a(Lcom/yelp/android/services/push/c;)Lcom/yelp/android/serializable/InAppNotification;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/yelp/android/cb/a;->a(Lcom/yelp/android/serializable/InAppNotification;Lcom/yelp/android/database/h$b;)V

    .line 125
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->InAppNotificationClose:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v1, p0, Lcom/yelp/android/services/push/c$2;->a:Lcom/yelp/android/services/push/c;

    invoke-static {v1}, Lcom/yelp/android/services/push/c;->a(Lcom/yelp/android/services/push/c;)Lcom/yelp/android/serializable/InAppNotification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/InAppNotification;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 127
    iget-object v0, p0, Lcom/yelp/android/services/push/c$2;->a:Lcom/yelp/android/services/push/c;

    invoke-static {v0, v3}, Lcom/yelp/android/services/push/c;->a(Lcom/yelp/android/services/push/c;Lcom/yelp/android/serializable/InAppNotification;)Lcom/yelp/android/serializable/InAppNotification;

    .line 128
    iget-object v0, p0, Lcom/yelp/android/services/push/c$2;->a:Lcom/yelp/android/services/push/c;

    invoke-static {v0}, Lcom/yelp/android/services/push/c;->b(Lcom/yelp/android/services/push/c;)Lcom/yelp/android/ui/widgets/InAppNotificationView;

    move-result-object v0

    sget v1, Lcom/yelp/android/ui/util/av;->e:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/av;->a(Landroid/view/View;IZLcom/yelp/android/ui/util/av$a;)V

    .line 130
    return-void
.end method
