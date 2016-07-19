.class Lcom/yelp/android/ui/m;
.super Ljava/lang/Object;
.source "ActivityMonocle.java"


# direct methods
.method public static a(Landroid/view/SurfaceView;I)V
    .locals 5

    .prologue
    .line 468
    :try_start_0
    const-class v0, Landroid/view/SurfaceView;

    const-string/jumbo v1, "mSession"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 469
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 470
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 471
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/yelp/android/s/a;

    aput-object v4, v2, v3

    new-instance v3, Lcom/yelp/android/ui/n;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/yelp/android/ui/n;-><init>(ILjava/lang/Object;)V

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 479
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 480
    const-class v1, Landroid/view/SurfaceView;

    const-string/jumbo v2, "updateWindow"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 481
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 482
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_0
    return-void

    .line 483
    :catch_0
    move-exception v0

    .line 484
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Landroid/view/SurfaceView;I)V
    .locals 2

    .prologue
    .line 499
    :try_start_0
    const-class v0, Landroid/view/SurfaceView;

    const-string/jumbo v1, "mWindowType"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 500
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 501
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_7

    .line 528
    :goto_0
    return-void

    .line 502
    :catch_0
    move-exception v0

    .line 503
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 504
    :catch_1
    move-exception v0

    .line 508
    :try_start_1
    const-class v0, Landroid/view/SurfaceView;

    const-string/jumbo v1, "mLayout"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 509
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 510
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 512
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_0

    .line 513
    :catch_2
    move-exception v0

    .line 514
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 515
    :catch_3
    move-exception v0

    .line 516
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 517
    :catch_4
    move-exception v0

    .line 518
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 519
    :catch_5
    move-exception v0

    .line 520
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 523
    :catch_6
    move-exception v0

    .line 524
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 525
    :catch_7
    move-exception v0

    .line 526
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
