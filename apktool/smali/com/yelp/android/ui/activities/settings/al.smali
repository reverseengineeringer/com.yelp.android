.class Lcom/yelp/android/ui/activities/settings/al;
.super Lcom/yelp/android/ui/util/dd;
.source "PreferenceScreenFragment.java"


# instance fields
.field private final a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/yelp/android/ui/util/dd;-><init>()V

    .line 485
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/al;->a:Landroid/view/View;

    .line 486
    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/al;->a:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 491
    return-void
.end method
