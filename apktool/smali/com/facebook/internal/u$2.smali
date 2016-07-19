.class final Lcom/facebook/internal/u$2;
.super Ljava/lang/Object;
.source "Utility.java"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/u;->a(Ljava/lang/String;Lcom/facebook/internal/u$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/u$c;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/internal/u$c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1183
    iput-object p1, p0, Lcom/facebook/internal/u$2;->a:Lcom/facebook/internal/u$c;

    iput-object p2, p0, Lcom/facebook/internal/u$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/GraphResponse;)V
    .locals 2

    .prologue
    .line 1186
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/facebook/internal/u$2;->a:Lcom/facebook/internal/u$c;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->f()Lcom/facebook/FacebookException;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/internal/u$c;->a(Lcom/facebook/FacebookException;)V

    .line 1194
    :goto_0
    return-void

    .line 1189
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/u$2;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/r;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1192
    iget-object v0, p0, Lcom/facebook/internal/u$2;->a:Lcom/facebook/internal/u$c;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/internal/u$c;->a(Lorg/json/JSONObject;)V

    goto :goto_0
.end method
