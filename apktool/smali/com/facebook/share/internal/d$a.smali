.class Lcom/facebook/share/internal/d$a;
.super Lcom/facebook/internal/f$a;
.source "LikeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/f",
        "<",
        "Lcom/facebook/share/internal/LikeContent;",
        "Ljava/lang/Object;",
        ">.a;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/facebook/share/internal/d;


# direct methods
.method private constructor <init>(Lcom/facebook/share/internal/d;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/facebook/share/internal/d$a;->b:Lcom/facebook/share/internal/d;

    invoke-direct {p0, p1}, Lcom/facebook/internal/f$a;-><init>(Lcom/facebook/internal/f;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/internal/d;Lcom/facebook/share/internal/d$1;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/d$a;-><init>(Lcom/facebook/share/internal/d;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/share/internal/LikeContent;)Z
    .locals 1

    .prologue
    .line 98
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/facebook/share/internal/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 95
    check-cast p1, Lcom/facebook/share/internal/LikeContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/d$a;->a(Lcom/facebook/share/internal/LikeContent;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/facebook/share/internal/LikeContent;)Lcom/facebook/internal/a;
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/share/internal/d$a;->b:Lcom/facebook/share/internal/d;

    invoke-virtual {v0}, Lcom/facebook/share/internal/d;->d()Lcom/facebook/internal/a;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/facebook/share/internal/d$a$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/share/internal/d$a$1;-><init>(Lcom/facebook/share/internal/d$a;Lcom/facebook/share/internal/LikeContent;)V

    invoke-static {}, Lcom/facebook/share/internal/d;->g()Lcom/facebook/internal/d;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/e;->a(Lcom/facebook/internal/a;Lcom/facebook/internal/e$a;Lcom/facebook/internal/d;)V

    .line 123
    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Lcom/facebook/internal/a;
    .locals 1

    .prologue
    .line 95
    check-cast p1, Lcom/facebook/share/internal/LikeContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/d$a;->b(Lcom/facebook/share/internal/LikeContent;)Lcom/facebook/internal/a;

    move-result-object v0

    return-object v0
.end method
