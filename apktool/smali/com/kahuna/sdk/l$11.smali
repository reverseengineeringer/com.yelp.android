.class Lcom/kahuna/sdk/l$11;
.super Ljava/lang/Object;
.source "KahunaCommon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kahuna/sdk/i;

.field final synthetic b:Lcom/kahuna/sdk/l;


# direct methods
.method constructor <init>(Lcom/kahuna/sdk/l;Lcom/kahuna/sdk/i;)V
    .locals 0

    .prologue
    .line 560
    iput-object p1, p0, Lcom/kahuna/sdk/l$11;->b:Lcom/kahuna/sdk/l;

    iput-object p2, p0, Lcom/kahuna/sdk/l$11;->a:Lcom/kahuna/sdk/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 564
    iget-object v0, p0, Lcom/kahuna/sdk/l$11;->b:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/s;->f(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    .line 565
    iget-object v0, p0, Lcom/kahuna/sdk/l$11;->a:Lcom/kahuna/sdk/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kahuna/sdk/l$11;->a:Lcom/kahuna/sdk/i;

    invoke-interface {v0}, Lcom/kahuna/sdk/i;->a()Ljava/util/Map;

    move-result-object v0

    .line 566
    :goto_0
    const/4 v3, 0x0

    .line 567
    const/4 v1, 0x0

    .line 568
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 569
    iget-object v1, p0, Lcom/kahuna/sdk/l$11;->a:Lcom/kahuna/sdk/i;

    invoke-static {v1}, Lcom/kahuna/sdk/w;->a(Lcom/kahuna/sdk/i;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 632
    :cond_0
    :goto_1
    return-void

    .line 565
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 573
    :cond_2
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_3

    .line 574
    const-string/jumbo v1, "Kahuna"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "login() called and no previous credentials found. Storing new credentials: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_3
    iget-object v1, p0, Lcom/kahuna/sdk/l$11;->b:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kahuna/sdk/s;->b(Ljava/util/Map;Landroid/content/Context;)V

    move-object v1, v0

    move v0, v2

    .line 627
    :goto_2
    if-eqz v0, :cond_0

    .line 628
    new-instance v0, Lcom/kahuna/sdk/Event;

    const-string/jumbo v2, "k_user_login"

    invoke-direct {v0, v2}, Lcom/kahuna/sdk/Event;-><init>(Ljava/lang/String;)V

    .line 629
    invoke-virtual {v0, v1}, Lcom/kahuna/sdk/Event;->a(Ljava/util/Map;)V

    .line 630
    iget-object v1, p0, Lcom/kahuna/sdk/l$11;->b:Lcom/kahuna/sdk/l;

    invoke-static {v1, v0}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;Lcom/kahuna/sdk/Event;)V

    goto :goto_1

    .line 583
    :cond_4
    iget-object v5, p0, Lcom/kahuna/sdk/l$11;->a:Lcom/kahuna/sdk/i;

    invoke-static {v5}, Lcom/kahuna/sdk/w;->a(Lcom/kahuna/sdk/i;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 584
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_5

    .line 585
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "login() called with previous credentials but new credentials are empty. Triggering empty k_user_login."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_5
    iget-object v0, p0, Lcom/kahuna/sdk/l$11;->b:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->n(Lcom/kahuna/sdk/l;)V

    move v0, v2

    move-object v1, v3

    .line 588
    goto :goto_2

    .line 591
    :cond_6
    iget-object v5, p0, Lcom/kahuna/sdk/l$11;->a:Lcom/kahuna/sdk/i;

    new-instance v6, Lcom/kahuna/sdk/v;

    invoke-direct {v6, v4}, Lcom/kahuna/sdk/v;-><init>(Ljava/util/Map;)V

    invoke-interface {v5, v6}, Lcom/kahuna/sdk/i;->a(Lcom/kahuna/sdk/v;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 592
    invoke-static {v4, v0}, Lcom/kahuna/sdk/w;->a(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 594
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 595
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 596
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 598
    :cond_7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 601
    :cond_8
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_9

    .line 602
    const-string/jumbo v0, "Kahuna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "login() called with overlapping credentials. Merging all credentials: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_9
    iget-object v0, p0, Lcom/kahuna/sdk/l$11;->b:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/kahuna/sdk/s;->b(Ljava/util/Map;Landroid/content/Context;)V

    move v0, v2

    move-object v1, v4

    .line 607
    goto/16 :goto_2

    .line 609
    :cond_a
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_b

    .line 610
    const-string/jumbo v1, "Kahuna"

    const-string/jumbo v3, "login() called with no overlapping credentials. Sending up only new credentials."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_b
    iget-object v1, p0, Lcom/kahuna/sdk/l$11;->b:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->n(Lcom/kahuna/sdk/l;)V

    .line 615
    iget-object v1, p0, Lcom/kahuna/sdk/l$11;->b:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kahuna/sdk/s;->b(Ljava/util/Map;Landroid/content/Context;)V

    move-object v1, v0

    move v0, v2

    .line 617
    goto/16 :goto_2

    .line 620
    :cond_c
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_d

    .line 621
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v2, "login() called with no change in credentials."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move v0, v1

    move-object v1, v3

    goto/16 :goto_2
.end method
