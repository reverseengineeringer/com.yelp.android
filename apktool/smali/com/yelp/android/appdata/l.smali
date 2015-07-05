.class Lcom/yelp/android/appdata/l;
.super Landroid/os/AsyncTask;
.source "CompassSensorService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Landroid/hardware/Sensor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/k;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/k;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/yelp/android/appdata/l;->a:Lcom/yelp/android/appdata/k;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/content/Context;)Landroid/hardware/Sensor;
    .locals 3

    .prologue
    .line 46
    iget-object v1, p0, Lcom/yelp/android/appdata/l;->a:Lcom/yelp/android/appdata/k;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const-string/jumbo v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/k;->a(Lcom/yelp/android/appdata/k;Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;

    .line 47
    iget-object v0, p0, Lcom/yelp/android/appdata/l;->a:Lcom/yelp/android/appdata/k;

    invoke-static {v0}, Lcom/yelp/android/appdata/k;->a(Lcom/yelp/android/appdata/k;)Landroid/hardware/SensorManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/hardware/Sensor;)V
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/appdata/l;->a:Lcom/yelp/android/appdata/k;

    invoke-static {v0, p1}, Lcom/yelp/android/appdata/k;->a(Lcom/yelp/android/appdata/k;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;

    .line 53
    iget-object v0, p0, Lcom/yelp/android/appdata/l;->a:Lcom/yelp/android/appdata/k;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/k;->a(Lcom/yelp/android/appdata/k;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 54
    iget-object v0, p0, Lcom/yelp/android/appdata/l;->a:Lcom/yelp/android/appdata/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/k;->a(Lcom/yelp/android/appdata/k;Z)Z

    .line 55
    iget-object v0, p0, Lcom/yelp/android/appdata/l;->a:Lcom/yelp/android/appdata/k;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/appdata/k;->a(Lcom/yelp/android/appdata/k;J)J

    .line 56
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/l;->a([Landroid/content/Context;)Landroid/hardware/Sensor;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Landroid/hardware/Sensor;

    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/l;->a(Landroid/hardware/Sensor;)V

    return-void
.end method
