.class Lcom/yelp/android/appdata/p$c$1;
.super Ljava/lang/Object;
.source "StatefulLocationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/p$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/p$c;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/p$c;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lcom/yelp/android/appdata/p$c$1;->a:Lcom/yelp/android/appdata/p$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 554
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c$1;->a:Lcom/yelp/android/appdata/p$c;

    invoke-static {v0}, Lcom/yelp/android/appdata/p$c;->b(Lcom/yelp/android/appdata/p$c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c$1;->a:Lcom/yelp/android/appdata/p$c;

    invoke-static {v0}, Lcom/yelp/android/appdata/p$c;->c(Lcom/yelp/android/appdata/p$c;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    .line 556
    if-nez v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c$1;->a:Lcom/yelp/android/appdata/p$c;

    invoke-static {v0}, Lcom/yelp/android/appdata/p$c;->c(Lcom/yelp/android/appdata/p$c;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    .line 560
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v4, v6, v4

    iget-object v0, p0, Lcom/yelp/android/appdata/p$c$1;->a:Lcom/yelp/android/appdata/p$c;

    invoke-static {v0}, Lcom/yelp/android/appdata/p$c;->d(Lcom/yelp/android/appdata/p$c;)Landroid/location/GpsStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getTimeToFirstFix()I

    move-result v0

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    move v0, v1

    .line 564
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c$1;->a:Lcom/yelp/android/appdata/p$c;

    const-wide/16 v4, 0x3a98

    invoke-static {v0, v4, v5}, Lcom/yelp/android/appdata/p$c;->a(Lcom/yelp/android/appdata/p$c;J)J

    .line 569
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c$1;->a:Lcom/yelp/android/appdata/p$c;

    invoke-static {v0}, Lcom/yelp/android/appdata/p$c;->a(Lcom/yelp/android/appdata/p$c;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "Spinning down GPS to %d seconds, probably indoors"

    new-array v1, v1, [Ljava/lang/Object;

    const-wide/16 v4, 0xf

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->i(Ljava/lang/Object;Ljava/lang/String;)I

    .line 574
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c$1;->a:Lcom/yelp/android/appdata/p$c;

    invoke-static {v0}, Lcom/yelp/android/appdata/p$c;->e(Lcom/yelp/android/appdata/p$c;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/appdata/p$c$1;->a:Lcom/yelp/android/appdata/p$c;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 575
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c$1;->a:Lcom/yelp/android/appdata/p$c;

    invoke-static {v0}, Lcom/yelp/android/appdata/p$c;->e(Lcom/yelp/android/appdata/p$c;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/appdata/p$c$1;->a:Lcom/yelp/android/appdata/p$c;

    invoke-static {v1}, Lcom/yelp/android/appdata/p$c;->a(Lcom/yelp/android/appdata/p$c;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/appdata/p$c$1;->a:Lcom/yelp/android/appdata/p$c;

    invoke-static {v2}, Lcom/yelp/android/appdata/p$c;->f(Lcom/yelp/android/appdata/p$c;)J

    move-result-wide v2

    const/high16 v4, 0x40a00000    # 5.0f

    iget-object v5, p0, Lcom/yelp/android/appdata/p$c$1;->a:Lcom/yelp/android/appdata/p$c;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 582
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 560
    goto :goto_0
.end method
