.class Lcom/facebook/login/c$2;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/c;->a(Lcom/facebook/login/e;Lcom/facebook/login/LoginClient$Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/login/c;


# direct methods
.method constructor <init>(Lcom/facebook/login/c;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/facebook/login/c$2;->a:Lcom/facebook/login/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/facebook/login/c$2;->a:Lcom/facebook/login/c;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/login/c;->a(ILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method
