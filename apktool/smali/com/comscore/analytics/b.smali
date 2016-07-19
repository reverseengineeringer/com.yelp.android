.class public Lcom/comscore/analytics/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/analytics/a;


# direct methods
.method public constructor <init>(Lcom/comscore/analytics/a;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/analytics/b;->a:Lcom/comscore/analytics/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/comscore/analytics/b;->a:Lcom/comscore/analytics/a;

    invoke-static {v0}, Lcom/comscore/analytics/a;->a(Lcom/comscore/analytics/a;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/comscore/analytics/b;->a:Lcom/comscore/analytics/a;

    iget-object v0, v0, Lcom/comscore/analytics/a;->X:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/b;->a:Lcom/comscore/analytics/a;

    iget-object v0, v0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    iget-object v1, p0, Lcom/comscore/analytics/b;->a:Lcom/comscore/analytics/a;

    iget-object v1, v1, Lcom/comscore/analytics/a;->X:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/yelp/android/at/a;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/comscore/analytics/b;->a:Lcom/comscore/analytics/a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/comscore/analytics/a;->X:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/comscore/analytics/b;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->x()V

    goto :goto_0
.end method
