.class Lcom/kahuna/sdk/inapp/d$a;
.super Ljava/lang/Object;
.source "RichInAppMessageTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kahuna/sdk/inapp/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Lcom/kahuna/sdk/inapp/e;

.field private f:Lcom/kahuna/sdk/inapp/e;

.field private g:I

.field private h:Ljava/util/Map;
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

.field private i:Ljava/util/Map;
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

.field private j:Ljava/util/Map;
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
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/kahuna/sdk/inapp/e;Lcom/kahuna/sdk/inapp/e;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/kahuna/sdk/inapp/e;",
            "Lcom/kahuna/sdk/inapp/e;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kahuna/sdk/inapp/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/kahuna/sdk/inapp/d$a;->a:Ljava/lang/String;

    .line 191
    iput-object p2, p0, Lcom/kahuna/sdk/inapp/d$a;->b:Ljava/lang/String;

    .line 192
    iput p3, p0, Lcom/kahuna/sdk/inapp/d$a;->c:I

    .line 193
    iput-object p4, p0, Lcom/kahuna/sdk/inapp/d$a;->e:Lcom/kahuna/sdk/inapp/e;

    .line 194
    iput-object p5, p0, Lcom/kahuna/sdk/inapp/d$a;->f:Lcom/kahuna/sdk/inapp/e;

    .line 195
    iput-object p6, p0, Lcom/kahuna/sdk/inapp/d$a;->i:Ljava/util/Map;

    .line 196
    return-void
.end method


# virtual methods
.method a(I)Lcom/kahuna/sdk/inapp/d$a;
    .locals 0

    .prologue
    .line 199
    iput p1, p0, Lcom/kahuna/sdk/inapp/d$a;->d:I

    .line 200
    return-object p0
.end method

.method a(Ljava/util/Map;)Lcom/kahuna/sdk/inapp/d$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kahuna/sdk/inapp/b;",
            ">;)",
            "Lcom/kahuna/sdk/inapp/d$a;"
        }
    .end annotation

    .prologue
    .line 209
    iput-object p1, p0, Lcom/kahuna/sdk/inapp/d$a;->h:Ljava/util/Map;

    .line 210
    return-object p0
.end method

.method a()Lcom/kahuna/sdk/inapp/d;
    .locals 11

    .prologue
    .line 214
    new-instance v0, Lcom/kahuna/sdk/inapp/d;

    iget-object v1, p0, Lcom/kahuna/sdk/inapp/d$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/kahuna/sdk/inapp/d$a;->b:Ljava/lang/String;

    iget v3, p0, Lcom/kahuna/sdk/inapp/d$a;->c:I

    iget v4, p0, Lcom/kahuna/sdk/inapp/d$a;->d:I

    iget-object v5, p0, Lcom/kahuna/sdk/inapp/d$a;->e:Lcom/kahuna/sdk/inapp/e;

    iget-object v6, p0, Lcom/kahuna/sdk/inapp/d$a;->f:Lcom/kahuna/sdk/inapp/e;

    iget-object v7, p0, Lcom/kahuna/sdk/inapp/d$a;->i:Ljava/util/Map;

    iget v8, p0, Lcom/kahuna/sdk/inapp/d$a;->g:I

    iget-object v9, p0, Lcom/kahuna/sdk/inapp/d$a;->h:Ljava/util/Map;

    iget-object v10, p0, Lcom/kahuna/sdk/inapp/d$a;->j:Ljava/util/Map;

    invoke-direct/range {v0 .. v10}, Lcom/kahuna/sdk/inapp/d;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/kahuna/sdk/inapp/e;Lcom/kahuna/sdk/inapp/e;Ljava/util/Map;ILjava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method b(I)Lcom/kahuna/sdk/inapp/d$a;
    .locals 0

    .prologue
    .line 204
    iput p1, p0, Lcom/kahuna/sdk/inapp/d$a;->g:I

    .line 205
    return-object p0
.end method
