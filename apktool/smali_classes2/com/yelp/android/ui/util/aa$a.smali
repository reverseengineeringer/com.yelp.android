.class public Lcom/yelp/android/ui/util/aa$a;
.super Lcom/yelp/android/ui/util/aa;
.source "MediaOpener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/util/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


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
    .line 30
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/util/aa;-><init>(Ljava/util/List;)V

    .line 31
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yelp/android/ui/util/aa$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    invoke-interface {v0}, Lcom/yelp/android/serializable/Media;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/util/aa$a;->a:Ljava/util/List;

    invoke-static {p1, v0, v1, p2}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 38
    return-void
.end method
