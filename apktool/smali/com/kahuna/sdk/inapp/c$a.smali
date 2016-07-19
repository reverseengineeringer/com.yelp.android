.class Lcom/kahuna/sdk/inapp/c$a;
.super Landroid/os/AsyncTask;
.source "RichInAppMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kahuna/sdk/inapp/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/kahuna/sdk/inapp/RichInAppMessage;


# direct methods
.method public constructor <init>(Lcom/kahuna/sdk/inapp/RichInAppMessage;)V
    .locals 0

    .prologue
    .line 517
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 518
    iput-object p1, p0, Lcom/kahuna/sdk/inapp/c$a;->a:Lcom/kahuna/sdk/inapp/RichInAppMessage;

    .line 519
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 14

    .prologue
    .line 524
    const/4 v0, 0x1

    .line 525
    iget-object v1, p0, Lcom/kahuna/sdk/inapp/c$a;->a:Lcom/kahuna/sdk/inapp/RichInAppMessage;

    invoke-virtual {v1}, Lcom/kahuna/sdk/inapp/RichInAppMessage;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/inapp/d;

    .line 526
    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/inapp/b;

    .line 528
    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/b;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 532
    const/4 v2, 0x0

    .line 533
    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/b;->a()Ljava/lang/String;

    move-result-object v7

    .line 535
    const/4 v3, 0x3

    move v4, v1

    .line 536
    :goto_1
    if-lez v3, :cond_a

    .line 537
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 538
    const-string/jumbo v1, "Kahuna"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Starting attempt to download In App image: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ". Remaining retries: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_1
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 541
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 542
    const-string/jumbo v1, "Kahuna"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Beginning download of image url: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_2
    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 544
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 545
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 546
    const-string/jumbo v9, "Kahuna"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Image downloaded at url: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    :cond_3
    if-eqz v2, :cond_c

    .line 559
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v12, v3

    move-object v3, v1

    move v1, v12

    move-object v13, v2

    move v2, v4

    move-object v4, v13

    .line 565
    :goto_2
    if-eqz v3, :cond_7

    .line 566
    invoke-virtual {v0, v3}, Lcom/kahuna/sdk/inapp/b;->a(Landroid/graphics/Bitmap;)V

    move v0, v1

    move v1, v2

    .line 571
    :goto_3
    if-gtz v0, :cond_0

    .line 572
    const/4 v0, 0x0

    .line 576
    :goto_4
    if-nez v0, :cond_8

    move v1, v0

    .line 581
    :cond_4
    if-nez v1, :cond_9

    .line 584
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/c$a;->a:Lcom/kahuna/sdk/inapp/RichInAppMessage;

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/RichInAppMessage;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/inapp/d;

    .line 585
    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/inapp/b;

    .line 586
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/kahuna/sdk/inapp/b;->a(Landroid/graphics/Bitmap;)V

    goto :goto_5

    .line 560
    :catch_0
    move-exception v8

    .line 561
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    move v12, v3

    move-object v3, v1

    move v1, v12

    move-object v13, v2

    move v2, v4

    move-object v4, v13

    .line 562
    goto :goto_2

    .line 547
    :catch_1
    move-exception v1

    .line 548
    :try_start_2
    const-string/jumbo v3, "Kahuna"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error downloading In App Image: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string/jumbo v1, "Kahuna"

    const-string/jumbo v3, "Will not retry downloading image."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 550
    const/4 v3, 0x0

    .line 551
    const/4 v1, 0x0

    .line 552
    const/4 v4, 0x0

    .line 557
    if-eqz v2, :cond_b

    .line 559
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move v12, v3

    move-object v3, v1

    move v1, v12

    move-object v13, v2

    move v2, v4

    move-object v4, v13

    .line 562
    goto :goto_2

    .line 560
    :catch_2
    move-exception v8

    .line 561
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    move v12, v3

    move-object v3, v1

    move v1, v12

    move-object v13, v2

    move v2, v4

    move-object v4, v13

    .line 562
    goto/16 :goto_2

    .line 553
    :catch_3
    move-exception v1

    .line 554
    :try_start_4
    const-string/jumbo v8, "Kahuna"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception downloading Push Background Image: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 555
    const/4 v1, 0x0

    .line 557
    if-eqz v2, :cond_b

    .line 559
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move v12, v3

    move-object v3, v1

    move v1, v12

    move-object v13, v2

    move v2, v4

    move-object v4, v13

    .line 562
    goto/16 :goto_2

    .line 560
    :catch_4
    move-exception v8

    .line 561
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    move v12, v3

    move-object v3, v1

    move v1, v12

    move-object v13, v2

    move v2, v4

    move-object v4, v13

    .line 562
    goto/16 :goto_2

    .line 557
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_6

    .line 559
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 562
    :cond_6
    :goto_6
    throw v0

    .line 560
    :catch_5
    move-exception v1

    .line 561
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 569
    :cond_7
    add-int/lit8 v3, v1, -0x1

    move-object v12, v4

    move v4, v2

    move-object v2, v12

    goto/16 :goto_1

    :cond_8
    move v1, v0

    .line 579
    goto/16 :goto_0

    .line 590
    :cond_9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_a
    move v0, v3

    move v1, v4

    goto/16 :goto_3

    :cond_b
    move v12, v3

    move-object v3, v1

    move v1, v12

    move-object v13, v2

    move v2, v4

    move-object v4, v13

    goto/16 :goto_2

    :cond_c
    move v12, v3

    move-object v3, v1

    move v1, v12

    move-object v13, v2

    move v2, v4

    move-object v4, v13

    goto/16 :goto_2

    :cond_d
    move v0, v1

    goto/16 :goto_4
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 595
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/c$a;->a:Lcom/kahuna/sdk/inapp/RichInAppMessage;

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/RichInAppMessage;->h()V

    .line 597
    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->e()Lcom/kahuna/sdk/inapp/c;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/inapp/c;->c(Lcom/kahuna/sdk/inapp/c;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 598
    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->e()Lcom/kahuna/sdk/inapp/c;

    move-result-object v0

    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->e()Lcom/kahuna/sdk/inapp/c;

    move-result-object v1

    invoke-static {v1}, Lcom/kahuna/sdk/inapp/c;->c(Lcom/kahuna/sdk/inapp/c;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/kahuna/sdk/inapp/c$a;->a:Lcom/kahuna/sdk/inapp/RichInAppMessage;

    invoke-static {v0, v1, v2}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;Landroid/app/Activity;Lcom/kahuna/sdk/inapp/RichInAppMessage;)V

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/c$a;->a:Lcom/kahuna/sdk/inapp/RichInAppMessage;

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/RichInAppMessage;->i()V

    .line 603
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/c$a;->a:Lcom/kahuna/sdk/inapp/RichInAppMessage;

    const-string/jumbo v1, "Failed to download images."

    invoke-static {v0, v1}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/RichInAppMessage;Ljava/lang/String;)V

    .line 604
    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->e()Lcom/kahuna/sdk/inapp/c;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;)Lcom/kahuna/sdk/inapp/RichInAppMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/kahuna/sdk/inapp/c$a;->a:Lcom/kahuna/sdk/inapp/RichInAppMessage;

    if-ne v0, v1, :cond_0

    .line 605
    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->e()Lcom/kahuna/sdk/inapp/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;Lcom/kahuna/sdk/inapp/RichInAppMessage;)Lcom/kahuna/sdk/inapp/RichInAppMessage;

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 513
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kahuna/sdk/inapp/c$a;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 513
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/kahuna/sdk/inapp/c$a;->a(Ljava/lang/Boolean;)V

    return-void
.end method
