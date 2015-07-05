.class public Lcom/yelp/android/appdata/k;
.super Ljava/lang/Object;
.source "CompassSensorService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/yelp/android/appdata/ar;


# instance fields
.field private final a:I

.field private final b:[F

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/yelp/android/appdata/m;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Landroid/hardware/SensorManager;

.field private e:Landroid/hardware/Sensor;

.field private f:D

.field private g:Z

.field private h:J

.field private final i:Lcom/yelp/android/appdata/StateBroadcastReceiver;

.field private final j:Landroid/os/AsyncTask;
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
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x2710

    iput v0, p0, Lcom/yelp/android/appdata/k;->a:I

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/yelp/android/appdata/k;->b:[F

    .line 43
    new-instance v0, Lcom/yelp/android/appdata/l;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/l;-><init>(Lcom/yelp/android/appdata/k;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/k;->j:Landroid/os/AsyncTask;

    .line 60
    iget-object v0, p0, Lcom/yelp/android/appdata/k;->j:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 61
    invoke-static {p1, p0}, Lcom/yelp/android/appdata/StateBroadcastReceiver;->a(Landroid/content/Context;Lcom/yelp/android/appdata/ar;)Lcom/yelp/android/appdata/StateBroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/k;->i:Lcom/yelp/android/appdata/StateBroadcastReceiver;

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/appdata/k;J)J
    .locals 1

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/yelp/android/appdata/k;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/k;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/yelp/android/appdata/k;->e:Landroid/hardware/Sensor;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/k;)Landroid/hardware/SensorManager;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yelp/android/appdata/k;->d:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/appdata/k;Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/yelp/android/appdata/k;->d:Landroid/hardware/SensorManager;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/k;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/yelp/android/appdata/k;->c:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/k;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/yelp/android/appdata/k;->g:Z

    return p1
.end method

.method private c()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/appdata/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/yelp/android/appdata/k;->b()V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/k;->a()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/yelp/android/appdata/k;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/k;->e:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/yelp/android/appdata/k;->d:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/yelp/android/appdata/k;->e:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/appdata/k;->g:Z

    .line 153
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/yelp/android/appdata/k;->a()V

    .line 141
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/m;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 103
    iget-object v1, p0, Lcom/yelp/android/appdata/k;->e:Landroid/hardware/Sensor;

    if-nez v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/yelp/android/appdata/k;->j:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/yelp/android/appdata/k;->j:Landroid/os/AsyncTask;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 107
    :cond_0
    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/appdata/k;->c:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-direct {p0}, Lcom/yelp/android/appdata/k;->c()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/yelp/android/appdata/k;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/k;->e:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/yelp/android/appdata/k;->d:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/appdata/k;->g:Z

    .line 160
    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/yelp/android/appdata/k;->b()V

    .line 146
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 74
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-eq v0, v5, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget v0, p1, Landroid/hardware/SensorEvent;->accuracy:I

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/yelp/android/appdata/k;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 79
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Lcom/yelp/android/appdata/k;->f:D

    .line 87
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    iget-object v0, p0, Lcom/yelp/android/appdata/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 89
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/appdata/m;

    .line 90
    if-eqz v1, :cond_3

    .line 91
    iget-wide v4, p0, Lcom/yelp/android/appdata/k;->f:D

    invoke-interface {v1, v4, v5}, Lcom/yelp/android/appdata/m;->a(D)V

    goto :goto_2

    .line 81
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/yelp/android/appdata/k;->b:[F

    invoke-static {v0, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/appdata/k;->b:[F

    aget v0, v0, v4

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/yelp/android/appdata/k;->f:D

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/appdata/k;->h:J

    goto :goto_1

    .line 93
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 96
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/yelp/android/appdata/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 98
    invoke-direct {p0}, Lcom/yelp/android/appdata/k;->c()V

    goto :goto_0
.end method
