.class Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$2;
.super Ljava/lang/Object;
.source "NearbyPageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V
    .locals 0

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$2;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$2;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$2;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->h(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$2;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Z)Z

    .line 1114
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$2;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Ljava/util/List;)V

    .line 1115
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$2;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/c;->af()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$2;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->f(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V

    .line 1120
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$2;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->l()V

    .line 1122
    :cond_0
    return-void
.end method
