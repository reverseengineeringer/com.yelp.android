.class Lcom/yelp/android/appdata/p$1;
.super Ljava/lang/Object;
.source "StatefulLocationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/appdata/p;->a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/LocationService$a;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/LocationService$Accuracies;

.field final synthetic b:Lcom/yelp/android/appdata/LocationService$Recentness;

.field final synthetic c:Lcom/yelp/android/appdata/LocationService$a;

.field final synthetic d:Lcom/yelp/android/appdata/p;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/p;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/LocationService$a;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/yelp/android/appdata/p$1;->d:Lcom/yelp/android/appdata/p;

    iput-object p2, p0, Lcom/yelp/android/appdata/p$1;->a:Lcom/yelp/android/appdata/LocationService$Accuracies;

    iput-object p3, p0, Lcom/yelp/android/appdata/p$1;->b:Lcom/yelp/android/appdata/LocationService$Recentness;

    iput-object p4, p0, Lcom/yelp/android/appdata/p$1;->c:Lcom/yelp/android/appdata/LocationService$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 248
    iget-object v0, p0, Lcom/yelp/android/appdata/p$1;->d:Lcom/yelp/android/appdata/p;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/p;->c()Landroid/location/Location;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/yelp/android/appdata/p$1;->d:Lcom/yelp/android/appdata/p;

    iget-object v2, p0, Lcom/yelp/android/appdata/p$1;->a:Lcom/yelp/android/appdata/LocationService$Accuracies;

    iget-object v3, p0, Lcom/yelp/android/appdata/p$1;->b:Lcom/yelp/android/appdata/LocationService$Recentness;

    invoke-virtual {v1, v2, v3, v0}, Lcom/yelp/android/appdata/p;->a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Landroid/location/Location;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    if-eqz v0, :cond_1

    .line 251
    const-string/jumbo v1, "LOCDEBUG"

    const-string/jumbo v2, "Did not get location update, using old location: %s oldness: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v8

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/yelp/android/appdata/LocationService$Recentness;->getOldness(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/appdata/p$1;->d:Lcom/yelp/android/appdata/p;

    iget-object v2, p0, Lcom/yelp/android/appdata/p$1;->c:Lcom/yelp/android/appdata/LocationService$a;

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/p;->a(Lcom/yelp/android/appdata/LocationService$a;)V

    .line 261
    iget-object v1, p0, Lcom/yelp/android/appdata/p$1;->c:Lcom/yelp/android/appdata/LocationService$a;

    invoke-interface {v1, v0, v8}, Lcom/yelp/android/appdata/LocationService$a;->a(Landroid/location/Location;Z)V

    .line 263
    :cond_0
    return-void

    .line 257
    :cond_1
    const-string/jumbo v1, "LOCDEBUG"

    const-string/jumbo v2, "No location at all"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
