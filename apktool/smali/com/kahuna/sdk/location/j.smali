.class Lcom/kahuna/sdk/location/j;
.super Ljava/lang/Object;
.source "KahunaIBeaconManager.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# instance fields
.field final synthetic a:Lcom/kahuna/sdk/location/KahunaIBeaconManager;


# direct methods
.method constructor <init>(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/kahuna/sdk/location/j;->a:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 6

    .prologue
    .line 397
    iget-object v0, p0, Lcom/kahuna/sdk/location/j;->a:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    invoke-static {v0, p3}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a(Lcom/kahuna/sdk/location/KahunaIBeaconManager;[B)Lcom/kahuna/sdk/location/i;

    move-result-object v0

    .line 400
    if-nez v0, :cond_0

    .line 425
    :goto_0
    return-void

    .line 403
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kahuna/sdk/location/i;->b(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kahuna/sdk/location/i;->c(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v0, p2}, Lcom/kahuna/sdk/location/i;->c(I)V

    .line 406
    iget-object v1, p0, Lcom/kahuna/sdk/location/j;->a:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    invoke-virtual {v0}, Lcom/kahuna/sdk/location/i;->e()I

    move-result v2

    int-to-double v4, p2

    invoke-static {v1, v2, v4, v5}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a(Lcom/kahuna/sdk/location/KahunaIBeaconManager;ID)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/kahuna/sdk/location/i;->b(I)V

    .line 408
    invoke-static {}, Lcom/kahuna/sdk/h;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    const-string/jumbo v1, "KahunaEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Beacon scanned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/kahuna/sdk/location/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_1
    invoke-static {}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->d()Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    move-result-object v1

    invoke-static {v1}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->c(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 414
    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->d()Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    move-result-object v2

    invoke-static {v2}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->e(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a(Ljava/util/Set;Lcom/kahuna/sdk/location/i;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 415
    iget-object v2, p0, Lcom/kahuna/sdk/location/j;->a:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    invoke-static {v2}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->d(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a(Ljava/util/Set;Lcom/kahuna/sdk/location/i;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 416
    invoke-static {}, Lcom/kahuna/sdk/h;->p()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 417
    const-string/jumbo v2, "KahunaEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Tracking iBeacon enter for UUID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/kahuna/sdk/location/i;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_2
    invoke-static {}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->d()Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    move-result-object v2

    invoke-static {v2}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->f(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Lcom/kahuna/sdk/h;

    move-result-object v2

    const-string/jumbo v3, "enter"

    invoke-static {v2, v0, v3}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/location/i;Ljava/lang/String;)V

    .line 422
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    iget-object v1, p0, Lcom/kahuna/sdk/location/j;->a:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    invoke-static {v1}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 422
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
