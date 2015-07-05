.class public Lcom/adjust/sdk/p;
.super Ljava/lang/Object;
.source "ResponseData.java"


# instance fields
.field private a:Lcom/adjust/sdk/ActivityKind;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    sget-object v0, Lcom/adjust/sdk/ActivityKind;->UNKNOWN:Lcom/adjust/sdk/ActivityKind;

    iput-object v0, p0, Lcom/adjust/sdk/p;->a:Lcom/adjust/sdk/ActivityKind;

    .line 17
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/adjust/sdk/p;
    .locals 4

    .prologue
    .line 98
    :try_start_0
    new-instance v0, Lcom/adjust/sdk/p;

    invoke-direct {v0}, Lcom/adjust/sdk/p;-><init>()V

    .line 99
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 101
    const-string/jumbo v2, "error"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/adjust/sdk/p;->d:Ljava/lang/String;

    .line 102
    const-string/jumbo v2, "tracker_token"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/adjust/sdk/p;->e:Ljava/lang/String;

    .line 103
    const-string/jumbo v2, "tracker_name"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/adjust/sdk/p;->f:Ljava/lang/String;

    .line 104
    const-string/jumbo v2, "network"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/adjust/sdk/p;->g:Ljava/lang/String;

    .line 105
    const-string/jumbo v2, "campaign"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/adjust/sdk/p;->h:Ljava/lang/String;

    .line 106
    const-string/jumbo v2, "adgroup"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/adjust/sdk/p;->i:Ljava/lang/String;

    .line 107
    const-string/jumbo v2, "creative"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adjust/sdk/p;->j:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-object v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    const-string/jumbo v0, "Failed to parse json response: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/adjust/sdk/p;->b(Ljava/lang/String;)Lcom/adjust/sdk/p;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/adjust/sdk/p;
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/adjust/sdk/p;

    invoke-direct {v0}, Lcom/adjust/sdk/p;-><init>()V

    .line 118
    iput-object p0, v0, Lcom/adjust/sdk/p;->d:Ljava/lang/String;

    .line 119
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/adjust/sdk/p;->a:Lcom/adjust/sdk/ActivityKind;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityKind;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/adjust/sdk/ActivityKind;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/adjust/sdk/p;->a:Lcom/adjust/sdk/ActivityKind;

    .line 142
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/adjust/sdk/p;->b:Z

    .line 146
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adjust/sdk/p;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/adjust/sdk/p;->c:Z

    .line 150
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 124
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 125
    const-string/jumbo v1, "[kind:%s success:%b willRetry:%b error:%s trackerToken:%s trackerName:%s network:%s campaign:%s adgroup:%s creative:%s]"

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/adjust/sdk/p;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 129
    iget-boolean v4, p0, Lcom/adjust/sdk/p;->b:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 130
    iget-boolean v4, p0, Lcom/adjust/sdk/p;->c:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 131
    iget-object v4, p0, Lcom/adjust/sdk/p;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/adjust/sdk/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 132
    iget-object v4, p0, Lcom/adjust/sdk/p;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 133
    iget-object v4, p0, Lcom/adjust/sdk/p;->f:Ljava/lang/String;

    invoke-static {v4}, Lcom/adjust/sdk/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 134
    iget-object v4, p0, Lcom/adjust/sdk/p;->g:Ljava/lang/String;

    invoke-static {v4}, Lcom/adjust/sdk/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 135
    iget-object v4, p0, Lcom/adjust/sdk/p;->h:Ljava/lang/String;

    invoke-static {v4}, Lcom/adjust/sdk/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 136
    iget-object v4, p0, Lcom/adjust/sdk/p;->i:Ljava/lang/String;

    invoke-static {v4}, Lcom/adjust/sdk/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    .line 137
    iget-object v4, p0, Lcom/adjust/sdk/p;->j:Ljava/lang/String;

    invoke-static {v4}, Lcom/adjust/sdk/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 124
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
