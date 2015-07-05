.class public Lcom/crashlytics/android/internal/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/crashlytics/android/internal/bb;

.field private final b:Lcom/crashlytics/android/internal/ba;

.field private final c:Lcom/crashlytics/android/internal/bi;

.field private final d:Lcom/crashlytics/android/internal/an;

.field private final e:Lcom/crashlytics/android/internal/bz;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/internal/bb;Lcom/crashlytics/android/internal/bi;Lcom/crashlytics/android/internal/ba;Lcom/crashlytics/android/internal/an;Lcom/crashlytics/android/internal/bz;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/crashlytics/android/internal/ay;->a:Lcom/crashlytics/android/internal/bb;

    .line 29
    iput-object p2, p0, Lcom/crashlytics/android/internal/ay;->c:Lcom/crashlytics/android/internal/bi;

    .line 30
    iput-object p3, p0, Lcom/crashlytics/android/internal/ay;->b:Lcom/crashlytics/android/internal/ba;

    .line 31
    iput-object p4, p0, Lcom/crashlytics/android/internal/ay;->d:Lcom/crashlytics/android/internal/an;

    .line 32
    iput-object p5, p0, Lcom/crashlytics/android/internal/ay;->e:Lcom/crashlytics/android/internal/bz;

    .line 33
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 103
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/cl;->w()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/internal/bd;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/crashlytics/android/internal/ay;->b:Lcom/crashlytics/android/internal/ba;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/internal/ba;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 107
    :cond_0
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v0

    const-string/jumbo v1, "Crashlytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method private b(Lcom/crashlytics/android/internal/aV;)Lcom/crashlytics/android/internal/az;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 68
    .line 71
    :try_start_0
    sget-object v0, Lcom/crashlytics/android/internal/aV;->b:Lcom/crashlytics/android/internal/aV;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/internal/aV;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/crashlytics/android/internal/ay;->d:Lcom/crashlytics/android/internal/an;

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/an;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 74
    if-eqz v2, :cond_5

    .line 75
    iget-object v0, p0, Lcom/crashlytics/android/internal/ay;->b:Lcom/crashlytics/android/internal/ba;

    iget-object v3, p0, Lcom/crashlytics/android/internal/ay;->c:Lcom/crashlytics/android/internal/bi;

    invoke-virtual {v0, v3, v2}, Lcom/crashlytics/android/internal/ba;->a(Lcom/crashlytics/android/internal/bi;Lorg/json/JSONObject;)Lcom/crashlytics/android/internal/az;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_4

    .line 78
    const-string/jumbo v3, "Loaded cached settings: "

    invoke-direct {p0, v2, v3}, Lcom/crashlytics/android/internal/ay;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/crashlytics/android/internal/ay;->c:Lcom/crashlytics/android/internal/bi;

    invoke-virtual {v2}, Lcom/crashlytics/android/internal/bi;->a()J

    move-result-wide v2

    .line 82
    sget-object v4, Lcom/crashlytics/android/internal/aV;->c:Lcom/crashlytics/android/internal/aV;

    invoke-virtual {v4, p1}, Lcom/crashlytics/android/internal/aV;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-wide v4, v0, Lcom/crashlytics/android/internal/az;->f:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v2, v4, v2

    if-gez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_2

    .line 84
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v1

    const-string/jumbo v2, "Crashlytics"

    const-string/jumbo v3, "Returning cached settings."

    invoke-interface {v1, v2, v3}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    :goto_1
    return-object v0

    .line 82
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 86
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v0

    const-string/jumbo v2, "Crashlytics"

    const-string/jumbo v3, "Cached settings have expired."

    invoke-interface {v0, v2, v3}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    move-object v0, v1

    .line 97
    goto :goto_1

    .line 89
    :cond_4
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v0

    const-string/jumbo v2, "Crashlytics"

    const-string/jumbo v3, "Failed to transform cached settings data."

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    .line 92
    :cond_5
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v0

    const-string/jumbo v2, "Crashlytics"

    const-string/jumbo v3, "No cached settings data found."

    invoke-interface {v0, v2, v3}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 95
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 96
    :goto_3
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v2

    const-string/jumbo v3, "Crashlytics"

    const-string/jumbo v4, "Failed to get cached settings"

    invoke-interface {v2, v3, v4, v1}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 95
    :catch_1
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public a()Lcom/crashlytics/android/internal/az;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/crashlytics/android/internal/aV;->a:Lcom/crashlytics/android/internal/aV;

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/internal/ay;->a(Lcom/crashlytics/android/internal/aV;)Lcom/crashlytics/android/internal/az;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/crashlytics/android/internal/aV;)Lcom/crashlytics/android/internal/az;
    .locals 7

    .prologue
    .line 40
    const/4 v1, 0x0

    .line 43
    :try_start_0
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/cl;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-direct {p0, p1}, Lcom/crashlytics/android/internal/ay;->b(Lcom/crashlytics/android/internal/aV;)Lcom/crashlytics/android/internal/az;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 47
    :cond_0
    if-nez v1, :cond_1

    .line 48
    :try_start_1
    iget-object v0, p0, Lcom/crashlytics/android/internal/ay;->e:Lcom/crashlytics/android/internal/bz;

    iget-object v2, p0, Lcom/crashlytics/android/internal/ay;->a:Lcom/crashlytics/android/internal/bb;

    invoke-interface {v0, v2}, Lcom/crashlytics/android/internal/bz;->a(Lcom/crashlytics/android/internal/bb;)Lorg/json/JSONObject;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    iget-object v2, p0, Lcom/crashlytics/android/internal/ay;->b:Lcom/crashlytics/android/internal/ba;

    iget-object v3, p0, Lcom/crashlytics/android/internal/ay;->c:Lcom/crashlytics/android/internal/bi;

    invoke-virtual {v2, v3, v0}, Lcom/crashlytics/android/internal/ba;->a(Lcom/crashlytics/android/internal/bi;Lorg/json/JSONObject;)Lcom/crashlytics/android/internal/az;

    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/crashlytics/android/internal/ay;->d:Lcom/crashlytics/android/internal/an;

    iget-wide v4, v1, Lcom/crashlytics/android/internal/az;->f:J

    invoke-virtual {v2, v4, v5, v0}, Lcom/crashlytics/android/internal/an;->a(JLorg/json/JSONObject;)V

    .line 53
    const-string/jumbo v2, "Loaded settings: "

    invoke-direct {p0, v0, v2}, Lcom/crashlytics/android/internal/ay;->a(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    move-object v0, v1

    .line 58
    if-nez v0, :cond_2

    .line 59
    :try_start_2
    sget-object v1, Lcom/crashlytics/android/internal/aV;->c:Lcom/crashlytics/android/internal/aV;

    invoke-direct {p0, v1}, Lcom/crashlytics/android/internal/ay;->b(Lcom/crashlytics/android/internal/aV;)Lcom/crashlytics/android/internal/az;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 64
    :cond_2
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 62
    :goto_1
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v2

    const-string/jumbo v3, "Crashlytics"

    const-string/jumbo v4, "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved."

    invoke-interface {v2, v3, v4, v1}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 61
    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method
