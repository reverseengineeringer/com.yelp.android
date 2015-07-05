.class Lcom/yelp/android/appdata/at;
.super Ljava/lang/Object;
.source "StatefulLocationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/LocationService$Accuracies;

.field final synthetic b:Lcom/yelp/android/appdata/LocationService$Recentness;

.field final synthetic c:Lcom/yelp/android/appdata/aa;

.field final synthetic d:Lcom/yelp/android/appdata/as;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/as;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/aa;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/yelp/android/appdata/at;->d:Lcom/yelp/android/appdata/as;

    iput-object p2, p0, Lcom/yelp/android/appdata/at;->a:Lcom/yelp/android/appdata/LocationService$Accuracies;

    iput-object p3, p0, Lcom/yelp/android/appdata/at;->b:Lcom/yelp/android/appdata/LocationService$Recentness;

    iput-object p4, p0, Lcom/yelp/android/appdata/at;->c:Lcom/yelp/android/appdata/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 236
    iget-object v0, p0, Lcom/yelp/android/appdata/at;->d:Lcom/yelp/android/appdata/as;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/as;->c()Landroid/location/Location;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/yelp/android/appdata/at;->d:Lcom/yelp/android/appdata/as;

    iget-object v2, p0, Lcom/yelp/android/appdata/at;->a:Lcom/yelp/android/appdata/LocationService$Accuracies;

    iget-object v3, p0, Lcom/yelp/android/appdata/at;->b:Lcom/yelp/android/appdata/LocationService$Recentness;

    invoke-virtual {v1, v2, v3, v0}, Lcom/yelp/android/appdata/as;->a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Landroid/location/Location;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    if-eqz v0, :cond_1

    .line 239
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

    .line 245
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/appdata/at;->d:Lcom/yelp/android/appdata/as;

    iget-object v2, p0, Lcom/yelp/android/appdata/at;->c:Lcom/yelp/android/appdata/aa;

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/as;->a(Lcom/yelp/android/appdata/aa;)V

    .line 246
    iget-object v1, p0, Lcom/yelp/android/appdata/at;->c:Lcom/yelp/android/appdata/aa;

    invoke-interface {v1, v0, v8}, Lcom/yelp/android/appdata/aa;->a(Landroid/location/Location;Z)V

    .line 248
    :cond_0
    return-void

    .line 243
    :cond_1
    const-string/jumbo v1, "LOCDEBUG"

    const-string/jumbo v2, "No location at all"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
