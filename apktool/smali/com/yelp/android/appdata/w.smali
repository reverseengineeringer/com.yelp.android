.class Lcom/yelp/android/appdata/w;
.super Ljava/lang/Object;
.source "GooglePlayLocationService.java"

# interfaces
.implements Lcom/google/android/gms/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/LocationService$Accuracies;

.field final synthetic b:Lcom/yelp/android/appdata/LocationService$Recentness;

.field final synthetic c:Lcom/yelp/android/appdata/aa;

.field final synthetic d:Landroid/os/Handler;

.field final synthetic e:Ljava/lang/Runnable;

.field final synthetic f:Lcom/yelp/android/appdata/s;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/s;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/aa;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/yelp/android/appdata/w;->f:Lcom/yelp/android/appdata/s;

    iput-object p2, p0, Lcom/yelp/android/appdata/w;->a:Lcom/yelp/android/appdata/LocationService$Accuracies;

    iput-object p3, p0, Lcom/yelp/android/appdata/w;->b:Lcom/yelp/android/appdata/LocationService$Recentness;

    iput-object p4, p0, Lcom/yelp/android/appdata/w;->c:Lcom/yelp/android/appdata/aa;

    iput-object p5, p0, Lcom/yelp/android/appdata/w;->d:Landroid/os/Handler;

    iput-object p6, p0, Lcom/yelp/android/appdata/w;->e:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 209
    const-string/jumbo v0, "LOCDEBUG"

    const-string/jumbo v1, "Received location updated from Google Play"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/yelp/android/appdata/w;->f:Lcom/yelp/android/appdata/s;

    invoke-static {v0, p1}, Lcom/yelp/android/appdata/s;->a(Lcom/yelp/android/appdata/s;Landroid/location/Location;)Landroid/location/Location;

    .line 218
    iget-object v0, p0, Lcom/yelp/android/appdata/w;->f:Lcom/yelp/android/appdata/s;

    iget-object v1, p0, Lcom/yelp/android/appdata/w;->a:Lcom/yelp/android/appdata/LocationService$Accuracies;

    iget-object v2, p0, Lcom/yelp/android/appdata/w;->b:Lcom/yelp/android/appdata/LocationService$Recentness;

    iget-object v3, p0, Lcom/yelp/android/appdata/w;->f:Lcom/yelp/android/appdata/s;

    invoke-static {v3}, Lcom/yelp/android/appdata/s;->c(Lcom/yelp/android/appdata/s;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/appdata/s;->a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Landroid/location/Location;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const-string/jumbo v0, "LOCDEBUG"

    const-string/jumbo v1, "Got an awesome location: %s oldness: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/yelp/android/appdata/w;->f:Lcom/yelp/android/appdata/s;

    invoke-static {v3}, Lcom/yelp/android/appdata/s;->c(Lcom/yelp/android/appdata/s;)Landroid/location/Location;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/yelp/android/appdata/w;->f:Lcom/yelp/android/appdata/s;

    invoke-static {v3}, Lcom/yelp/android/appdata/s;->c(Lcom/yelp/android/appdata/s;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/yelp/android/appdata/LocationService$Recentness;->getOldness(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lcom/yelp/android/appdata/w;->c:Lcom/yelp/android/appdata/aa;

    iget-object v1, p0, Lcom/yelp/android/appdata/w;->f:Lcom/yelp/android/appdata/s;

    invoke-static {v1}, Lcom/yelp/android/appdata/s;->c(Lcom/yelp/android/appdata/s;)Landroid/location/Location;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lcom/yelp/android/appdata/aa;->a(Landroid/location/Location;Z)V

    .line 223
    iget-object v0, p0, Lcom/yelp/android/appdata/w;->f:Lcom/yelp/android/appdata/s;

    iget-object v1, p0, Lcom/yelp/android/appdata/w;->c:Lcom/yelp/android/appdata/aa;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/s;->a(Lcom/yelp/android/appdata/aa;)V

    .line 224
    iget-object v0, p0, Lcom/yelp/android/appdata/w;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yelp/android/appdata/w;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 226
    :cond_0
    return-void
.end method
