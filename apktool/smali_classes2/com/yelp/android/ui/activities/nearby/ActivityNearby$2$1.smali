.class Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2$1;
.super Ljava/lang/Object;
.source "ActivityNearby.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2$1;->a:Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2$1;->a:Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->i:Lcom/yelp/android/ui/activities/nearby/ActivityNearby;

    const v1, 0x7f0f0384

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2$1;->a:Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->i:Lcom/yelp/android/ui/activities/nearby/ActivityNearby;

    const v2, 0x7f0f038b

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->h(Landroid/view/View;)V

    .line 276
    return-void
.end method
