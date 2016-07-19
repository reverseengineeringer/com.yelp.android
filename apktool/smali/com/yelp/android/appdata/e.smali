.class public Lcom/yelp/android/appdata/e;
.super Ljava/lang/Object;
.source "CompassSensorService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/yelp/android/appdata/StateBroadcastReceiver$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/e$a;
    }
.end annotation


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
            "Lcom/yelp/android/appdata/e$a;",
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
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x2710

    iput v0, p0, Lcom/yelp/android/appdata/e;->a:I

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/yelp/android/appdata/e;->b:[F

    .line 42
    new-instance v0, Lcom/yelp/android/appdata/e$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/e$1;-><init>(Lcom/yelp/android/appdata/e;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/e;->j:Landroid/os/AsyncTask;

    .line 61
    iget-object v0, p0, Lcom/yelp/android/appdata/e;->j:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    invoke-static {p1, p0}, Lcom/yelp/android/appdata/StateBroadcastReceiver;->a(Landroid/content/Context;Lcom/yelp/android/appdata/StateBroadcastReceiver$a;)Lcom/yelp/android/appdata/StateBroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/e;->i:Lcom/yelp/android/appdata/StateBroadcastReceiver;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/appdata/e;J)J
    .locals 1

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/yelp/android/appdata/e;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/e;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/yelp/android/appdata/e;->e:Landroid/hardware/Sensor;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/e;)Landroid/hardware/SensorManager;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yelp/android/appdata/e;->d:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/appdata/e;Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/yelp/android/appdata/e;->d:Landroid/hardware/SensorManager;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/e;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/yelp/android/appdata/e;->c:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/e;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/yelp/android/appdata/e;->g:Z

    return p1
.end method

.method private c()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/yelp/android/appdata/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/yelp/android/appdata/e;->b()V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/e;->a()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/yelp/android/appdata/e;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/e;->e:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/yelp/android/appdata/e;->d:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/yelp/android/appdata/e;->e:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/appdata/e;->g:Z

    .line 157
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/yelp/android/appdata/e;->a()V

    .line 144
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/e$a;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 106
    iget-object v1, p0, Lcom/yelp/android/appdata/e;->e:Landroid/hardware/Sensor;

    if-nez v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/yelp/android/appdata/e;->j:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/yelp/android/appdata/e;->j:Landroid/os/AsyncTask;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 110
    :cond_0
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/appdata/e;->c:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-direct {p0}, Lcom/yelp/android/appdata/e;->c()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/yelp/android/appdata/e;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/e;->e:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/yelp/android/appdata/e;->d:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/appdata/e;->g:Z

    .line 164
    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/yelp/android/appdata/e;->b()V

    .line 149
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 76
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-eq v0, v5, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget v0, p1, Landroid/hardware/SensorEvent;->accuracy:I

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/yelp/android/appdata/e;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 81
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Lcom/yelp/android/appdata/e;->f:D

    .line 89
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    iget-object v0, p0, Lcom/yelp/android/appdata/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 92
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/appdata/e$a;

    .line 93
    if-eqz v1, :cond_3

    .line 94
    iget-wide v4, p0, Lcom/yelp/android/appdata/e;->f:D

    invoke-interface {v1, v4, v5}, Lcom/yelp/android/appdata/e$a;->a(D)V

    goto :goto_2

    .line 83
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/yelp/android/appdata/e;->b:[F

    invoke-static {v0, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iget-object v0, p0, Lcom/yelp/android/appdata/e;->b:[F

    aget v0, v0, v4

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/yelp/android/appdata/e;->f:D

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/appdata/e;->h:J

    goto :goto_1

    .line 96
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 99
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/yelp/android/appdata/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 101
    invoke-direct {p0}, Lcom/yelp/android/appdata/e;->c()V

    goto :goto_0
.end method
