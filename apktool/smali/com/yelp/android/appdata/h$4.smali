.class Lcom/yelp/android/appdata/h$4;
.super Ljava/lang/Object;
.source "GooglePlayLocationService.java"

# interfaces
.implements Lcom/google/android/gms/location/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/appdata/h;->a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/LocationService$a;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/LocationService$Accuracies;

.field final synthetic b:Lcom/yelp/android/appdata/LocationService$Recentness;

.field final synthetic c:Lcom/yelp/android/appdata/LocationService$a;

.field final synthetic d:Landroid/os/Handler;

.field final synthetic e:Ljava/lang/Runnable;

.field final synthetic f:Lcom/yelp/android/appdata/h;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/h;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/LocationService$a;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/yelp/android/appdata/h$4;->f:Lcom/yelp/android/appdata/h;

    iput-object p2, p0, Lcom/yelp/android/appdata/h$4;->a:Lcom/yelp/android/appdata/LocationService$Accuracies;

    iput-object p3, p0, Lcom/yelp/android/appdata/h$4;->b:Lcom/yelp/android/appdata/LocationService$Recentness;

    iput-object p4, p0, Lcom/yelp/android/appdata/h$4;->c:Lcom/yelp/android/appdata/LocationService$a;

    iput-object p5, p0, Lcom/yelp/android/appdata/h$4;->d:Landroid/os/Handler;

    iput-object p6, p0, Lcom/yelp/android/appdata/h$4;->e:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 235
    const-string/jumbo v0, "LOCDEBUG"

    const-string/jumbo v1, "Received location updated from Google Play"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/yelp/android/appdata/h$4;->f:Lcom/yelp/android/appdata/h;

    invoke-static {v0, p1}, Lcom/yelp/android/appdata/h;->a(Lcom/yelp/android/appdata/h;Landroid/location/Location;)Landroid/location/Location;

    .line 244
    iget-object v0, p0, Lcom/yelp/android/appdata/h$4;->f:Lcom/yelp/android/appdata/h;

    iget-object v1, p0, Lcom/yelp/android/appdata/h$4;->a:Lcom/yelp/android/appdata/LocationService$Accuracies;

    iget-object v2, p0, Lcom/yelp/android/appdata/h$4;->b:Lcom/yelp/android/appdata/LocationService$Recentness;

    iget-object v3, p0, Lcom/yelp/android/appdata/h$4;->f:Lcom/yelp/android/appdata/h;

    invoke-static {v3}, Lcom/yelp/android/appdata/h;->c(Lcom/yelp/android/appdata/h;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/appdata/h;->a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Landroid/location/Location;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const-string/jumbo v0, "LOCDEBUG"

    const-string/jumbo v1, "Got an awesome location: %s oldness: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/yelp/android/appdata/h$4;->f:Lcom/yelp/android/appdata/h;

    invoke-static {v3}, Lcom/yelp/android/appdata/h;->c(Lcom/yelp/android/appdata/h;)Landroid/location/Location;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/yelp/android/appdata/h$4;->f:Lcom/yelp/android/appdata/h;

    invoke-static {v3}, Lcom/yelp/android/appdata/h;->c(Lcom/yelp/android/appdata/h;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/yelp/android/appdata/LocationService$Recentness;->getOldness(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/yelp/android/appdata/h$4;->c:Lcom/yelp/android/appdata/LocationService$a;

    iget-object v1, p0, Lcom/yelp/android/appdata/h$4;->f:Lcom/yelp/android/appdata/h;

    invoke-static {v1}, Lcom/yelp/android/appdata/h;->c(Lcom/yelp/android/appdata/h;)Landroid/location/Location;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lcom/yelp/android/appdata/LocationService$a;->a(Landroid/location/Location;Z)V

    .line 251
    iget-object v0, p0, Lcom/yelp/android/appdata/h$4;->f:Lcom/yelp/android/appdata/h;

    iget-object v1, p0, Lcom/yelp/android/appdata/h$4;->c:Lcom/yelp/android/appdata/LocationService$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/h;->a(Lcom/yelp/android/appdata/LocationService$a;)V

    .line 252
    iget-object v0, p0, Lcom/yelp/android/appdata/h$4;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yelp/android/appdata/h$4;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 254
    :cond_0
    return-void
.end method
