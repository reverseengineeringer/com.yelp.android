.class public Lcom/yelp/android/ui/util/be;
.super Lcom/yelp/android/ui/util/bc;
.source "MediaOpener.java"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/Media;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/util/bc;-><init>(Ljava/util/List;)V

    .line 48
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/util/be;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    invoke-interface {v0}, Lcom/yelp/android/serializable/Media;->getBusinessId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/util/be;->a:Ljava/util/List;

    invoke-static {p1, v0, v1, p2}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method
