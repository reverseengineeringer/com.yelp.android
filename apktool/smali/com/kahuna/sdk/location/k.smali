.class Lcom/kahuna/sdk/location/k;
.super Ljava/lang/Object;
.source "KahunaIBeaconManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

.field private b:Ljava/lang/Object;

.field private c:Z


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 325
    iget-object v1, p0, Lcom/kahuna/sdk/location/k;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 326
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/kahuna/sdk/location/k;->c:Z

    .line 327
    monitor-exit v1

    .line 328
    return-void

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 331
    iget-object v2, p0, Lcom/kahuna/sdk/location/k;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 332
    :try_start_0
    iget-boolean v3, p0, Lcom/kahuna/sdk/location/k;->c:Z

    if-nez v3, :cond_0

    .line 333
    monitor-exit v2

    .line 340
    :goto_0
    return v0

    .line 335
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/kahuna/sdk/location/k;->c:Z

    .line 336
    invoke-static {}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->b()Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    move-result-object v3

    sget-object v4, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;->SCANNING:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    if-ne v3, v4, :cond_1

    .line 337
    monitor-exit v2

    goto :goto_0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 340
    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 345
    iget-object v1, p0, Lcom/kahuna/sdk/location/k;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 346
    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;->SCANNING:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    invoke-static {v0}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a(Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;)Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    .line 347
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 348
    iget-boolean v0, p0, Lcom/kahuna/sdk/location/k;->c:Z

    .line 349
    :goto_0
    if-nez v0, :cond_5

    .line 351
    iget-object v0, p0, Lcom/kahuna/sdk/location/k;->a:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/kahuna/sdk/location/k;->a:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    invoke-static {v2}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a(Lcom/kahuna/sdk/location/KahunaIBeaconManager;Ljava/util/Set;)Ljava/util/Set;

    .line 352
    iget-object v0, p0, Lcom/kahuna/sdk/location/k;->a:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    invoke-static {v0}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 353
    invoke-static {}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->c()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/kahuna/sdk/location/k;->a:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    invoke-static {v1}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->b(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 354
    invoke-static {}, Lcom/kahuna/sdk/h;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    const-string/jumbo v0, "KahunaEngine"

    const-string/jumbo v1, "Beginning BLE Scan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    const-wide/16 v0, 0x2710

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 359
    invoke-static {}, Lcom/kahuna/sdk/h;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    const-string/jumbo v0, "KahunaEngine"

    const-string/jumbo v1, "BLE Scan resting period"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_1
    invoke-static {}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->c()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/kahuna/sdk/location/k;->a:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    invoke-static {v1}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->b(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 364
    invoke-static {}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->d()Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->c(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 365
    :try_start_2
    iget-object v0, p0, Lcom/kahuna/sdk/location/k;->a:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    invoke-static {v0}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->d(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/location/i;

    .line 366
    invoke-static {}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->d()Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    move-result-object v3

    invoke-static {v3}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->e(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a(Ljava/util/Set;Lcom/kahuna/sdk/location/i;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/kahuna/sdk/location/k;->a:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    invoke-static {v3}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a(Ljava/util/Set;Lcom/kahuna/sdk/location/i;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 368
    invoke-static {}, Lcom/kahuna/sdk/h;->p()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 369
    const-string/jumbo v3, "KahunaEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Tracking iBeacon exit for UUID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/kahuna/sdk/location/i;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_3
    invoke-static {}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->d()Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    move-result-object v3

    invoke-static {v3}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->f(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Lcom/kahuna/sdk/h;

    move-result-object v3

    const-string/jumbo v4, "exit"

    invoke-static {v3, v0, v4}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/location/i;Ljava/lang/String;)V

    goto :goto_1

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 380
    :goto_2
    iget-object v1, p0, Lcom/kahuna/sdk/location/k;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 381
    :try_start_4
    iget-boolean v0, p0, Lcom/kahuna/sdk/location/k;->c:Z

    .line 382
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 347
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 374
    :cond_4
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 376
    const-wide/16 v0, 0x2710

    :try_start_7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    .line 384
    :cond_5
    iget-object v1, p0, Lcom/kahuna/sdk/location/k;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 385
    :try_start_8
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;->NOT_SCANNING:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    invoke-static {v0}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a(Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;)Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kahuna/sdk/location/k;->c:Z

    .line 387
    monitor-exit v1

    .line 388
    return-void

    .line 387
    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0
.end method
