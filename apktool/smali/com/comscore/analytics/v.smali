.class Lcom/comscore/analytics/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/applications/EventType;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcom/comscore/analytics/a;


# direct methods
.method constructor <init>(Lcom/comscore/analytics/a;Lcom/comscore/applications/EventType;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/analytics/v;->c:Lcom/comscore/analytics/a;

    iput-object p2, p0, Lcom/comscore/analytics/v;->a:Lcom/comscore/applications/EventType;

    iput-object p3, p0, Lcom/comscore/analytics/v;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/comscore/analytics/v;->c:Lcom/comscore/analytics/a;

    iget-object v1, p0, Lcom/comscore/analytics/v;->a:Lcom/comscore/applications/EventType;

    iget-object v2, p0, Lcom/comscore/analytics/v;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/analytics/a;->a(Lcom/comscore/applications/EventType;Ljava/util/HashMap;)V

    return-void
.end method
