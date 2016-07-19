.class Lcom/facebook/login/c$1;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/c;->a(Lcom/facebook/d;Lcom/facebook/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/f;

.field final synthetic b:Lcom/facebook/login/c;


# direct methods
.method constructor <init>(Lcom/facebook/login/c;Lcom/facebook/f;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/facebook/login/c$1;->b:Lcom/facebook/login/c;

    iput-object p2, p0, Lcom/facebook/login/c$1;->a:Lcom/facebook/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/facebook/login/c$1;->b:Lcom/facebook/login/c;

    iget-object v1, p0, Lcom/facebook/login/c$1;->a:Lcom/facebook/f;

    invoke-virtual {v0, p1, p2, v1}, Lcom/facebook/login/c;->a(ILandroid/content/Intent;Lcom/facebook/f;)Z

    move-result v0

    return v0
.end method
