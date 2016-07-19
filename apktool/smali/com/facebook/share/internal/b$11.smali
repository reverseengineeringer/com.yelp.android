.class Lcom/facebook/share/internal/b$11;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/share/internal/b$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/b;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/share/internal/b;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/b;)V
    .locals 0

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/facebook/share/internal/b$11;->a:Lcom/facebook/share/internal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 1087
    new-instance v0, Lcom/facebook/share/internal/b$f;

    iget-object v1, p0, Lcom/facebook/share/internal/b$11;->a:Lcom/facebook/share/internal/b;

    iget-object v2, p0, Lcom/facebook/share/internal/b$11;->a:Lcom/facebook/share/internal/b;

    invoke-static {v2}, Lcom/facebook/share/internal/b;->h(Lcom/facebook/share/internal/b;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/share/internal/b$11;->a:Lcom/facebook/share/internal/b;

    invoke-static {v3}, Lcom/facebook/share/internal/b;->i(Lcom/facebook/share/internal/b;)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/share/internal/b$f;-><init>(Lcom/facebook/share/internal/b;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1089
    new-instance v1, Lcom/facebook/share/internal/b$d;

    iget-object v2, p0, Lcom/facebook/share/internal/b$11;->a:Lcom/facebook/share/internal/b;

    iget-object v3, p0, Lcom/facebook/share/internal/b$11;->a:Lcom/facebook/share/internal/b;

    invoke-static {v3}, Lcom/facebook/share/internal/b;->h(Lcom/facebook/share/internal/b;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/share/internal/b$11;->a:Lcom/facebook/share/internal/b;

    invoke-static {v4}, Lcom/facebook/share/internal/b;->i(Lcom/facebook/share/internal/b;)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/share/internal/b$d;-><init>(Lcom/facebook/share/internal/b;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1092
    new-instance v2, Lcom/facebook/i;

    invoke-direct {v2}, Lcom/facebook/i;-><init>()V

    .line 1093
    invoke-virtual {v0, v2}, Lcom/facebook/share/internal/b$f;->a(Lcom/facebook/i;)V

    .line 1094
    invoke-virtual {v1, v2}, Lcom/facebook/share/internal/b$d;->a(Lcom/facebook/i;)V

    .line 1096
    new-instance v3, Lcom/facebook/share/internal/b$11$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/facebook/share/internal/b$11$1;-><init>(Lcom/facebook/share/internal/b$11;Lcom/facebook/share/internal/b$f;Lcom/facebook/share/internal/b$d;)V

    invoke-virtual {v2, v3}, Lcom/facebook/i;->a(Lcom/facebook/i$a;)V

    .line 1120
    invoke-virtual {v2}, Lcom/facebook/i;->h()Lcom/facebook/h;

    .line 1121
    return-void
.end method
