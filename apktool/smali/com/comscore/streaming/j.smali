.class Lcom/comscore/streaming/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/comscore/streaming/a;


# direct methods
.method constructor <init>(Lcom/comscore/streaming/a;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/streaming/j;->c:Lcom/comscore/streaming/a;

    iput-object p2, p0, Lcom/comscore/streaming/j;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/comscore/streaming/j;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/comscore/streaming/j;->c:Lcom/comscore/streaming/a;

    iget-object v0, v0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    sget-object v1, Lcom/comscore/applications/EventType;->HIDDEN:Lcom/comscore/applications/EventType;

    iget-object v2, p0, Lcom/comscore/streaming/j;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/comscore/streaming/j;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/comscore/applications/c;->a(Lcom/comscore/analytics/a;Lcom/comscore/applications/EventType;Ljava/util/HashMap;Ljava/lang/String;)Lcom/comscore/applications/c;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/j;->c:Lcom/comscore/streaming/a;

    iget-object v1, v1, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v1}, Lcom/comscore/analytics/a;->t()Lcom/yelp/android/ar/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ar/c;->a(Lcom/yelp/android/ar/b;Z)Z

    return-void
.end method
