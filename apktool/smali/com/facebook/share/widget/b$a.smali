.class Lcom/facebook/share/widget/b$a;
.super Lcom/facebook/internal/f$a;
.source "MessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/f",
        "<",
        "Lcom/facebook/share/model/ShareContent;",
        "Lcom/yelp/android/ay/a$a;",
        ">.a;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/facebook/share/widget/b;


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/b;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/facebook/share/widget/b$a;->b:Lcom/facebook/share/widget/b;

    invoke-direct {p0, p1}, Lcom/facebook/internal/f$a;-><init>(Lcom/facebook/internal/f;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/b;Lcom/facebook/share/widget/b$1;)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/b$a;-><init>(Lcom/facebook/share/widget/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/share/model/ShareContent;)Z
    .locals 1

    .prologue
    .line 164
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/share/widget/b;->a(Ljava/lang/Class;)Z

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
    .line 161
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/b$a;->a(Lcom/facebook/share/model/ShareContent;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/a;
    .locals 3

    .prologue
    .line 169
    invoke-static {p1}, Lcom/facebook/share/internal/i;->a(Lcom/facebook/share/model/ShareContent;)V

    .line 171
    iget-object v0, p0, Lcom/facebook/share/widget/b$a;->b:Lcom/facebook/share/widget/b;

    invoke-virtual {v0}, Lcom/facebook/share/widget/b;->d()Lcom/facebook/internal/a;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/facebook/share/widget/b$a;->b:Lcom/facebook/share/widget/b;

    invoke-virtual {v1}, Lcom/facebook/share/widget/b;->e()Z

    move-result v1

    .line 173
    iget-object v2, p0, Lcom/facebook/share/widget/b$a;->b:Lcom/facebook/share/widget/b;

    invoke-static {v2}, Lcom/facebook/share/widget/b;->a(Lcom/facebook/share/widget/b;)Landroid/app/Activity;

    .line 175
    new-instance v2, Lcom/facebook/share/widget/b$a$1;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/facebook/share/widget/b$a$1;-><init>(Lcom/facebook/share/widget/b$a;Lcom/facebook/internal/a;Lcom/facebook/share/model/ShareContent;Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/share/widget/b;->b(Ljava/lang/Class;)Lcom/facebook/internal/d;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/e;->a(Lcom/facebook/internal/a;Lcom/facebook/internal/e$a;Lcom/facebook/internal/d;)V

    .line 196
    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Lcom/facebook/internal/a;
    .locals 1

    .prologue
    .line 161
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/b$a;->b(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/a;

    move-result-object v0

    return-object v0
.end method
