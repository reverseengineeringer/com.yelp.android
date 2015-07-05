.class Lcom/yelp/android/ui/activities/nearby/d;
.super Ljava/lang/Object;
.source "ActivityNearby.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/nearby/c;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/d;->a:Lcom/yelp/android/ui/activities/nearby/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/d;->a:Lcom/yelp/android/ui/activities/nearby/c;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/nearby/c;->i:Lcom/yelp/android/ui/activities/nearby/ActivityNearby;

    const v1, 0x7f0c02fc

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/d;->a:Lcom/yelp/android/ui/activities/nearby/c;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/nearby/c;->i:Lcom/yelp/android/ui/activities/nearby/ActivityNearby;

    const v2, 0x7f0c0303

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->h(Landroid/view/View;)V

    .line 245
    return-void
.end method
