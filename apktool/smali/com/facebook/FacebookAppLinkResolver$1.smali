.class Lcom/facebook/FacebookAppLinkResolver$1;
.super Ljava/lang/Object;
.source "FacebookAppLinkResolver.java"

# interfaces
.implements Lbolts/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/j",
        "<",
        "Ljava/util/Map",
        "<",
        "Landroid/net/Uri;",
        "Lbolts/d;",
        ">;",
        "Lbolts/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/FacebookAppLinkResolver;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/facebook/FacebookAppLinkResolver;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/facebook/FacebookAppLinkResolver$1;->this$0:Lcom/facebook/FacebookAppLinkResolver;

    iput-object p2, p0, Lcom/facebook/FacebookAppLinkResolver$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/k;)Lbolts/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/k",
            "<",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lbolts/d;",
            ">;>;)",
            "Lbolts/d;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p1}, Lbolts/k;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/facebook/FacebookAppLinkResolver$1;->val$uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/d;

    return-object v0
.end method

.method public bridge synthetic then(Lbolts/k;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/facebook/FacebookAppLinkResolver$1;->then(Lbolts/k;)Lbolts/d;

    move-result-object v0

    return-object v0
.end method
