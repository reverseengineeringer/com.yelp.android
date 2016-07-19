.class public Lcom/kahuna/sdk/inapp/RichInAppMessage;
.super Ljava/lang/Object;
.source "RichInAppMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kahuna/sdk/inapp/RichInAppMessage$State;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:Lorg/json/JSONObject;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kahuna/sdk/inapp/d;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/kahuna/sdk/inapp/RichInAppMessage$State;

.field private f:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;JLorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/kahuna/sdk/inapp/d;",
            ">;J",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/kahuna/sdk/inapp/RichInAppMessage$State;->UNPREPARED:Lcom/kahuna/sdk/inapp/RichInAppMessage$State;

    iput-object v0, p0, Lcom/kahuna/sdk/inapp/RichInAppMessage;->e:Lcom/kahuna/sdk/inapp/RichInAppMessage$State;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/kahuna/sdk/inapp/RichInAppMessage;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    iput-object p1, p0, Lcom/kahuna/sdk/inapp/RichInAppMessage;->a:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/kahuna/sdk/inapp/RichInAppMessage;->d:Ljava/util/List;

    .line 57
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 58
    iput-wide p3, p0, Lcom/kahuna/sdk/inapp/RichInAppMessage;->b:J

    .line 63
    :goto_0
    iput-object p5, p0, Lcom/kahuna/sdk/inapp/RichInAppMessage;->c:Lorg/json/JSONObject;

    .line 64
    return-void

    .line 60
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 61
    const-wide/32 v2, 0x15180

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kahuna/sdk/inapp/RichInAppMessage;->b:J

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/kahuna/sdk/inapp/RichInAppMessage;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 79
    .line 80
    invoke-static {p0}, Lcom/kahuna/sdk/w;->a(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    const-string/jumbo v0, "trackingId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    const-string/jumbo v0, "expiry"

    const-wide/16 v4, -0x1

    invoke-virtual {p0, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 83
    const-string/jumbo v0, "creds"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 84
    invoke-static {v2}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    const-string/jumbo v0, "templates"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 86
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-static {v7}, Lcom/kahuna/sdk/w;->a(Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_2

    .line 89
    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 90
    invoke-static {v8}, Lcom/kahuna/sdk/inapp/d;->a(Lorg/json/JSONObject;)Lcom/kahuna/sdk/inapp/d;

    move-result-object v8

    .line 91
    invoke-static {v8}, Lcom/kahuna/sdk/w;->a(Lcom/kahuna/sdk/inapp/d;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 92
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v2, "Received an invalid Rich In App Template, ignoring In App message."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    :goto_1
    return-object v1

    .line 102
    :cond_2
    invoke-static {v3}, Lcom/kahuna/sdk/w;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 103
    new-instance v1, Lcom/kahuna/sdk/inapp/RichInAppMessage;

    invoke-direct/range {v1 .. v6}, Lcom/kahuna/sdk/inapp/RichInAppMessage;-><init>(Ljava/lang/String;Ljava/util/List;JLorg/json/JSONObject;)V

    goto :goto_1

    .line 105
    :cond_3
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v2, "Received an In App message with no templates ignoring In App message."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/RichInAppMessage;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/kahuna/sdk/inapp/RichInAppMessage;->b:J

    return-wide v0
.end method

.method public c()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/RichInAppMessage;->c:Lorg/json/JSONObject;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kahuna/sdk/inapp/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/RichInAppMessage;->d:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized e()I
    .locals 1

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/RichInAppMessage;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .locals 1

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/RichInAppMessage;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized g()V
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/inapp/RichInAppMessage$State;->PREPARING:Lcom/kahuna/sdk/inapp/RichInAppMessage$State;

    iput-object v0, p0, Lcom/kahuna/sdk/inapp/RichInAppMessage;->e:Lcom/kahuna/sdk/inapp/RichInAppMessage$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized h()V
    .locals 1

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/inapp/RichInAppMessage$State;->PREPARED:Lcom/kahuna/sdk/inapp/RichInAppMessage$State;

    iput-object v0, p0, Lcom/kahuna/sdk/inapp/RichInAppMessage;->e:Lcom/kahuna/sdk/inapp/RichInAppMessage$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized i()V
    .locals 1

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/inapp/RichInAppMessage$State;->UNPREPARED:Lcom/kahuna/sdk/inapp/RichInAppMessage$State;

    iput-object v0, p0, Lcom/kahuna/sdk/inapp/RichInAppMessage;->e:Lcom/kahuna/sdk/inapp/RichInAppMessage$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized j()Lcom/kahuna/sdk/inapp/RichInAppMessage$State;
    .locals 1

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/RichInAppMessage;->e:Lcom/kahuna/sdk/inapp/RichInAppMessage$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
