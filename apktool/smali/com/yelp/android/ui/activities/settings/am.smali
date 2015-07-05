.class Lcom/yelp/android/ui/activities/settings/am;
.super Lcom/yelp/android/ui/util/dd;
.source "PreferenceScreenFragment.java"


# instance fields
.field private final a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/yelp/android/ui/util/dd;-><init>()V

    .line 465
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/am;->a:Landroid/view/View;

    .line 466
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/am;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 476
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/am;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 471
    return-void
.end method
