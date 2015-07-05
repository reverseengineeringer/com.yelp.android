.class public Lcom/kahuna/sdk/location/i;
.super Ljava/lang/Object;
.source "KahunaIBeacon.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:J


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 5

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/kahuna/sdk/location/i;->a:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lcom/kahuna/sdk/location/i;->b:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/kahuna/sdk/location/i;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/kahuna/sdk/location/i;->b:Ljava/lang/String;

    const-string/jumbo v1, "-"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 100
    :cond_0
    iput p3, p0, Lcom/kahuna/sdk/location/i;->c:I

    .line 101
    iput p4, p0, Lcom/kahuna/sdk/location/i;->d:I

    .line 103
    iget-wide v0, p0, Lcom/kahuna/sdk/location/i;->j:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v2, 0x15180

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kahuna/sdk/location/i;->j:J

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_1
    iput-wide p5, p0, Lcom/kahuna/sdk/location/i;->j:J

    goto :goto_0
.end method

.method protected static a([B)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 140
    const-string/jumbo v0, ""

    move-object v2, v0

    move v0, v1

    .line 141
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%2X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p0, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    return-object v2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/kahuna/sdk/location/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected a(I)V
    .locals 0

    .prologue
    .line 167
    iput p1, p0, Lcom/kahuna/sdk/location/i;->e:I

    .line 168
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/kahuna/sdk/location/i;->a:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/kahuna/sdk/location/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected b(I)V
    .locals 0

    .prologue
    .line 175
    iput p1, p0, Lcom/kahuna/sdk/location/i;->f:I

    .line 176
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/kahuna/sdk/location/i;->h:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/kahuna/sdk/location/i;->c:I

    return v0
.end method

.method protected c(I)V
    .locals 0

    .prologue
    .line 183
    iput p1, p0, Lcom/kahuna/sdk/location/i;->i:I

    .line 184
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/kahuna/sdk/location/i;->g:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/kahuna/sdk/location/i;->d:I

    return v0
.end method

.method protected e()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/kahuna/sdk/location/i;->e:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 227
    if-nez p1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v1

    .line 230
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v0, v3, :cond_0

    .line 233
    check-cast p1, Lcom/kahuna/sdk/location/i;

    .line 234
    iget-object v0, p0, Lcom/kahuna/sdk/location/i;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/kahuna/sdk/location/i;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kahuna/sdk/location/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget v0, p0, Lcom/kahuna/sdk/location/i;->c:I

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Lcom/kahuna/sdk/location/i;->c()I

    move-result v0

    if-gez v0, :cond_6

    :cond_2
    move v0, v2

    .line 242
    :goto_1
    iget v3, p0, Lcom/kahuna/sdk/location/i;->d:I

    if-ltz v3, :cond_3

    invoke-virtual {p1}, Lcom/kahuna/sdk/location/i;->d()I

    move-result v3

    if-gez v3, :cond_5

    :cond_3
    move v3, v2

    .line 246
    :goto_2
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    move v1, v2

    .line 247
    goto :goto_0

    .line 250
    :cond_4
    iget v0, p0, Lcom/kahuna/sdk/location/i;->c:I

    invoke-virtual {p1}, Lcom/kahuna/sdk/location/i;->c()I

    move-result v3

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/kahuna/sdk/location/i;->d:I

    invoke-virtual {p1}, Lcom/kahuna/sdk/location/i;->d()I

    move-result v3

    if-ne v0, v3, :cond_0

    move v1, v2

    .line 251
    goto :goto_0

    :cond_5
    move v3, v1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/kahuna/sdk/location/i;->f:I

    return v0
.end method

.method protected g()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 191
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 193
    :try_start_0
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/kahuna/sdk/location/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string/jumbo v1, "uuid"

    iget-object v2, p0, Lcom/kahuna/sdk/location/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string/jumbo v1, "major"

    iget v2, p0, Lcom/kahuna/sdk/location/i;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 196
    const-string/jumbo v1, "minor"

    iget v2, p0, Lcom/kahuna/sdk/location/i;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 197
    const-string/jumbo v1, "expiry"

    iget-wide v2, p0, Lcom/kahuna/sdk/location/i;->j:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-object v0

    .line 198
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UUID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kahuna/sdk/location/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " M:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kahuna/sdk/location/i;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " m:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kahuna/sdk/location/i;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " p:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kahuna/sdk/location/i;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
