.class public Lcom/facebook/internal/u$b;
.super Ljava/lang/Object;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/u$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Lcom/facebook/internal/g;


# direct methods
.method private constructor <init>(ZLjava/lang/String;ZLjava/util/Map;Lcom/facebook/internal/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/u$a;",
            ">;>;",
            "Lcom/facebook/internal/g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-boolean p1, p0, Lcom/facebook/internal/u$b;->a:Z

    .line 122
    iput-object p2, p0, Lcom/facebook/internal/u$b;->b:Ljava/lang/String;

    .line 123
    iput-boolean p3, p0, Lcom/facebook/internal/u$b;->c:Z

    .line 124
    iput-object p4, p0, Lcom/facebook/internal/u$b;->d:Ljava/util/Map;

    .line 125
    iput-object p5, p0, Lcom/facebook/internal/u$b;->e:Lcom/facebook/internal/g;

    .line 126
    return-void
.end method

.method synthetic constructor <init>(ZLjava/lang/String;ZLjava/util/Map;Lcom/facebook/internal/g;Lcom/facebook/internal/u$1;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct/range {p0 .. p5}, Lcom/facebook/internal/u$b;-><init>(ZLjava/lang/String;ZLjava/util/Map;Lcom/facebook/internal/g;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/facebook/internal/u$b;->a:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/facebook/internal/u$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/facebook/internal/u$b;->c:Z

    return v0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/u$a;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/facebook/internal/u$b;->d:Ljava/util/Map;

    return-object v0
.end method

.method public e()Lcom/facebook/internal/g;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/facebook/internal/u$b;->e:Lcom/facebook/internal/g;

    return-object v0
.end method
