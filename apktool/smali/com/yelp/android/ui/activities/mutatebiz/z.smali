.class Lcom/yelp/android/ui/activities/mutatebiz/z;
.super Ljava/lang/Object;
.source "MoveBusinessPlacementFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/z;->a:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/z;->a:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->e()Lcom/yelp/android/ui/map/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/z;->a:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;)Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v1

    if-eqz p2, :cond_1

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/map/YelpMap;->setMapMode(I)V

    .line 238
    :cond_0
    return-void

    .line 235
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
