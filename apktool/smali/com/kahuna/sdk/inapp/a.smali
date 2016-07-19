.class public Lcom/kahuna/sdk/inapp/a;
.super Ljava/lang/Object;
.source "RichInAppMessageButton.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/kahuna/sdk/inapp/a;->a:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/kahuna/sdk/inapp/a;->b:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/kahuna/sdk/inapp/a;->c:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/kahuna/sdk/inapp/a;->d:Ljava/lang/String;

    .line 56
    iput p5, p0, Lcom/kahuna/sdk/inapp/a;->e:I

    .line 57
    iput p6, p0, Lcom/kahuna/sdk/inapp/a;->f:I

    .line 58
    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/kahuna/sdk/inapp/a;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-static {p1}, Lcom/kahuna/sdk/w;->a(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 82
    const-string/jumbo v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    const-string/jumbo v1, "action"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 86
    const-string/jumbo v1, "action"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 87
    invoke-static {v1}, Lcom/kahuna/sdk/w;->a(Lorg/json/JSONObject;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 89
    const-string/jumbo v3, "close"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    const-string/jumbo v3, "close"

    move-object v4, v0

    .line 98
    :goto_0
    const/high16 v1, -0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 99
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 100
    const-string/jumbo v6, "color"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 101
    const-string/jumbo v1, "color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/kahuna/sdk/w;->e(Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v1

    .line 103
    :cond_0
    const-string/jumbo v6, "bgcolor"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 104
    const-string/jumbo v5, "bgcolor"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/kahuna/sdk/w;->e(Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v5

    move-object v6, v5

    .line 107
    :goto_1
    if-eqz v1, :cond_3

    if-eqz v6, :cond_3

    invoke-static {v3}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 108
    new-instance v0, Lcom/kahuna/sdk/inapp/a;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kahuna/sdk/inapp/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 114
    :cond_1
    :goto_2
    return-object v0

    .line 92
    :cond_2
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 93
    const-string/jumbo v3, "url"

    .line 94
    const-string/jumbo v4, "url"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 111
    :cond_3
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid Rich In App Button object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    move-object v6, v5

    goto :goto_1

    :cond_5
    move-object v4, v0

    move-object v3, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/kahuna/sdk/inapp/a;->e:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/kahuna/sdk/inapp/a;->f:I

    return v0
.end method
