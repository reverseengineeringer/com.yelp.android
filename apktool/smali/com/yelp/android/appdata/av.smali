.class final Lcom/yelp/android/appdata/av;
.super Ljava/lang/Object;
.source "StatefulLocationService.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/PriorityQueue",
            "<",
            "Landroid/location/Location;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    invoke-static {p1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 566
    iput-object v0, p0, Lcom/yelp/android/appdata/av;->b:Ljava/util/Comparator;

    .line 567
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/appdata/av;->a:Ljava/util/Map;

    .line 569
    return-void
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .locals 3

    .prologue
    .line 589
    new-instance v1, Ljava/util/PriorityQueue;

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/yelp/android/appdata/av;->b:Ljava/util/Comparator;

    invoke-direct {v1, v0, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 590
    iget-object v0, p0, Lcom/yelp/android/appdata/av;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/PriorityQueue;

    .line 591
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 592
    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 596
    :cond_1
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    return-object v0
.end method

.method public a(Landroid/location/Location;)V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 572
    if-nez p1, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/appdata/av;->a:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/PriorityQueue;

    .line 577
    if-nez v0, :cond_2

    .line 578
    new-instance v0, Ljava/util/PriorityQueue;

    iget-object v1, p0, Lcom/yelp/android/appdata/av;->b:Ljava/util/Comparator;

    invoke-direct {v0, v3, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 579
    iget-object v1, p0, Lcom/yelp/android/appdata/av;->a:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 583
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 584
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->retainAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/yelp/android/appdata/av;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/PriorityQueue;

    .line 623
    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 626
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/yelp/android/appdata/av;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 601
    return-void
.end method

.method public c()Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 604
    iget-object v0, p0, Lcom/yelp/android/appdata/av;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 605
    :goto_0
    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {p0}, Lcom/yelp/android/appdata/av;->a()Landroid/location/Location;

    move-result-object v3

    .line 607
    if-nez v3, :cond_2

    move v0, v1

    .line 618
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 604
    goto :goto_0

    .line 610
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 611
    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long v6, v4, v6

    .line 612
    const-wide/32 v8, 0xea60

    cmp-long v0, v6, v8

    if-gez v0, :cond_3

    move v0, v2

    .line 613
    :goto_2
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-gez v1, :cond_0

    .line 614
    const-string/jumbo v1, "LOCDEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Woah we went back in time, location is reporting "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " And now is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v0, v1

    .line 612
    goto :goto_2
.end method
