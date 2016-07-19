.class Lcom/yelp/android/ui/activities/support/YelpActivity$3;
.super Ljava/lang/Object;
.source "YelpActivity.java"

# interfaces
.implements Lcom/kahuna/sdk/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/support/YelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/support/YelpActivity;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/support/YelpActivity;)V
    .locals 0

    .prologue
    .line 1378
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$3;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 1381
    const-string/jumbo v0, "cohort"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    new-instance v0, Lcom/yelp/android/serializable/InAppNotification;

    invoke-direct {v0, p2}, Lcom/yelp/android/serializable/InAppNotification;-><init>(Landroid/os/Bundle;)V

    .line 1384
    invoke-virtual {v0}, Lcom/yelp/android/serializable/InAppNotification;->b()D

    move-result-wide v2

    const-wide v4, 0x3ff199999999999aL    # 1.1

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 1385
    invoke-static {}, Lcom/yelp/android/services/push/c;->a()Lcom/yelp/android/cb/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/cb/a;->b(Lcom/yelp/android/serializable/InAppNotification;Lcom/yelp/android/database/h$b;)V

    .line 1387
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->InAppNotificationDelivered:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/InAppNotification;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 1394
    :cond_0
    return-void
.end method
