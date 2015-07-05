.class Lcom/yelp/android/ui/activities/businesspage/bq;
.super Ljava/lang/Object;
.source "BusinessPageFragment.java"

# interfaces
.implements Landroid/support/v7/app/a;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/bq;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 669
    if-eqz p1, :cond_0

    .line 670
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bq;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessOpenActionMenu:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 672
    :cond_0
    return-void
.end method
