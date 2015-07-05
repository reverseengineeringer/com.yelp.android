.class public Lcom/kahuna/sdk/ag;
.super Ljava/lang/Object;
.source "KahunaPreferences.java"


# direct methods
.method protected static declared-synchronized a(Landroid/content/Context;Z)Lcom/kahuna/sdk/a;
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 282
    const-class v4, Lcom/kahuna/sdk/ag;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 283
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 284
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :try_start_1
    const-string/jumbo v2, "events"

    const/4 v3, 0x0

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 290
    invoke-static {v3}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 292
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 294
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v8, :cond_3

    .line 295
    :try_start_2
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 296
    invoke-static {v9, p1}, Lcom/kahuna/sdk/Event;->a(Lorg/json/JSONObject;Z)Lcom/kahuna/sdk/Event;

    move-result-object v10

    .line 297
    if-eqz v10, :cond_0

    .line 298
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    :cond_0
    if-nez v0, :cond_1

    move-object v0, v3

    .line 306
    :cond_1
    const-string/jumbo v10, "event"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 311
    :catch_0
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    .line 312
    :goto_2
    :try_start_3
    sget-boolean v2, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v2, :cond_2

    .line 313
    const-string/jumbo v2, "KahunaAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception getting saved events: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 316
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "events"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    .line 318
    :cond_3
    new-instance v2, Lcom/kahuna/sdk/a;

    invoke-direct {v2, v1, v0, v6}, Lcom/kahuna/sdk/a;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    return-object v2

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 311
    :catch_1
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_2
.end method

.method protected static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    invoke-static {p0}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 89
    const-string/jumbo v1, "device_id"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 672
    const-class v4, Lcom/kahuna/sdk/ag;

    monitor-enter v4

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 673
    invoke-static {p0}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 676
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v5, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 678
    invoke-static {v0}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 679
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 680
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 681
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v7, :cond_7

    .line 682
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 683
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 685
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 686
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 687
    const/4 v2, 0x0

    .line 688
    const-class v10, Ljava/lang/String;

    if-ne p2, v10, :cond_2

    .line 689
    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 704
    :cond_0
    :goto_2
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 709
    :catch_0
    move-exception v0

    .line 710
    :try_start_2
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_1

    .line 711
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception getting stored internal map: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 714
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 716
    :goto_3
    monitor-exit v4

    return-object v0

    .line 691
    :cond_2
    :try_start_3
    const-class v10, Ljava/lang/Long;

    if-ne p2, v10, :cond_3

    .line 692
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_2

    .line 694
    :cond_3
    const-class v10, Ljava/lang/Integer;

    if-ne p2, v10, :cond_4

    .line 695
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    .line 697
    :cond_4
    const-class v10, Ljava/lang/Boolean;

    if-ne p2, v10, :cond_5

    .line 698
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_2

    .line 700
    :cond_5
    const-class v10, Ljava/lang/Double;

    if-ne p2, v10, :cond_0

    .line 701
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto :goto_2

    .line 681
    :cond_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    .line 715
    goto :goto_3

    .line 672
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public static declared-synchronized a(Lcom/kahuna/sdk/h;Landroid/content/Context;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kahuna/sdk/h;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 468
    const-class v2, Lcom/kahuna/sdk/ag;

    monitor-enter v2

    if-eqz p0, :cond_0

    :try_start_0
    instance-of v0, p0, Lcom/kahuna/sdk/h;

    if-nez v0, :cond_1

    .line 469
    :cond_0
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v1, "You cannot request to get any data from Kahuna preferences externally from the Kahuna SDK. Aborting!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    :goto_0
    monitor-exit v2

    return-object v0

    .line 473
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 474
    invoke-static {p1}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 477
    :try_start_2
    const-string/jumbo v0, "geofencing_regions"

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-static {v0}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 481
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 484
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 485
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 486
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 487
    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 491
    :catch_0
    move-exception v0

    .line 492
    :try_start_3
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_2

    .line 493
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception getting saved region Ids: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 496
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v3, "geofencing_regions"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    move-object v0, v1

    .line 497
    goto :goto_0
.end method

.method protected static a(JLandroid/content/Context;)V
    .locals 2

    .prologue
    .line 371
    invoke-static {p2}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 372
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_flush_timestamp"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 373
    return-void
.end method

.method protected static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 381
    if-nez p1, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    invoke-static {p0}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 387
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "sdk_configuration"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_0

    .line 391
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception saving SDK configuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static declared-synchronized a(Lcom/kahuna/sdk/h;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 648
    const-class v1, Lcom/kahuna/sdk/ag;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    instance-of v0, p0, Lcom/kahuna/sdk/h;

    if-nez v0, :cond_1

    .line 649
    :cond_0
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v2, "You cannot request to save any data to Kahuna preferences externally from the Kahuna SDK. Aborting!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    :goto_0
    monitor-exit v1

    return-void

    .line 653
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 654
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "last_entered_region_id"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/kahuna/sdk/h;Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 4

    .prologue
    .line 566
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/kahuna/sdk/h;

    if-nez v0, :cond_2

    .line 567
    :cond_0
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v1, "You cannot request to save any data to Kahuna preferences externally from the Kahuna SDK. Aborting!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_1
    :goto_0
    return-void

    .line 571
    :cond_2
    invoke-static {p1}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 573
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "tracked_ibeacons"

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 574
    :catch_0
    move-exception v0

    .line 575
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_1

    .line 576
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception saving tracked iBeacons: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static declared-synchronized a(Lcom/kahuna/sdk/h;Ljava/util/List;Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kahuna/sdk/h;",
            "Ljava/util/List",
            "<",
            "Lcom/kahuna/sdk/location/d;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 502
    const-class v1, Lcom/kahuna/sdk/ag;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    instance-of v0, p0, Lcom/kahuna/sdk/h;

    if-nez v0, :cond_2

    .line 503
    :cond_0
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v2, "You cannot request to save any data to Kahuna preferences externally from the Kahuna SDK. Aborting!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    .line 507
    :cond_2
    :try_start_1
    invoke-static {p2}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 508
    if-nez p1, :cond_3

    .line 510
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "geofencing_objects_list"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 515
    :cond_3
    :try_start_2
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 518
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/location/d;

    .line 519
    invoke-virtual {v0}, Lcom/kahuna/sdk/location/d;->g()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 525
    :catch_0
    move-exception v0

    .line 526
    :try_start_3
    sget-boolean v2, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v2, :cond_1

    .line 527
    const-string/jumbo v2, "KahunaAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception saving geofences: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 523
    :cond_4
    :try_start_4
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "geofencing_objects_list"

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized a(Lcom/kahuna/sdk/h;Ljava/util/Map;Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kahuna/sdk/h;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 438
    const-class v1, Lcom/kahuna/sdk/ag;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    instance-of v0, p0, Lcom/kahuna/sdk/h;

    if-nez v0, :cond_2

    .line 439
    :cond_0
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v2, "You cannot request to save any data to Kahuna preferences externally from the Kahuna SDK. Aborting!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    .line 443
    :cond_2
    :try_start_1
    invoke-static {p2}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 444
    if-nez p1, :cond_3

    .line 446
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "geofencing_regions"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 451
    :cond_3
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 454
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 455
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 461
    :catch_0
    move-exception v0

    .line 462
    :try_start_3
    sget-boolean v2, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v2, :cond_1

    .line 463
    const-string/jumbo v2, "KahunaAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception saving region Ids: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 459
    :cond_4
    :try_start_4
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "geofencing_regions"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 83
    invoke-static {p1}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "device_id"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    return-void
.end method

.method protected static declared-synchronized a(Ljava/util/List;Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kahuna/sdk/Event;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 249
    const-class v2, Lcom/kahuna/sdk/ag;

    monitor-enter v2

    :try_start_0
    invoke-static {p1}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 250
    if-nez p0, :cond_1

    .line 252
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "events"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 259
    :cond_1
    :try_start_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 262
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 263
    sget v0, Lcom/kahuna/sdk/h;->b:I

    sub-int v0, v5, v0

    .line 264
    if-gez v0, :cond_2

    .line 265
    const/4 v0, 0x0

    :cond_2
    move v1, v0

    .line 266
    :goto_1
    if-ge v1, v5, :cond_4

    .line 267
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/Event;

    invoke-virtual {v0}, Lcom/kahuna/sdk/Event;->h()Lorg/json/JSONObject;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_3

    .line 269
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 266
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 273
    :cond_4
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "events"

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    :try_start_2
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_0

    .line 277
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception saving events: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method protected static a(Ljava/util/Map;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 138
    const-string/jumbo v0, "user_credentials"

    invoke-static {p0, p1, v0}, Lcom/kahuna/sdk/ag;->a(Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method private static declared-synchronized a(Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 161
    const-class v4, Lcom/kahuna/sdk/ag;

    monitor-enter v4

    :try_start_0
    invoke-static {p1}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 162
    if-nez p0, :cond_0

    .line 163
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :goto_0
    monitor-exit v4

    return-void

    .line 168
    :cond_0
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 170
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 171
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 173
    instance-of v2, v3, Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-static {v2}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 175
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_1

    .line 176
    const-string/jumbo v1, "KahunaAnalytics"

    const-string/jumbo v2, "Ignoring attempt to save null or empty string value in internal hashmap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 191
    :catch_0
    move-exception v1

    .line 192
    :try_start_2
    sget-boolean v2, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v2, :cond_2

    .line 193
    const-string/jumbo v2, "KahunaAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception saving user map: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_2
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1

    .line 180
    :cond_3
    :try_start_3
    instance-of v2, v3, Lorg/json/JSONArray;

    if-nez v2, :cond_4

    instance-of v2, v3, Lorg/json/JSONObject;

    if-eqz v2, :cond_5

    .line 181
    :cond_4
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_1

    .line 182
    const-string/jumbo v1, "KahunaAnalytics"

    const-string/jumbo v2, "Ignoring attempt to save JSON Objects in internal hashmap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 187
    :cond_5
    invoke-virtual {v6, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 190
    :cond_6
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method protected static declared-synchronized a(Ljava/util/Set;Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 322
    const-class v1, Lcom/kahuna/sdk/ag;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 323
    if-nez p0, :cond_1

    .line 325
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "dirty_user_attributes"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 330
    :cond_1
    :try_start_1
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 331
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 332
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 338
    :catch_0
    move-exception v0

    .line 339
    :try_start_2
    sget-boolean v2, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v2, :cond_0

    .line 340
    const-string/jumbo v2, "KahunaAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception saving dirty user attributes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 336
    :cond_2
    :try_start_3
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "dirty_user_attributes"

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected static declared-synchronized a(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 641
    const-class v1, Lcom/kahuna/sdk/ag;

    monitor-enter v1

    if-eqz p0, :cond_0

    .line 642
    :try_start_0
    invoke-static {p1}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 643
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "debug_manager_storage_object"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    :cond_0
    monitor-exit v1

    return-void

    .line 641
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static a(ZLandroid/content/Context;)V
    .locals 2

    .prologue
    .line 93
    invoke-static {p1}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 94
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "push_enabled"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    return-void
.end method

.method public static declared-synchronized b(Lcom/kahuna/sdk/h;Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kahuna/sdk/h;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kahuna/sdk/location/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    const-class v2, Lcom/kahuna/sdk/ag;

    monitor-enter v2

    if-eqz p0, :cond_0

    :try_start_0
    instance-of v0, p0, Lcom/kahuna/sdk/h;

    if-nez v0, :cond_2

    .line 533
    :cond_0
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v1, "You cannot request to get any data from Kahuna preferences externally from the Kahuna SDK. Aborting!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    :cond_1
    :goto_0
    monitor-exit v2

    return-object v0

    .line 537
    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 538
    invoke-static {p1}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 541
    :try_start_2
    const-string/jumbo v1, "geofencing_objects_list"

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 543
    invoke-static {v1}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 545
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 546
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 547
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 548
    invoke-static {v5}, Lcom/kahuna/sdk/location/d;->a(Lorg/json/JSONObject;)Lcom/kahuna/sdk/location/d;

    move-result-object v5

    .line 549
    if-eqz v5, :cond_3

    .line 550
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 546
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 555
    :catch_0
    move-exception v0

    .line 556
    :try_start_3
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_4

    .line 557
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception getting saved geofences: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 560
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v3, "geofencing_objects_list"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 532
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 209
    const-class v4, Lcom/kahuna/sdk/ag;

    monitor-enter v4

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 210
    invoke-static {p0}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 213
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v5, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v0}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 216
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 219
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 220
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    const-class v2, Ljava/lang/String;

    if-ne p2, v2, :cond_1

    .line 223
    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    :goto_1
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    :try_start_2
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_0

    .line 240
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception getting stored internal map: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 243
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    :goto_2
    monitor-exit v4

    return-object v0

    .line 224
    :cond_1
    :try_start_3
    const-class v2, Ljava/lang/Long;

    if-ne p2, v2, :cond_2

    .line 225
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    .line 226
    :cond_2
    const-class v2, Ljava/lang/Integer;

    if-ne p2, v2, :cond_3

    .line 227
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 228
    :cond_3
    const-class v2, Ljava/lang/Boolean;

    if-ne p2, v2, :cond_4

    .line 229
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    .line 230
    :cond_4
    const-class v2, Ljava/lang/Double;

    if-ne p2, v2, :cond_6

    .line 231
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto :goto_1

    :cond_5
    move-object v0, v1

    .line 244
    goto :goto_2

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_6
    move-object v2, v3

    goto :goto_1
.end method

.method protected static b(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 113
    invoke-static {p1}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "prev_push_token"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    return-void
.end method

.method protected static b(Ljava/util/Map;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 147
    const-string/jumbo v0, "user_attributes"

    invoke-static {p0, p1, v0}, Lcom/kahuna/sdk/ag;->a(Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method protected static b(ZLandroid/content/Context;)V
    .locals 2

    .prologue
    .line 123
    invoke-static {p1}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "insert_credentials"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    return-void
.end method

.method protected static b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 98
    invoke-static {p0}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 99
    const-string/jumbo v1, "push_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 118
    invoke-static {p0}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 119
    const-string/jumbo v1, "prev_push_token"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized c(Lcom/kahuna/sdk/h;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 658
    const-class v1, Lcom/kahuna/sdk/ag;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    instance-of v2, p0, Lcom/kahuna/sdk/h;

    if-nez v2, :cond_1

    .line 659
    :cond_0
    const-string/jumbo v2, "KahunaAnalytics"

    const-string/jumbo v3, "You cannot request to get any data from Kahuna preferences externally from the Kahuna SDK. Aborting!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    :goto_0
    monitor-exit v1

    return-object v0

    .line 663
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 664
    const-string/jumbo v2, "last_entered_region_id"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 658
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static c(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 419
    invoke-static {p1}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 420
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "prev_sdk_version"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 421
    return-void
.end method

.method protected static declared-synchronized c(Ljava/util/Map;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 429
    const-class v1, Lcom/kahuna/sdk/ag;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "received_push_message_ids"

    invoke-static {p0, p1, v0}, Lcom/kahuna/sdk/ag;->a(Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    monitor-exit v1

    return-void

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static d(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 128
    invoke-static {p0}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 129
    const-string/jumbo v1, "insert_credentials"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected static e(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    const-string/jumbo v0, "user_credentials"

    const-class v1, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/kahuna/sdk/ag;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected static f(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    const-string/jumbo v0, "user_attributes"

    const-class v1, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/kahuna/sdk/ag;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected static declared-synchronized g(Landroid/content/Context;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    const-class v2, Lcom/kahuna/sdk/ag;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 346
    invoke-static {p0}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 349
    :try_start_1
    const-string/jumbo v1, "dirty_user_attributes"

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-static {v1}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 353
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 355
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_1

    .line 356
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    :try_start_2
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_0

    .line 362
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception getting saved dirty user attributes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 365
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v3, "dirty_user_attributes"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    :cond_1
    monitor-exit v2

    return-object v0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method protected static h(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 376
    invoke-static {p0}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 377
    const-string/jumbo v1, "last_flush_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected static i(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 396
    invoke-static {p0}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 400
    :try_start_0
    const-string/jumbo v2, "sdk_configuration"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 402
    invoke-static {v2}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 403
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    if-nez v0, :cond_0

    .line 412
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 415
    :cond_0
    return-object v0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    sget-boolean v2, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v2, :cond_1

    .line 408
    const-string/jumbo v2, "KahunaAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception getting SDK configuration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method protected static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 424
    invoke-static {p0}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 425
    const-string/jumbo v1, "prev_sdk_version"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static declared-synchronized k(Landroid/content/Context;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 434
    const-class v1, Lcom/kahuna/sdk/ag;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "received_push_message_ids"

    const-class v2, Ljava/lang/Long;

    invoke-static {p0, v0, v2}, Lcom/kahuna/sdk/ag;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static declared-synchronized l(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 624
    const-class v1, Lcom/kahuna/sdk/ag;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/kahuna/sdk/ag;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 628
    :try_start_1
    const-string/jumbo v2, "debug_manager_storage_object"

    const-string/jumbo v3, "{}"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 629
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 637
    :goto_0
    monitor-exit v1

    return-object v0

    .line 631
    :catch_0
    move-exception v0

    .line 632
    :try_start_2
    sget-boolean v2, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v2, :cond_0

    .line 633
    const-string/jumbo v2, "KahunaAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception getting internal Debug Manager preferences: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 624
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static m(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 79
    const-string/jumbo v0, "com.kahuna.sdk.android"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
