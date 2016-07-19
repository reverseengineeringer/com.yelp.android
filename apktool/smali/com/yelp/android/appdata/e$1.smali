.class Lcom/yelp/android/appdata/e$1;
.super Landroid/os/AsyncTask;
.source "CompassSensorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

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
.field final synthetic a:Lcom/yelp/android/appdata/e;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/e;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/yelp/android/appdata/e$1;->a:Lcom/yelp/android/appdata/e;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/content/Context;)Landroid/hardware/Sensor;
    .locals 3

    .prologue
    .line 46
    iget-object v1, p0, Lcom/yelp/android/appdata/e$1;->a:Lcom/yelp/android/appdata/e;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const-string/jumbo v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/e;->a(Lcom/yelp/android/appdata/e;Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;

    .line 48
    iget-object v0, p0, Lcom/yelp/android/appdata/e$1;->a:Lcom/yelp/android/appdata/e;

    invoke-static {v0}, Lcom/yelp/android/appdata/e;->a(Lcom/yelp/android/appdata/e;)Landroid/hardware/SensorManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/hardware/Sensor;)V
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/appdata/e$1;->a:Lcom/yelp/android/appdata/e;

    invoke-static {v0, p1}, Lcom/yelp/android/appdata/e;->a(Lcom/yelp/android/appdata/e;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;

    .line 54
    iget-object v0, p0, Lcom/yelp/android/appdata/e$1;->a:Lcom/yelp/android/appdata/e;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/e;->a(Lcom/yelp/android/appdata/e;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 55
    iget-object v0, p0, Lcom/yelp/android/appdata/e$1;->a:Lcom/yelp/android/appdata/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/e;->a(Lcom/yelp/android/appdata/e;Z)Z

    .line 56
    iget-object v0, p0, Lcom/yelp/android/appdata/e$1;->a:Lcom/yelp/android/appdata/e;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/appdata/e;->a(Lcom/yelp/android/appdata/e;J)J

    .line 57
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/e$1;->a([Landroid/content/Context;)Landroid/hardware/Sensor;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Landroid/hardware/Sensor;

    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/e$1;->a(Landroid/hardware/Sensor;)V

    return-void
.end method
