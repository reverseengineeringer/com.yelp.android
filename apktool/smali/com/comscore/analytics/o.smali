.class Lcom/comscore/analytics/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/comscore/analytics/a;


# direct methods
.method constructor <init>(Lcom/comscore/analytics/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/analytics/o;->b:Lcom/comscore/analytics/a;

    iput-object p2, p0, Lcom/comscore/analytics/o;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/comscore/analytics/o;->b:Lcom/comscore/analytics/a;

    iget-object v1, p0, Lcom/comscore/analytics/o;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/comscore/analytics/a;->c(Lcom/comscore/analytics/a;Ljava/lang/String;)V

    return-void
.end method
