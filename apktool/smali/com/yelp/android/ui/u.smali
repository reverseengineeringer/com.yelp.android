.class Lcom/yelp/android/ui/u;
.super Ljava/lang/Object;
.source "ActivityMonocle.java"


# direct methods
.method public static a(Landroid/view/SurfaceView;I)V
    .locals 6

    .prologue
    .line 465
    :try_start_0
    const-class v0, Landroid/view/SurfaceView;

    const-string/jumbo v1, "mSession"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 467
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    .line 468
    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 469
    const-class v2, Landroid/view/SurfaceView;

    const-string/jumbo v3, "updateWindow"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 470
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 471
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 472
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 473
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/yelp/android/n/a;

    aput-object v5, v3, v4

    new-instance v4, Lcom/yelp/android/ui/v;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/yelp/android/ui/v;-><init>(ILjava/lang/Object;)V

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 478
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    .line 492
    :goto_0
    return-void

    .line 479
    :catch_0
    move-exception v0

    .line 480
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    goto :goto_0

    .line 481
    :catch_1
    move-exception v0

    .line 482
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    goto :goto_0

    .line 483
    :catch_2
    move-exception v0

    .line 484
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    goto :goto_0

    .line 485
    :catch_3
    move-exception v0

    .line 486
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    goto :goto_0

    .line 487
    :catch_4
    move-exception v0

    .line 488
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    goto :goto_0

    .line 489
    :catch_5
    move-exception v0

    .line 490
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static b(Landroid/view/SurfaceView;I)V
    .locals 2

    .prologue
    .line 505
    :try_start_0
    const-class v0, Landroid/view/SurfaceView;

    const-string/jumbo v1, "mWindowType"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 506
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 507
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_7

    .line 534
    :goto_0
    return-void

    .line 508
    :catch_0
    move-exception v0

    .line 509
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    goto :goto_0

    .line 510
    :catch_1
    move-exception v0

    .line 514
    :try_start_1
    const-class v0, Landroid/view/SurfaceView;

    const-string/jumbo v1, "mLayout"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 515
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 516
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 518
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_0

    .line 519
    :catch_2
    move-exception v0

    .line 520
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    goto :goto_0

    .line 521
    :catch_3
    move-exception v0

    .line 522
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    goto :goto_0

    .line 523
    :catch_4
    move-exception v0

    .line 524
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    goto :goto_0

    .line 525
    :catch_5
    move-exception v0

    .line 526
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    goto :goto_0

    .line 529
    :catch_6
    move-exception v0

    .line 530
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    goto :goto_0

    .line 531
    :catch_7
    move-exception v0

    .line 532
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    goto :goto_0
.end method
