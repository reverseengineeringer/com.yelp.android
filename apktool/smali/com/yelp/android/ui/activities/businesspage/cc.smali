.class abstract Lcom/yelp/android/ui/activities/businesspage/cc;
.super Ljava/lang/Object;
.source "BusinessPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field d:Lcom/yelp/android/analytics/iris/EventIri;

.field e:Ljava/lang/String;

.field final synthetic f:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;)V
    .locals 1

    .prologue
    .line 3410
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/businesspage/cc;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 3411
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3413
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/cc;->f:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3414
    iput-object p2, p0, Lcom/yelp/android/ui/activities/businesspage/cc;->d:Lcom/yelp/android/analytics/iris/EventIri;

    .line 3415
    iput-object p3, p0, Lcom/yelp/android/ui/activities/businesspage/cc;->e:Ljava/lang/String;

    .line 3416
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)V
.end method

.method protected a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3429
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/cc;->f:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 3430
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 3424
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/cc;->d:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/cc;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/cc;->a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 3425
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/cc;->a(Landroid/view/View;)V

    .line 3426
    return-void
.end method
