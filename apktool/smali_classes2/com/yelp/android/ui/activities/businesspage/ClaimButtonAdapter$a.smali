.class final Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$a;
.super Lcom/yelp/android/ui/util/av$a;
.source "ClaimButtonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;

.field private final b:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$a;->a:Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/av$a;-><init>()V

    .line 153
    iput-object p2, p0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$a;->b:Landroid/view/View;

    .line 154
    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;Landroid/view/View;Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$1;)V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$a;-><init>(Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$a;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHasTransientState(Z)V

    .line 166
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$a;->b:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setHasTransientState(Z)V

    .line 161
    return-void
.end method
