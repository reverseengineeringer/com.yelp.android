.class Lcom/yelp/android/appdata/h$3;
.super Ljava/lang/Object;
.source "GooglePlayLocationService.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic d:Lcom/yelp/android/appdata/h;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/h;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/LocationService$a;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/yelp/android/appdata/h$3;->d:Lcom/yelp/android/appdata/h;

    iput-object p2, p0, Lcom/yelp/android/appdata/h$3;->a:Lcom/yelp/android/appdata/LocationService$Accuracies;

    iput-object p3, p0, Lcom/yelp/android/appdata/h$3;->b:Lcom/yelp/android/appdata/LocationService$Recentness;

    iput-object p4, p0, Lcom/yelp/android/appdata/h$3;->c:Lcom/yelp/android/appdata/LocationService$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 212
    iget-object v0, p0, Lcom/yelp/android/appdata/h$3;->d:Lcom/yelp/android/appdata/h;

    iget-object v1, p0, Lcom/yelp/android/appdata/h$3;->a:Lcom/yelp/android/appdata/LocationService$Accuracies;

    iget-object v2, p0, Lcom/yelp/android/appdata/h$3;->b:Lcom/yelp/android/appdata/LocationService$Recentness;

    iget-object v3, p0, Lcom/yelp/android/appdata/h$3;->d:Lcom/yelp/android/appdata/h;

    invoke-static {v3}, Lcom/yelp/android/appdata/h;->c(Lcom/yelp/android/appdata/h;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/appdata/h;->a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Landroid/location/Location;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/yelp/android/appdata/h$3;->d:Lcom/yelp/android/appdata/h;

    invoke-static {v0}, Lcom/yelp/android/appdata/h;->c(Lcom/yelp/android/appdata/h;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 214
    const-string/jumbo v0, "LOCDEBUG"

    const-string/jumbo v1, "Did not get location update, using old location: %s oldness: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/yelp/android/appdata/h$3;->d:Lcom/yelp/android/appdata/h;

    invoke-static {v3}, Lcom/yelp/android/appdata/h;->c(Lcom/yelp/android/appdata/h;)Landroid/location/Location;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/yelp/android/appdata/h$3;->d:Lcom/yelp/android/appdata/h;

    invoke-static {v4}, Lcom/yelp/android/appdata/h;->c(Lcom/yelp/android/appdata/h;)Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/yelp/android/appdata/LocationService$Recentness;->getOldness(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/appdata/h$3;->d:Lcom/yelp/android/appdata/h;

    iget-object v1, p0, Lcom/yelp/android/appdata/h$3;->c:Lcom/yelp/android/appdata/LocationService$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/h;->a(Lcom/yelp/android/appdata/LocationService$a;)V

    .line 224
    iget-object v0, p0, Lcom/yelp/android/appdata/h$3;->c:Lcom/yelp/android/appdata/LocationService$a;

    iget-object v1, p0, Lcom/yelp/android/appdata/h$3;->d:Lcom/yelp/android/appdata/h;

    invoke-static {v1}, Lcom/yelp/android/appdata/h;->c(Lcom/yelp/android/appdata/h;)Landroid/location/Location;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lcom/yelp/android/appdata/LocationService$a;->a(Landroid/location/Location;Z)V

    .line 226
    :cond_0
    return-void

    .line 220
    :cond_1
    const-string/jumbo v0, "LOCDEBUG"

    const-string/jumbo v1, "No location at all"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
