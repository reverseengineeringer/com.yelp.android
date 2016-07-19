.class public Lcom/kahuna/sdk/inapp/d;
.super Ljava/lang/Object;
.source "RichInAppMessageTemplate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kahuna/sdk/inapp/d$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I

.field private final e:Lcom/kahuna/sdk/inapp/e;

.field private final f:Lcom/kahuna/sdk/inapp/e;

.field private final g:I

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kahuna/sdk/inapp/b;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kahuna/sdk/inapp/a;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IILcom/kahuna/sdk/inapp/e;Lcom/kahuna/sdk/inapp/e;Ljava/util/Map;ILjava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/kahuna/sdk/inapp/e;",
            "Lcom/kahuna/sdk/inapp/e;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kahuna/sdk/inapp/a;",
            ">;I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kahuna/sdk/inapp/b;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/kahuna/sdk/inapp/d;->a:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/kahuna/sdk/inapp/d;->b:Ljava/lang/String;

    .line 60
    iput p3, p0, Lcom/kahuna/sdk/inapp/d;->c:I

    .line 61
    iput p4, p0, Lcom/kahuna/sdk/inapp/d;->d:I

    .line 62
    iput-object p5, p0, Lcom/kahuna/sdk/inapp/d;->e:Lcom/kahuna/sdk/inapp/e;

    .line 63
    iput-object p6, p0, Lcom/kahuna/sdk/inapp/d;->f:Lcom/kahuna/sdk/inapp/e;

    .line 64
    iput-object p7, p0, Lcom/kahuna/sdk/inapp/d;->i:Ljava/util/Map;

    .line 65
    iput p8, p0, Lcom/kahuna/sdk/inapp/d;->g:I

    .line 66
    iput-object p9, p0, Lcom/kahuna/sdk/inapp/d;->h:Ljava/util/Map;

    .line 67
    iput-object p10, p0, Lcom/kahuna/sdk/inapp/d;->j:Ljava/util/Map;

    .line 68
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/kahuna/sdk/inapp/d;
    .locals 11

    .prologue
    const/4 v6, -0x1

    const/4 v8, 0x0

    .line 107
    .line 108
    invoke-static {p0}, Lcom/kahuna/sdk/w;->a(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 109
    const-string/jumbo v0, "templateId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "subtype"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const-string/jumbo v0, "templateId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    const-string/jumbo v0, "subtype"

    invoke-virtual {p0, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 113
    invoke-static {v1}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-ltz v3, :cond_2

    .line 114
    const-string/jumbo v0, "fallback_subtype"

    invoke-virtual {p0, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 115
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/inapp/e;->a(Lorg/json/JSONObject;)Lcom/kahuna/sdk/inapp/e;

    move-result-object v4

    .line 116
    const-string/jumbo v0, "message"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/inapp/e;->a(Lorg/json/JSONObject;)Lcom/kahuna/sdk/inapp/e;

    move-result-object v5

    .line 117
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 118
    const-string/jumbo v6, "bgcolor"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 119
    const-string/jumbo v0, "bgcolor"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/w;->e(Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v0

    move-object v7, v0

    .line 122
    :goto_0
    const-string/jumbo v0, "attributes"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 124
    const-string/jumbo v0, "images"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-class v6, Lcom/kahuna/sdk/inapp/b;

    invoke-static {v0, v6}, Lcom/kahuna/sdk/inapp/d;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v10

    .line 125
    if-nez v10, :cond_1

    .line 148
    :cond_0
    :goto_1
    return-object v8

    .line 129
    :cond_1
    const-string/jumbo v0, "buttons"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-class v6, Lcom/kahuna/sdk/inapp/a;

    invoke-static {v0, v6}, Lcom/kahuna/sdk/inapp/d;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v6

    .line 130
    if-eqz v6, :cond_0

    .line 135
    if-eqz v5, :cond_2

    if-eqz v7, :cond_2

    invoke-static {v6}, Lcom/kahuna/sdk/w;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 136
    new-instance v0, Lcom/kahuna/sdk/inapp/d$a;

    invoke-direct/range {v0 .. v6}, Lcom/kahuna/sdk/inapp/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/kahuna/sdk/inapp/e;Lcom/kahuna/sdk/inapp/e;Ljava/util/Map;)V

    invoke-virtual {v0, v9}, Lcom/kahuna/sdk/inapp/d$a;->a(I)Lcom/kahuna/sdk/inapp/d$a;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kahuna/sdk/inapp/d$a;->b(I)Lcom/kahuna/sdk/inapp/d$a;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/kahuna/sdk/inapp/d$a;->a(Ljava/util/Map;)Lcom/kahuna/sdk/inapp/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d$a;->a()Lcom/kahuna/sdk/inapp/d;

    move-result-object v0

    :goto_2
    move-object v8, v0

    .line 148
    goto :goto_1

    :cond_2
    move-object v0, v8

    goto :goto_2

    :cond_3
    move-object v7, v0

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 152
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 153
    invoke-static {p0}, Lcom/kahuna/sdk/w;->a(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 154
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 155
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 158
    const-class v5, Lcom/kahuna/sdk/inapp/b;

    if-ne p1, v5, :cond_2

    .line 159
    invoke-static {v4}, Lcom/kahuna/sdk/inapp/b;->a(Lorg/json/JSONObject;)Lcom/kahuna/sdk/inapp/b;

    move-result-object v4

    .line 160
    if-nez v4, :cond_1

    move-object v0, v1

    .line 174
    :goto_1
    return-object v0

    .line 163
    :cond_1
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 165
    :cond_2
    const-class v5, Lcom/kahuna/sdk/inapp/a;

    if-ne p1, v5, :cond_0

    .line 166
    invoke-static {v0, v4}, Lcom/kahuna/sdk/inapp/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/kahuna/sdk/inapp/a;

    move-result-object v4

    .line 167
    if-nez v4, :cond_3

    move-object v0, v1

    .line 168
    goto :goto_1

    .line 170
    :cond_3
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    move-object v0, v2

    .line 174
    goto :goto_1
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method c()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/kahuna/sdk/inapp/d;->c:I

    return v0
.end method

.method d()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/kahuna/sdk/inapp/d;->d:I

    return v0
.end method

.method e()Lcom/kahuna/sdk/inapp/e;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/d;->e:Lcom/kahuna/sdk/inapp/e;

    return-object v0
.end method

.method f()Lcom/kahuna/sdk/inapp/e;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/d;->f:Lcom/kahuna/sdk/inapp/e;

    return-object v0
.end method

.method g()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/kahuna/sdk/inapp/d;->g:I

    return v0
.end method

.method h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kahuna/sdk/inapp/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/d;->i:Ljava/util/Map;

    return-object v0
.end method

.method i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kahuna/sdk/inapp/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/d;->h:Ljava/util/Map;

    return-object v0
.end method
