.class final Lcom/facebook/internal/u$1;
.super Ljava/lang/Object;
.source "Utility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/u;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Lcom/facebook/internal/u$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/internal/u$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/internal/u$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 757
    iget-object v0, p0, Lcom/facebook/internal/u$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/u;->f(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 758
    if-eqz v0, :cond_0

    .line 759
    iget-object v1, p0, Lcom/facebook/internal/u$1;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/u$b;

    .line 761
    iget-object v1, p0, Lcom/facebook/internal/u$1;->b:Landroid/content/Context;

    const-string/jumbo v2, "com.facebook.internal.preferences.APP_SETTINGS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 764
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/internal/u$1;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 769
    :cond_0
    invoke-static {}, Lcom/facebook/internal/u;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 770
    return-void
.end method
