.class Lcom/facebook/share/internal/b$8;
.super Lcom/facebook/share/internal/h;
.source "LikeActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/b;->a(Landroid/os/Bundle;)Lcom/facebook/share/internal/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/facebook/share/internal/b;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/b;Lcom/facebook/f;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 859
    iput-object p1, p0, Lcom/facebook/share/internal/b$8;->b:Lcom/facebook/share/internal/b;

    iput-object p3, p0, Lcom/facebook/share/internal/b$8;->a:Landroid/os/Bundle;

    invoke-direct {p0, p2}, Lcom/facebook/share/internal/h;-><init>(Lcom/facebook/f;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/internal/a;)V
    .locals 1

    .prologue
    .line 936
    new-instance v0, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v0}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/share/internal/b$8;->a(Lcom/facebook/internal/a;Lcom/facebook/FacebookException;)V

    .line 937
    return-void
.end method

.method public a(Lcom/facebook/internal/a;Landroid/os/Bundle;)V
    .locals 10

    .prologue
    .line 862
    if-eqz p2, :cond_0

    const-string/jumbo v0, "object_is_liked"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 910
    :cond_0
    :goto_0
    return-void

    .line 867
    :cond_1
    const-string/jumbo v0, "object_is_liked"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 870
    iget-object v0, p0, Lcom/facebook/share/internal/b$8;->b:Lcom/facebook/share/internal/b;

    invoke-static {v0}, Lcom/facebook/share/internal/b;->b(Lcom/facebook/share/internal/b;)Ljava/lang/String;

    move-result-object v2

    .line 872
    iget-object v0, p0, Lcom/facebook/share/internal/b$8;->b:Lcom/facebook/share/internal/b;

    invoke-static {v0}, Lcom/facebook/share/internal/b;->c(Lcom/facebook/share/internal/b;)Ljava/lang/String;

    move-result-object v3

    .line 874
    const-string/jumbo v0, "like_count_string"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 875
    const-string/jumbo v0, "like_count_string"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 880
    :cond_2
    iget-object v0, p0, Lcom/facebook/share/internal/b$8;->b:Lcom/facebook/share/internal/b;

    invoke-static {v0}, Lcom/facebook/share/internal/b;->d(Lcom/facebook/share/internal/b;)Ljava/lang/String;

    move-result-object v4

    .line 881
    iget-object v0, p0, Lcom/facebook/share/internal/b$8;->b:Lcom/facebook/share/internal/b;

    invoke-static {v0}, Lcom/facebook/share/internal/b;->e(Lcom/facebook/share/internal/b;)Ljava/lang/String;

    move-result-object v5

    .line 883
    const-string/jumbo v0, "social_sentence"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 884
    const-string/jumbo v0, "social_sentence"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 889
    :cond_3
    const-string/jumbo v0, "object_is_liked"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "unlike_token"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 893
    :goto_1
    iget-object v0, p0, Lcom/facebook/share/internal/b$8;->a:Landroid/os/Bundle;

    if-nez v0, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 895
    :goto_2
    const-string/jumbo v7, "call_id"

    invoke-virtual {p1}, Lcom/facebook/internal/a;->c()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    iget-object v7, p0, Lcom/facebook/share/internal/b$8;->b:Lcom/facebook/share/internal/b;

    invoke-static {v7}, Lcom/facebook/share/internal/b;->g(Lcom/facebook/share/internal/b;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v7

    const-string/jumbo v8, "fb_like_control_dialog_did_succeed"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v0}, Lcom/facebook/appevents/AppEventsLogger;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 903
    iget-object v0, p0, Lcom/facebook/share/internal/b$8;->b:Lcom/facebook/share/internal/b;

    invoke-static/range {v0 .. v6}, Lcom/facebook/share/internal/b;->a(Lcom/facebook/share/internal/b;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 889
    :cond_4
    iget-object v0, p0, Lcom/facebook/share/internal/b$8;->b:Lcom/facebook/share/internal/b;

    invoke-static {v0}, Lcom/facebook/share/internal/b;->f(Lcom/facebook/share/internal/b;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 893
    :cond_5
    iget-object v0, p0, Lcom/facebook/share/internal/b$8;->a:Landroid/os/Bundle;

    goto :goto_2
.end method

.method public a(Lcom/facebook/internal/a;Lcom/facebook/FacebookException;)V
    .locals 5

    .prologue
    .line 914
    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    invoke-static {}, Lcom/facebook/share/internal/b;->f()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Like Dialog failed with error : %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/n;->a(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 920
    iget-object v0, p0, Lcom/facebook/share/internal/b$8;->a:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 921
    :goto_0
    const-string/jumbo v1, "call_id"

    invoke-virtual {p1}, Lcom/facebook/internal/a;->c()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    iget-object v1, p0, Lcom/facebook/share/internal/b$8;->b:Lcom/facebook/share/internal/b;

    const-string/jumbo v2, "present_dialog"

    invoke-static {v1, v2, v0}, Lcom/facebook/share/internal/b;->a(Lcom/facebook/share/internal/b;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 928
    iget-object v0, p0, Lcom/facebook/share/internal/b$8;->b:Lcom/facebook/share/internal/b;

    const-string/jumbo v1, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-static {p2}, Lcom/facebook/internal/p;->a(Lcom/facebook/FacebookException;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/share/internal/b;->b(Lcom/facebook/share/internal/b;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 932
    return-void

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/facebook/share/internal/b$8;->a:Landroid/os/Bundle;

    goto :goto_0
.end method
