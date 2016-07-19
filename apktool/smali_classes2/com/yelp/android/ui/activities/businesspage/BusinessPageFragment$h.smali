.class abstract Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$h;
.super Ljava/lang/Object;
.source "BusinessPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "h"
.end annotation


# instance fields
.field d:Lcom/yelp/android/analytics/iris/EventIri;

.field e:Ljava/lang/String;

.field final synthetic f:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;)V
    .locals 1

    .prologue
    .line 4755
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$h;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 4756
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 4758
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$h;->f:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4759
    iput-object p2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$h;->d:Lcom/yelp/android/analytics/iris/EventIri;

    .line 4760
    iput-object p3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$h;->e:Ljava/lang/String;

    .line 4761
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)V
.end method

.method protected a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 4774
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$h;->f:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 4775
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 4769
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$h;->d:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$h;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$h;->a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 4770
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$h;->a(Landroid/view/View;)V

    .line 4771
    return-void
.end method
