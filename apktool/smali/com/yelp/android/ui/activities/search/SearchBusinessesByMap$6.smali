.class Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$6;
.super Ljava/lang/Object;
.source "SearchBusinessesByMap.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/support/b$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$6;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    .line 594
    if-eqz p1, :cond_0

    .line 595
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$6;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/d;->a(Landroid/app/Activity;)V

    .line 597
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$6;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$6;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Landroid/content/Intent;)V

    .line 602
    return-void
.end method
