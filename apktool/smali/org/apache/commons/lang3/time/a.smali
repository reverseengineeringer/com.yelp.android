.class public Lorg/apache/commons/lang3/time/a;
.super Ljava/lang/Object;
.source "DurationFormatUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/a$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/Object;

.field static final b:Ljava/lang/Object;

.field static final c:Ljava/lang/Object;

.field static final d:Ljava/lang/Object;

.field static final e:Ljava/lang/Object;

.field static final f:Ljava/lang/Object;

.field static final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 483
    const-string/jumbo v0, "y"

    sput-object v0, Lorg/apache/commons/lang3/time/a;->a:Ljava/lang/Object;

    .line 484
    const-string/jumbo v0, "M"

    sput-object v0, Lorg/apache/commons/lang3/time/a;->b:Ljava/lang/Object;

    .line 485
    const-string/jumbo v0, "d"

    sput-object v0, Lorg/apache/commons/lang3/time/a;->c:Ljava/lang/Object;

    .line 486
    const-string/jumbo v0, "H"

    sput-object v0, Lorg/apache/commons/lang3/time/a;->d:Ljava/lang/Object;

    .line 487
    const-string/jumbo v0, "m"

    sput-object v0, Lorg/apache/commons/lang3/time/a;->e:Ljava/lang/Object;

    .line 488
    const-string/jumbo v0, "s"

    sput-object v0, Lorg/apache/commons/lang3/time/a;->f:Ljava/lang/Object;

    .line 489
    const-string/jumbo v0, "S"

    sput-object v0, Lorg/apache/commons/lang3/time/a;->g:Ljava/lang/Object;

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    const-string/jumbo v0, "HH:mm:ss.SSS"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/a;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/a;->a(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(JLjava/lang/String;Z)Ljava/lang/String;
    .locals 18

    .prologue
    .line 131
    const-wide/16 v0, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const-string/jumbo v6, "durationMillis must not be negative"

    move-wide/from16 v4, p0

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/c;->a(JJJLjava/lang/String;)V

    .line 133
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/lang3/time/a;->a(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/a$a;

    move-result-object v1

    .line 135
    const-wide/16 v6, 0x0

    .line 136
    const-wide/16 v8, 0x0

    .line 137
    const-wide/16 v10, 0x0

    .line 138
    const-wide/16 v12, 0x0

    .line 141
    sget-object v0, Lorg/apache/commons/lang3/time/a;->c:Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/time/a$a;->a([Lorg/apache/commons/lang3/time/a$a;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-wide/32 v2, 0x5265c00

    div-long v6, p0, v2

    .line 143
    const-wide/32 v2, 0x5265c00

    mul-long/2addr v2, v6

    sub-long p0, p0, v2

    .line 145
    :cond_0
    sget-object v0, Lorg/apache/commons/lang3/time/a;->d:Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/time/a$a;->a([Lorg/apache/commons/lang3/time/a$a;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    const-wide/32 v2, 0x36ee80

    div-long v8, p0, v2

    .line 147
    const-wide/32 v2, 0x36ee80

    mul-long/2addr v2, v8

    sub-long p0, p0, v2

    .line 149
    :cond_1
    sget-object v0, Lorg/apache/commons/lang3/time/a;->e:Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/time/a$a;->a([Lorg/apache/commons/lang3/time/a$a;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    const-wide/32 v2, 0xea60

    div-long v10, p0, v2

    .line 151
    const-wide/32 v2, 0xea60

    mul-long/2addr v2, v10

    sub-long p0, p0, v2

    .line 153
    :cond_2
    sget-object v0, Lorg/apache/commons/lang3/time/a;->f:Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/time/a$a;->a([Lorg/apache/commons/lang3/time/a$a;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    const-wide/16 v2, 0x3e8

    div-long v12, p0, v2

    .line 155
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v12

    sub-long v14, p0, v2

    .line 158
    :goto_0
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move/from16 v16, p3

    invoke-static/range {v1 .. v16}, Lorg/apache/commons/lang3/time/a;->a([Lorg/apache/commons/lang3/time/a$a;JJJJJJJZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move-wide/from16 v14, p0

    goto :goto_0
.end method

.method private static a(JZI)Ljava/lang/String;
    .locals 2

    .prologue
    .line 479
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 480
    if-eqz p2, :cond_0

    const/16 v1, 0x30

    invoke-static {v0, p3, v1}, Lorg/apache/commons/lang3/b;->a(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static a([Lorg/apache/commons/lang3/time/a$a;JJJJJJJZ)Ljava/lang/String;
    .locals 11

    .prologue
    .line 428
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    const/4 v4, 0x0

    .line 430
    array-length v6, p0

    const/4 v3, 0x0

    move v10, v3

    move v3, v4

    move v4, v10

    :goto_0
    if-ge v4, v6, :cond_a

    aget-object v7, p0, v4

    .line 431
    invoke-virtual {v7}, Lorg/apache/commons/lang3/time/a$a;->c()Ljava/lang/Object;

    move-result-object v8

    .line 432
    invoke-virtual {v7}, Lorg/apache/commons/lang3/time/a$a;->b()I

    move-result v7

    .line 433
    instance-of v9, v8, Ljava/lang/StringBuilder;

    if-eqz v9, :cond_1

    .line 434
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 436
    :cond_1
    sget-object v9, Lorg/apache/commons/lang3/time/a;->a:Ljava/lang/Object;

    if-ne v8, v9, :cond_2

    .line 437
    move/from16 v0, p15

    invoke-static {p1, p2, v0, v7}, Lorg/apache/commons/lang3/time/a;->a(JZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const/4 v3, 0x0

    goto :goto_1

    .line 439
    :cond_2
    sget-object v9, Lorg/apache/commons/lang3/time/a;->b:Ljava/lang/Object;

    if-ne v8, v9, :cond_3

    .line 440
    move/from16 v0, p15

    invoke-static {p3, p4, v0, v7}, Lorg/apache/commons/lang3/time/a;->a(JZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    const/4 v3, 0x0

    goto :goto_1

    .line 442
    :cond_3
    sget-object v9, Lorg/apache/commons/lang3/time/a;->c:Ljava/lang/Object;

    if-ne v8, v9, :cond_4

    .line 443
    move-wide/from16 v0, p5

    move/from16 v2, p15

    invoke-static {v0, v1, v2, v7}, Lorg/apache/commons/lang3/time/a;->a(JZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const/4 v3, 0x0

    goto :goto_1

    .line 445
    :cond_4
    sget-object v9, Lorg/apache/commons/lang3/time/a;->d:Ljava/lang/Object;

    if-ne v8, v9, :cond_5

    .line 446
    move-wide/from16 v0, p7

    move/from16 v2, p15

    invoke-static {v0, v1, v2, v7}, Lorg/apache/commons/lang3/time/a;->a(JZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    const/4 v3, 0x0

    goto :goto_1

    .line 448
    :cond_5
    sget-object v9, Lorg/apache/commons/lang3/time/a;->e:Ljava/lang/Object;

    if-ne v8, v9, :cond_6

    .line 449
    move-wide/from16 v0, p9

    move/from16 v2, p15

    invoke-static {v0, v1, v2, v7}, Lorg/apache/commons/lang3/time/a;->a(JZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const/4 v3, 0x0

    goto :goto_1

    .line 451
    :cond_6
    sget-object v9, Lorg/apache/commons/lang3/time/a;->f:Ljava/lang/Object;

    if-ne v8, v9, :cond_7

    .line 452
    move-wide/from16 v0, p11

    move/from16 v2, p15

    invoke-static {v0, v1, v2, v7}, Lorg/apache/commons/lang3/time/a;->a(JZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    const/4 v3, 0x1

    goto :goto_1

    .line 454
    :cond_7
    sget-object v9, Lorg/apache/commons/lang3/time/a;->g:Ljava/lang/Object;

    if-ne v8, v9, :cond_0

    .line 455
    if-eqz v3, :cond_9

    .line 457
    if-eqz p15, :cond_8

    const/4 v3, 0x3

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 458
    :goto_2
    const/4 v7, 0x1

    move-wide/from16 v0, p13

    invoke-static {v0, v1, v7, v3}, Lorg/apache/commons/lang3/time/a;->a(JZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    :goto_3
    const/4 v3, 0x0

    goto :goto_1

    .line 457
    :cond_8
    const/4 v3, 0x3

    goto :goto_2

    .line 460
    :cond_9
    move-wide/from16 v0, p13

    move/from16 v2, p15

    invoke-static {v0, v1, v2, v7}, Lorg/apache/commons/lang3/time/a;->a(JZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 466
    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static a(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/a$a;
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 498
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v5

    move-object v0, v2

    move-object v1, v2

    move v3, v5

    .line 505
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 506
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 507
    if-eqz v3, :cond_1

    const/16 v8, 0x27

    if-eq v6, v8, :cond_1

    .line 508
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 505
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 512
    :cond_1
    sparse-switch v6, :sswitch_data_0

    .line 546
    if-nez v1, :cond_2

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    new-instance v8, Lorg/apache/commons/lang3/time/a$a;

    invoke-direct {v8, v1}, Lorg/apache/commons/lang3/time/a$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_2
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v6, v2

    .line 553
    :goto_2
    if-eqz v6, :cond_0

    .line 554
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/a$a;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_4

    .line 555
    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/a$a;->a()V

    :goto_3
    move-object v1, v2

    .line 561
    goto :goto_1

    .line 515
    :sswitch_0
    if-eqz v3, :cond_3

    move-object v6, v2

    move-object v1, v2

    move v3, v5

    .line 517
    goto :goto_2

    .line 519
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    new-instance v3, Lorg/apache/commons/lang3/time/a$a;

    invoke-direct {v3, v1}, Lorg/apache/commons/lang3/time/a$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    const/4 v3, 0x1

    move-object v6, v2

    .line 523
    goto :goto_2

    .line 525
    :sswitch_1
    sget-object v6, Lorg/apache/commons/lang3/time/a;->a:Ljava/lang/Object;

    goto :goto_2

    .line 528
    :sswitch_2
    sget-object v6, Lorg/apache/commons/lang3/time/a;->b:Ljava/lang/Object;

    goto :goto_2

    .line 531
    :sswitch_3
    sget-object v6, Lorg/apache/commons/lang3/time/a;->c:Ljava/lang/Object;

    goto :goto_2

    .line 534
    :sswitch_4
    sget-object v6, Lorg/apache/commons/lang3/time/a;->d:Ljava/lang/Object;

    goto :goto_2

    .line 537
    :sswitch_5
    sget-object v6, Lorg/apache/commons/lang3/time/a;->e:Ljava/lang/Object;

    goto :goto_2

    .line 540
    :sswitch_6
    sget-object v6, Lorg/apache/commons/lang3/time/a;->f:Ljava/lang/Object;

    goto :goto_2

    .line 543
    :sswitch_7
    sget-object v6, Lorg/apache/commons/lang3/time/a;->g:Ljava/lang/Object;

    goto :goto_2

    .line 557
    :cond_4
    new-instance v0, Lorg/apache/commons/lang3/time/a$a;

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/time/a$a;-><init>(Ljava/lang/Object;)V

    .line 558
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 564
    :cond_5
    if-eqz v3, :cond_6

    .line 565
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unmatched quote in format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/lang3/time/a$a;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/lang3/time/a$a;

    return-object v0

    .line 512
    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x48 -> :sswitch_4
        0x4d -> :sswitch_2
        0x53 -> :sswitch_7
        0x64 -> :sswitch_3
        0x6d -> :sswitch_5
        0x73 -> :sswitch_6
        0x79 -> :sswitch_1
    .end sparse-switch
.end method
