.class public Lcom/kahuna/sdk/ai;
.super Ljava/lang/Object;
.source "KahunaSDKUpgradeManager.java"


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/kahuna/sdk/ai;->a:J

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 153
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 154
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 155
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 50
    :try_start_0
    invoke-static {p0}, Lcom/kahuna/sdk/ag;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {}, Lcom/kahuna/sdk/h;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    invoke-static {}, Lcom/kahuna/sdk/h;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/kahuna/sdk/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/kahuna/sdk/h;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/kahuna/sdk/ag;->c(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_0

    .line 59
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception checking SDK upgrade: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 75
    :try_start_0
    invoke-static {p1}, Lcom/kahuna/sdk/ai;->a(Ljava/lang/String;)I

    move-result v0

    .line 76
    const/16 v1, 0x1cb

    if-gt v0, v1, :cond_1

    .line 77
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_0

    .line 78
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Upgrading from SDK version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " deleting old SDK Config."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    new-instance v1, Lcom/kahuna/sdk/ah;

    invoke-direct {v1}, Lcom/kahuna/sdk/ah;-><init>()V

    invoke-static {p0, v1}, Lcom/kahuna/sdk/ah;->a(Landroid/content/Context;Lcom/kahuna/sdk/ah;)V

    .line 82
    :cond_1
    const/16 v1, 0x202

    if-gt v0, v1, :cond_3

    .line 83
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_2

    .line 84
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Upgrading from SDK version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Setting old config version to 0."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_2
    invoke-static {p0}, Lcom/kahuna/sdk/ah;->a(Landroid/content/Context;)Lcom/kahuna/sdk/ah;

    move-result-object v1

    .line 87
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/kahuna/sdk/ah;->a(J)V

    .line 88
    invoke-static {p0, v1}, Lcom/kahuna/sdk/ah;->a(Landroid/content/Context;Lcom/kahuna/sdk/ah;)V

    .line 92
    :cond_3
    if-eqz v0, :cond_5

    const/16 v1, 0x204

    if-gt v0, v1, :cond_5

    .line 93
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/kahuna/sdk/ag;->a(Lcom/kahuna/sdk/h;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    .line 94
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 95
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_4

    .line 96
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Upgrading from SDK version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with actively monitored regions. Wiping out regions, and setting delay to ignore first enter geofence."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_4
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Lcom/kahuna/sdk/ag;->a(Lcom/kahuna/sdk/h;Ljava/util/Map;Landroid/content/Context;)V

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/32 v4, 0x15180

    add-long/2addr v2, v4

    sput-wide v2, Lcom/kahuna/sdk/ai;->a:J

    .line 104
    :cond_5
    const/16 v1, 0x226

    if-gt v0, v1, :cond_7

    .line 105
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_6

    .line 106
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Upgrading from SDK version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Migrating user credentials and attributes to new storage format."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_6
    const-string/jumbo v1, "user_credentials"

    const-class v2, Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/kahuna/sdk/ag;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    .line 109
    const-string/jumbo v2, "user_attributes"

    const-class v3, Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lcom/kahuna/sdk/ag;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v2

    .line 112
    invoke-static {v1, p0}, Lcom/kahuna/sdk/ag;->a(Ljava/util/Map;Landroid/content/Context;)V

    .line 113
    invoke-static {v2, p0}, Lcom/kahuna/sdk/ag;->b(Ljava/util/Map;Landroid/content/Context;)V

    .line 115
    :cond_7
    const/16 v1, 0x22c

    if-gt v0, v1, :cond_9

    .line 116
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_8

    .line 117
    const-string/jumbo v0, "KahunaAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Upgrading from SDK version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " re-calculating the event object checksums."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_8
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/kahuna/sdk/ag;->a(Landroid/content/Context;Z)Lcom/kahuna/sdk/a;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/kahuna/sdk/a;->a()Ljava/util/List;

    move-result-object v0

    .line 123
    invoke-static {v0, p0}, Lcom/kahuna/sdk/ag;->a(Ljava/util/List;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_9
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_9

    .line 129
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception performing upgrade script: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static a(Z)Z
    .locals 8

    .prologue
    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    .line 136
    const/4 v0, 0x0

    .line 137
    sget-wide v4, Lcom/kahuna/sdk/ai;->a:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 138
    sget-wide v4, Lcom/kahuna/sdk/ai;->a:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 139
    const/4 v0, 0x1

    .line 142
    :cond_0
    if-eqz p0, :cond_1

    .line 143
    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/kahuna/sdk/ai;->a:J

    .line 146
    :cond_1
    return v0
.end method
