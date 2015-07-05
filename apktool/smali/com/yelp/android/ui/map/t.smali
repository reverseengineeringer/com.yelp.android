.class Lcom/yelp/android/ui/map/t;
.super Ljava/lang/Object;
.source "YelpMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/map/YelpMap;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/map/YelpMap;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/yelp/android/ui/map/t;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 306
    iget-object v1, p0, Lcom/yelp/android/ui/map/t;->a:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v0, p0, Lcom/yelp/android/ui/map/t;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {v0}, Lcom/yelp/android/ui/map/YelpMap;->c(Lcom/yelp/android/ui/map/YelpMap;)Lcom/yelp/android/ui/map/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/yelp/android/ui/map/YelpMap;Z)V

    .line 307
    return-void

    .line 306
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
