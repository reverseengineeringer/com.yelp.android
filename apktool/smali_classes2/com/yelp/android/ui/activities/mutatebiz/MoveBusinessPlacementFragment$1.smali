.class Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$1;
.super Ljava/lang/Object;
.source "MoveBusinessPlacementFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->f()Lcom/yelp/android/ui/map/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;)Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v1

    if-eqz p2, :cond_1

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/map/YelpMap;->setMapMode(I)V

    .line 219
    :cond_0
    return-void

    .line 214
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
